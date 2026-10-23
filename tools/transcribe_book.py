#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
transcribe_book.py
==================

可恢复的整书 Typst 转写与核验流水线（默认面向《数学分析八讲》，但以 manifest
驱动，不把 181 硬编码进页面逻辑）。

阶段 / 子命令
-------------
  status       只读检查工程、源图、主题、章节、验证/审核/构建状态
  transcribe   每页一个独立 pi session，真实文字/数学转写，并立即做程序级单页验证
  verify       独立 wrapper 编译、恰好一内容页、无尾 pagebreak 证明、静态检查
  build        要求章节齐全（默认还要求全部验证通过），生成 main.typ 并编译全书
  audit        同尺寸源/排版图 + 并排图，pi --no-tools 视觉复核，严格 JSON
  report       汇总全部源页状态，生成集中报告（未审核页也显式列出）

固定模型：pi --provider r4 --model deepseek-v4.1-flash。
转写默认 thinking=high；视觉审核默认 thinking=medium。

安全边界（程序与提示双重约束）
------------------------------
* 每页 worker 只允许写 chapters/pNNN.typ、assets/pNNN/**、logs/pNNN/**。
* 程序在 worker 运行前后对工程内其它文件做哈希快照；出现越权修改即失败。
* 禁止整页/文字截图替代富文本；程序拒绝引用 work/source 源页图，也拒绝与源图同 hash 的图片；
  大面积裁片只标为待视觉检查（不按像素面积比自动 FAIL）。
* 禁止逐页覆盖主题参数；program-level static check 会拒绝 #set page/text/par/math 等。
* theme.typ 或 TYPST-GUIDE.md 不存在时直接失败并说明，绝不偷偷生成替代主题。

缓存指纹
--------
验证缓存绑定：源图、源 PDF、manifest、章节、theme、guide、fonts 目录、wrapper 版本，
以及 build dependency 指纹（全部书内 *.typ、assets 全部文件、递归本地 import/include 与
image/read/csv/json 引用；缺失的本地引用也计入）。审核缓存额外绑定：最终 PDF sha256、
Typst 页面渲染图 sha256、模型/provider/thinking/prompt 版本。指纹不匹配即视为过期。
"""

from __future__ import annotations

import argparse
import concurrent.futures
import contextlib
import dataclasses
import datetime as _dt
import fcntl
import hashlib
import json
import os
import random
import re
import shutil
import signal
import subprocess
import sys
import threading
import time
import uuid
from pathlib import Path
from typing import Any, Iterable

try:
    from PIL import Image, ImageOps
    import numpy as np
except Exception as exc:  # pragma: no cover
    print(f"FATAL: 需要 pillow 与 numpy: {exc}", file=sys.stderr)
    raise

MODEL_DEFAULT = "deepseek-v4.1-flash"
PROVIDER_DEFAULT = "r4"
VERIFY_VERSION = "ma8-page-verify-v6"
DEPENDENCY_VERSION = "ma8-build-deps-v1"
TRANSCRIBE_PROMPT_VERSION = "ma8-transcribe-v7"
AUDIT_PROMPT_VERSION = "ma8-audit-v2"
TEMP_CHAPTER_PREFIXES = (".verify-", ".build-notail-")
BLANK_BODY_FRACTION = 0.88
VALID_RATINGS = {"PASS", "PARTIAL", "FAIL"}
VALID_OWNERS = {"theme", "chapter", "both", "unknown"}
VALID_CATEGORIES = {
    "text", "math", "font", "indent", "line_spacing", "paragraph_spacing",
    "figure", "layout", "overflow", "other",
}
VALID_SEVERITIES = {"minor", "major"}


# ---------------------------------------------------------------------------
# basic utilities
# ---------------------------------------------------------------------------

def now_iso() -> str:
    return _dt.datetime.now(_dt.timezone.utc).astimezone().isoformat(timespec="seconds")


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256_text(text: str) -> str:
    return sha256_bytes(text.encode("utf-8"))


def sha256_file(path: Path, chunk: int = 1 << 20) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        while True:
            b = f.read(chunk)
            if not b:
                break
            h.update(b)
    return h.hexdigest()


def canonical_json(obj: Any) -> str:
    return json.dumps(obj, ensure_ascii=False, sort_keys=True, separators=(",", ":"))


def fingerprint(obj: Any) -> str:
    return sha256_text(canonical_json(obj))


def read_json(path: Path, default: Any = None) -> Any:
    try:
        return json.loads(path.read_text(encoding="utf-8"))
    except Exception:
        return default


def atomic_write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    tmp = path.with_name(f".{path.name}.tmp.{os.getpid()}.{threading.get_ident()}")
    tmp.write_text(text, encoding="utf-8")
    os.replace(tmp, path)


def atomic_write_json(path: Path, obj: Any) -> None:
    atomic_write_text(path, json.dumps(obj, ensure_ascii=False, indent=2) + "\n")


def rel_to(path: Path, base: Path) -> str:
    try:
        return str(path.resolve().relative_to(base.resolve()))
    except Exception:
        return str(path.resolve())


def tail(text: str, n: int = 4000) -> str:
    text = text or ""
    return text[-n:]


def parse_pages(spec: str, max_page: int) -> list[int]:
    """Parse '1-181', '1,3,5-7', 'all'."""
    spec = (spec or "").strip()
    if not spec:
        raise ValueError("--pages 不能为空；使用 all 或页码范围")
    if spec.lower() == "all":
        return list(range(1, max_page + 1))
    pages: list[int] = []
    for part in spec.split(","):
        part = part.strip()
        if not part:
            continue
        if "-" in part:
            a, b = part.split("-", 1)
            s, e = int(a), int(b)
            if s > e:
                s, e = e, s
            pages.extend(range(s, e + 1))
        else:
            pages.append(int(part))
    pages = sorted(set(pages))
    bad = [p for p in pages if p < 1 or p > max_page]
    if bad:
        raise ValueError(f"页码越界: {bad}; 允许 1..{max_page}")
    return pages


def parse_pt(value: Any) -> float | None:
    if isinstance(value, (int, float)):
        return float(value)
    if not isinstance(value, str):
        return None
    m = re.match(r"^\s*(-?\d+(?:\.\d+)?)\s*pt\s*$", value)
    return float(m.group(1)) if m else None


def pdf_page_count(pdf: Path) -> int | None:
    try:
        r = subprocess.run(["pdfinfo", str(pdf)], capture_output=True, text=True, timeout=30)
    except Exception:
        return None
    if r.returncode != 0:
        return None
    m = re.search(r"^Pages:\s+(\d+)\s*$", r.stdout, re.MULTILINE)
    return int(m.group(1)) if m else None


def pdf_first_page_size(pdf: Path) -> tuple[float, float] | None:
    try:
        r = subprocess.run(["pdfinfo", "-f", "1", "-l", "1", str(pdf)],
                           capture_output=True, text=True, timeout=30)
    except Exception:
        return None
    if r.returncode != 0:
        return None
    m = re.search(r"^\s*Page(?:\s+\d+)?\s+size:\s+([\d.]+)\s+x\s+([\d.]+)\s+pts", r.stdout, re.MULTILINE)
    if not m:
        return None
    return float(m.group(1)), float(m.group(2))


def run_capture(cmd: list[str], cwd: Path | None = None, timeout: float | None = None,
                env: dict[str, str] | None = None) -> dict[str, Any]:
    t0 = time.time()
    e = os.environ.copy()
    e.setdefault("NO_COLOR", "1")
    if env:
        e.update(env)
    try:
        r = subprocess.run(cmd, cwd=str(cwd) if cwd else None, capture_output=True,
                           text=True, timeout=timeout, env=e)
        return {
            "cmd": cmd,
            "returncode": r.returncode,
            "stdout": r.stdout,
            "stderr": r.stderr,
            "timed_out": False,
            "duration_s": round(time.time() - t0, 3),
        }
    except subprocess.TimeoutExpired as exc:
        out = exc.stdout or ""
        err = exc.stderr or ""
        if isinstance(out, bytes):
            out = out.decode("utf-8", "replace")
        if isinstance(err, bytes):
            err = err.decode("utf-8", "replace")
        return {
            "cmd": cmd,
            "returncode": 124,
            "stdout": out,
            "stderr": err + f"\n[timeout after {timeout}s]",
            "timed_out": True,
            "duration_s": round(time.time() - t0, 3),
        }
    except Exception as exc:
        return {
            "cmd": cmd,
            "returncode": 125,
            "stdout": "",
            "stderr": f"{type(exc).__name__}: {exc}",
            "timed_out": False,
            "duration_s": round(time.time() - t0, 3),
        }


def run_pi(cmd: list[str], cwd: Path, timeout: float, log_path: Path) -> dict[str, Any]:
    """Run pi non-interactively, stream-capture combined output and persist a log."""
    log_path.parent.mkdir(parents=True, exist_ok=True)
    t0 = time.time()
    e = os.environ.copy()
    e.setdefault("NO_COLOR", "1")
    timed_out = False
    try:
        proc = subprocess.Popen(
            cmd, cwd=str(cwd), stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
            text=True, bufsize=1, env=e, start_new_session=True,
        )
        try:
            out, _ = proc.communicate(timeout=timeout)
        except subprocess.TimeoutExpired:
            timed_out = True
            try:
                os.killpg(os.getpgid(proc.pid), signal.SIGKILL)
            except Exception:
                proc.kill()
            out, _ = proc.communicate()
            out = (out or "") + f"\n[timeout after {timeout}s]"
        code = 124 if timed_out else proc.returncode
    except Exception as exc:
        out = f"{type(exc).__name__}: {exc}\n"
        code = 125
    log_path.write_text(out or "", encoding="utf-8")
    return {
        "cmd": cmd,
        "returncode": code,
        "output": out or "",
        "timed_out": timed_out,
        "duration_s": round(time.time() - t0, 3),
        "log": str(log_path),
    }


def session_file_for(ctx: "Context", sid: str) -> str | None:
    if not ctx.session_dir.exists():
        return None
    matches = sorted(ctx.session_dir.glob(f"*_{sid}.jsonl"))
    return rel_to(matches[-1], ctx.book) if matches else None


def session_files_since(ctx: "Context", since_ts: float) -> list[str]:
    out: list[str] = []
    if not ctx.session_dir.exists():
        return out
    for f in ctx.session_dir.glob("*.jsonl"):
        try:
            if f.stat().st_mtime >= since_ts - 2:
                out.append(rel_to(f, ctx.book))
        except Exception:
            continue
    return sorted(out)


def rate_limited(text: str) -> bool:
    return bool(re.search(
        r"(?i)(\b429\b|too many requests|rate[\s_-]?limit|quota exceeded|overloaded|请求过于频繁)",
        text or "",
    ))


def backoff_sleep(retry: int, base: float, maximum: float) -> float:
    delay = min(maximum, base * (2 ** max(0, retry - 1)))
    delay *= 0.75 + random.random() * 0.5
    time.sleep(delay)
    return delay


@contextlib.contextmanager
def page_lock(ctx: "Context", page: int):
    d = ctx.logs / f"p{page:03d}"
    d.mkdir(parents=True, exist_ok=True)
    lp = d / ".transcribe.lock"
    f = lp.open("a+")
    try:
        try:
            fcntl.flock(f.fileno(), fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError:
            raise RuntimeError(f"p{page:03d} 已有转写进程在运行（page lock 被占用）")
        yield
    finally:
        try:
            fcntl.flock(f.fileno(), fcntl.LOCK_UN)
        finally:
            f.close()


# ---------------------------------------------------------------------------
# context, source manifest, fingerprints
# ---------------------------------------------------------------------------

@dataclasses.dataclass
class Context:
    book: Path
    root: Path
    font_path: Path
    provider: str = PROVIDER_DEFAULT
    model: str = MODEL_DEFAULT

    def __post_init__(self) -> None:
        self.book = self.book.resolve()
        self.root = self.root.resolve()
        self.font_path = self.font_path.resolve()
        self._font_info: dict[str, Any] | None = None
        self._font_lock = threading.Lock()
        try:
            rv = subprocess.run(["typst", "--version"], capture_output=True, text=True, timeout=20)
            self.typst_version = (rv.stdout or rv.stderr).strip().splitlines()[0] if (rv.stdout or rv.stderr).strip() else None
        except Exception:
            self.typst_version = None

    @property
    def work(self) -> Path: return self.book / "work"
    @property
    def source_dir(self) -> Path: return self.work / "source"
    @property
    def manifest_path(self) -> Path: return self.work / "source-manifest.json"
    @property
    def pipeline(self) -> Path: return self.work / "pipeline"
    @property
    def verify_dir(self) -> Path: return self.pipeline / "verify"
    @property
    def audit_dir(self) -> Path: return self.pipeline / "audit"
    @property
    def build_dir(self) -> Path: return self.pipeline / "build"
    @property
    def session_dir(self) -> Path: return self.work / "pi-pipeline-sessions"
    @property
    def chapters(self) -> Path: return self.book / "chapters"
    @property
    def assets(self) -> Path: return self.book / "assets"
    @property
    def logs(self) -> Path: return self.book / "logs"
    @property
    def theme(self) -> Path: return self.book / "theme.typ"
    @property
    def guide(self) -> Path: return self.book / "TYPST-GUIDE.md"
    @property
    def transcriptions(self) -> Path: return self.work / "transcriptions"
    @property
    def image_exceptions(self) -> Path: return self.pipeline / "image-exceptions.json"
    @property
    def source_pdf(self) -> Path: return self.book / f"{self.book.name}.pdf"
    @property
    def main(self) -> Path: return self.book / "main.typ"
    @property
    def final_pdf(self) -> Path: return self.book / f"{self.book.name}-typst.pdf"
    @property
    def state_path(self) -> Path: return self.pipeline / "state.json"
    @property
    def report_md(self) -> Path: return self.pipeline / "REPORT.md"
    @property
    def report_json(self) -> Path: return self.pipeline / "report.json"
    @property
    def build_report_path(self) -> Path: return self.build_dir / "build-report.json"

    def page_source(self, p: int) -> Path: return self.source_dir / f"p{p:03d}.png"
    def page_chapter(self, p: int) -> Path: return self.chapters / f"p{p:03d}.typ"
    def page_assets(self, p: int) -> Path: return self.assets / f"p{p:03d}"
    def page_logs(self, p: int) -> Path: return self.logs / f"p{p:03d}"
    def page_transcription(self, p: int) -> Path: return self.transcriptions / f"p{p:03d}.md"

    def font_info(self) -> dict[str, Any]:
        with self._font_lock:
            if self._font_info is not None:
                return self._font_info
            files: list[dict[str, Any]] = []
            if self.font_path.exists():
                exts = {".ttf", ".otf", ".ttc", ".otc", ".woff", ".woff2"}
                for f in sorted(self.font_path.rglob("*")):
                    if f.is_file() and f.suffix.lower() in exts:
                        files.append({
                            "path": rel_to(f, self.root),
                            "size": f.stat().st_size,
                            "sha256": sha256_file(f),
                        })
            aggregate = fingerprint(files)
            self._font_info = {
                "path": str(self.font_path),
                "file_count": len(files),
                "files": files,
                "fingerprint": aggregate,
            }
            return self._font_info


def load_manifest(ctx: Context) -> dict[str, Any] | None:
    data = read_json(ctx.manifest_path)
    return data if isinstance(data, dict) else None


# ---------------------------------------------------------------------------
# build dependency hashing
# ---------------------------------------------------------------------------

_SHA_CACHE: dict[tuple[str, int, int], str] = {}
_SHA_CACHE_LOCK = threading.Lock()

_IMPORT_RE = re.compile(r'\b(?:import|include)\s+["\']([^"\']+)["\']')
_RESOURCE_RE = re.compile(r'\b(?:image|read|csv|json|yaml|toml)\s*\(\s*["\']([^"\']+)["\']')


def sha256_file_cached(path: Path) -> str | None:
    """Hash a dependency file, reusing the digest while (path, mtime, size) is unchanged."""
    try:
        st = path.stat()
    except Exception:
        return None
    if not path.is_file():
        return None
    key = (str(path.resolve()), st.st_mtime_ns, st.st_size)
    with _SHA_CACHE_LOCK:
        hit = _SHA_CACHE.get(key)
    if hit is not None:
        return hit
    try:
        digest = sha256_file(path)
    except Exception:
        return None
    with _SHA_CACHE_LOCK:
        _SHA_CACHE[key] = digest
    return digest


def _dependency_path_excluded(ctx: Context, path: Path) -> bool:
    try:
        rel = path.resolve().relative_to(ctx.book.resolve())
    except Exception:
        return False
    parts = rel.parts
    if parts and parts[0] in {"work", "logs"}:
        return True
    if rel.as_posix() == "main.typ":
        return True
    if path.name.startswith(TEMP_CHAPTER_PREFIXES) or path.name.startswith(".main-no-tail"):
        return True
    return False


def _resolve_local_reference(ctx: Context, source: Path, raw: str) -> Path | None:
    raw = (raw or "").strip()
    if not raw or raw.startswith("@") or "://" in raw:
        return None
    candidates = [source.parent / raw, ctx.book / raw, ctx.root / raw]
    if raw.startswith("/"):
        candidates.append(ctx.root / raw.lstrip("/"))
    for cand in candidates:
        try:
            if cand.is_file():
                return cand.resolve()
        except Exception:
            continue
    return None


def build_dependencies(ctx: Context) -> dict[str, Any]:
    """Hash every real build input we can resolve reliably.

    Seeds are all book *.typ files (theme, chapters, main) and every file under
    assets/. Local import/include/image/read/csv/json/yaml/toml references are
    then followed recursively from every *.typ seed. A referenced-but-missing
    path is part of the fingerprint too, so deleting a dependency cannot look
    like "no change". Generated work/, page logs/ and our temporary verify copies
    are excluded from the seeds.
    """
    files: dict[str, str] = {}
    unresolved: list[str] = []
    queue: list[Path] = []

    if ctx.book.exists():
        # Generated work can contain whole candidate books and image/session trees.
        # Prune these excluded top-level trees before walking, rather than visiting
        # every generated directory for every page's dependency fingerprint.
        authored_typ: list[Path] = []
        for directory, dirs, names in os.walk(ctx.book, followlinks=False):
            if Path(directory) == ctx.book:
                dirs[:] = [name for name in dirs if name not in {"work", "logs"}]
            authored_typ.extend(Path(directory) / name for name in names if name.endswith(".typ"))
        for f in sorted(authored_typ):
            if f.is_file() and not _dependency_path_excluded(ctx, f):
                queue.append(f.resolve())
    asset_count = 0
    if ctx.assets.exists():
        for f in sorted(ctx.assets.rglob("*")):
            if f.is_file() and not _dependency_path_excluded(ctx, f):
                queue.append(f.resolve())
                asset_count += 1

    seen: set[Path] = set()
    typ_count = 0
    while queue:
        f = queue.pop(0)
        if f in seen:
            continue
        seen.add(f)
        digest = sha256_file_cached(f)
        if digest is None:
            continue
        files[rel_to(f, ctx.root)] = digest
        if f.suffix.lower() != ".typ":
            continue
        typ_count += 1
        try:
            text = f.read_text(encoding="utf-8", errors="replace")
        except Exception as exc:
            unresolved.append(f"{rel_to(f, ctx.root)}: unreadable: {exc}")
            continue
        code = strip_typst_comments(text)
        for raw in _IMPORT_RE.findall(code) + _RESOURCE_RE.findall(code):
            resolved = _resolve_local_reference(ctx, f, raw)
            if resolved is None:
                if raw.startswith("@") or "://" in raw:
                    continue
                unresolved.append(f"{rel_to(f, ctx.root)}: {raw}")
            elif resolved not in seen:
                queue.append(resolved)

    identity = {
        "version": DEPENDENCY_VERSION,
        "files": files,
        "unresolved": sorted(set(unresolved)),
    }
    assets_prefix = rel_to(ctx.assets, ctx.root).rstrip("/") + "/" if ctx.assets.exists() else None
    assets_files = {
        k: v for k, v in files.items()
        if assets_prefix and (k == assets_prefix.rstrip("/") or k.startswith(assets_prefix))
    }
    typ_files = {k: v for k, v in files.items() if k.endswith(".typ")}
    return {
        "fingerprint": fingerprint(identity),
        "files": files,
        "unresolved": sorted(set(unresolved)),
        "file_count": len(files),
        "typ_count": typ_count,
        "asset_count": asset_count,
        "book_typ_fingerprint": fingerprint({"version": DEPENDENCY_VERSION, "files": typ_files}),
        "assets_fingerprint": fingerprint({"version": DEPENDENCY_VERSION, "files": assets_files}),
    }


def source_page_count(ctx: Context) -> int:
    m = load_manifest(ctx)
    if m and isinstance(m.get("page_count"), int) and m["page_count"] > 0:
        return int(m["page_count"])
    n = pdf_page_count(ctx.source_pdf) if ctx.source_pdf.exists() else None
    return int(n or 0)


def source_page_paths(ctx: Context, p: int) -> tuple[Path, dict[str, Any] | None]:
    m = load_manifest(ctx) or {}
    entry = None
    for item in m.get("pages", []) or []:
        if int(item.get("page", -1)) == p:
            entry = item
            break
    path = ctx.page_source(p)
    if entry and entry.get("image"):
        cand = ctx.book / entry["image"]
        if cand.exists():
            path = cand
    return path, entry


def manifest_entry(ctx: Context, p: int) -> dict[str, Any] | None:
    m = load_manifest(ctx) or {}
    for item in m.get("pages", []) or []:
        if int(item.get("page", -1)) == p:
            return item
    return None


def page_inputs(ctx: Context, p: int) -> dict[str, Any]:
    src, entry = source_page_paths(ctx, p)
    ch = ctx.page_chapter(p)
    fi = ctx.font_info()
    deps = build_dependencies(ctx)
    return {
        "page": p,
        "source_image": rel_to(src, ctx.book),
        "source_image_sha256": sha256_file(src) if src.exists() else None,
        "source_width_pt": (entry or {}).get("width_pt"),
        "source_height_pt": (entry or {}).get("height_pt"),
        "source_pdf": rel_to(ctx.source_pdf, ctx.book),
        "source_pdf_sha256": sha256_file(ctx.source_pdf) if ctx.source_pdf.exists() else None,
        "manifest_sha256": sha256_file(ctx.manifest_path) if ctx.manifest_path.exists() else None,
        "chapter": rel_to(ch, ctx.book),
        "chapter_sha256": sha256_file(ch) if ch.exists() else None,
        "theme_sha256": sha256_file(ctx.theme) if ctx.theme.exists() else None,
        "guide_sha256": sha256_file(ctx.guide) if ctx.guide.exists() else None,
        "fonts_sha256": fi["fingerprint"],
        "fonts_file_count": fi["file_count"],
        "dependency_version": DEPENDENCY_VERSION,
        "dependency_fingerprint": deps["fingerprint"],
        "book_typ_fingerprint": deps["book_typ_fingerprint"],
        "assets_fingerprint": deps["assets_fingerprint"],
        "dependency_file_count": deps["file_count"],
        "dependency_typ_count": deps["typ_count"],
        "dependency_asset_count": deps["asset_count"],
        "dependency_unresolved": deps["unresolved"],
        "typst_version": ctx.typst_version,
    }


def verify_fingerprint(inputs: dict[str, Any]) -> str:
    return fingerprint({"verify_version": VERIFY_VERSION, "inputs": inputs})


def audit_challenge(ctx: Context, page: int) -> Any:
    challenges = read_json(ctx.work / "audit-challenges.json", {})
    return challenges.get(str(page)) if isinstance(challenges, dict) else None


def audit_fingerprint(ctx: Context, inputs: dict[str, Any], pdf_sha: str, page_img_sha: str,
                      provider: str, model: str, thinking: str,
                      detail_images: list[dict[str, Any]] | None = None) -> str:
    payload = {
        "audit_version": AUDIT_PROMPT_VERSION,
        "inputs": inputs,
        "typst_pdf_sha256": pdf_sha,
        "typst_page_image_sha256": page_img_sha,
        "detail_image_sha256": [{"source": d["source_image_sha256"],
                                  "typst": d["typst_image_sha256"]}
                                 for d in (detail_images or [])],
        "provider": provider,
        "model": model,
        "thinking": thinking,
    }
    challenge = audit_challenge(ctx, inputs["page"]) if ctx is not None else None
    if challenge is not None:
        payload["source_review_challenge"] = challenge
    return fingerprint(payload)


# ---------------------------------------------------------------------------
# state store
# ---------------------------------------------------------------------------

class StateStore:
    def __init__(self, ctx: Context):
        self.ctx = ctx
        self.path = ctx.state_path
        self.lock_path = ctx.pipeline / ".state.lock"
        self._thread_lock = threading.Lock()

    def _load_unlocked(self) -> dict[str, Any]:
        data = read_json(self.path)
        if not isinstance(data, dict):
            data = {}
        data.setdefault("version", 1)
        data.setdefault("pages", {})
        return data

    @contextlib.contextmanager
    def _file_lock(self):
        self.lock_path.parent.mkdir(parents=True, exist_ok=True)
        with self.lock_path.open("a+") as f:
            fcntl.flock(f.fileno(), fcntl.LOCK_EX)
            try:
                yield
            finally:
                fcntl.flock(f.fileno(), fcntl.LOCK_UN)

    def load(self) -> dict[str, Any]:
        with self._thread_lock:
            with self._file_lock():
                return self._load_unlocked()

    def update_page(self, page: int, section: str, value: dict[str, Any]) -> None:
        with self._thread_lock:
            with self._file_lock():
                data = self._load_unlocked()
                key = str(page)
                data["pages"].setdefault(key, {})
                data["pages"][key][section] = value
                data["updated_at"] = now_iso()
                atomic_write_json(self.path, data)

    def get_page(self, page: int) -> dict[str, Any]:
        return (self.load().get("pages", {}) or {}).get(str(page), {}) or {}


# ---------------------------------------------------------------------------
# static source checks
# ---------------------------------------------------------------------------

def strip_typst_comments(text: str) -> str:
    text = re.sub(r"/\*.*?\*/", lambda m: "\n" * m.group(0).count("\n"), text, flags=re.DOTALL)
    text = re.sub(r"//[^\n]*", "", text)
    return text


THEME_OVERRIDE_PATTERNS = [
    (r"#set\s+page\s*\(", "#set page(...) 覆盖页面/页脚参数"),
    (r"#set\s+text\s*\(", "#set text(...) 覆盖字体字号"),
    (r"#set\s+par\s*\(", "#set par(...) 覆盖行距/段距/缩进"),
    (r"#set\s+math\b", "#set math(...) 覆盖数学字体/间距"),
    (r"#show\s+math\.equation", "#show math.equation 逐页覆盖公式"),
    (r"#show\s+heading", "#show heading 逐页覆盖标题"),
    (r"#set\s+figure\s*\(", "#set figure(...) 覆盖插图参数"),
    (r"#show\s+figure", "#show figure 逐页覆盖插图"),
    (r"#set\s+footnote", "#set footnote 覆盖脚注"),
    (r"#set\s+document", "#set document(...) 覆盖文档元数据"),
    (r"\bfooter\s*:", "逐页 footer 覆盖"),
]


def _image_call_texts(code: str, raw: str) -> list[str]:
    calls: list[str] = []
    for m in re.finditer(r"\bimage\s*\(", code):
        start = m.start()
        depth = 0
        for i in range(m.end() - 1, len(code)):
            ch = code[i]
            if ch == "(":
                depth += 1
            elif ch == ")":
                depth -= 1
                if depth == 0:
                    call = code[start:i + 1]
                    if f'"{raw}"' in call or f"'{raw}'" in call:
                        calls.append(call)
                    break
    return calls


def _parse_absolute_length_pt(value: str | None) -> float | None:
    if not value:
        return None
    m = re.fullmatch(r"\s*(-?\d+(?:\.\d+)?)\s*(pt|cm|mm|in)\s*", value)
    if not m:
        return None
    n = float(m.group(1))
    return n * {"pt": 1.0, "cm": 72.0 / 2.54, "mm": 72.0 / 25.4, "in": 72.0}[m.group(2)]


def _declared_image_size(calls: list[str]) -> dict[str, Any]:
    out: dict[str, Any] = {}
    for call in calls:
        for key in ("width", "height"):
            m = re.search(rf"\b{key}\s*:\s*([^,\)]+)", call)
            if m and key not in out:
                out[key] = m.group(1).strip().strip('"\'')
    return out


def _asset_name_matches_page(path: Path, p: int) -> bool:
    tokens = re.split(r"[^0-9A-Za-z]+", path.stem)
    return bool({"p" + f"{p:03d}", f"{p:03d}", str(p)} & set(tokens))


def load_image_exceptions(ctx: Context) -> dict[int, list[dict[str, Any]]]:
    data = read_json(ctx.image_exceptions)
    pages = (data or {}).get("pages") if isinstance(data, dict) else None
    if not isinstance(pages, dict):
        return {}
    out: dict[int, list[dict[str, Any]]] = {}
    for key, entries in pages.items():
        try:
            page = int(key)
        except Exception:
            continue
        if isinstance(entries, dict):
            entries = [entries]
        if not isinstance(entries, list):
            continue
        out[page] = [e for e in entries if isinstance(e, dict)]
    return out


def _matching_image_exception(exceptions: list[dict[str, Any]], path: Path,
                              digest: str | None) -> dict[str, Any] | None:
    for ex in exceptions:
        asset = str(ex.get("asset") or ex.get("path") or "").replace("\\", "/")
        sha = ex.get("sha256")
        name = Path(asset).name if asset else ""
        if asset and path.as_posix().endswith(asset):
            return ex
        if name and name == path.name:
            return ex
        if sha and digest and sha == digest:
            return ex
    return None


def static_page_checks(ctx: Context, p: int, text: str) -> dict[str, Any]:
    errors: list[str] = []
    warnings: list[str] = []
    visual_review: list[dict[str, Any]] = []
    code = strip_typst_comments(text)
    if not text.strip():
        errors.append("章节源码为空")

    if not re.search(r"#import\s+[\"']\.\./theme\.typ[\"']", code):
        warnings.append("章节未显式 #import \"../theme.typ\" (wrapper 已 import，但仍建议按指南写)")

    if not re.search(r"#pagebreak\s*\(\s*(?:weak\s*:\s*true\s*,?\s*)?\)\s*$", code.rstrip()):
        warnings.append("章节末尾没有分页（规范为 #pagebreak(weak: true)）")

    for pat, msg in THEME_OVERRIDE_PATTERNS:
        if re.search(pat, code):
            errors.append(f"逐页主题参数覆盖: {msg}")

    src_literal = str(rel_to(ctx.page_source(p), ctx.book)).replace("\\", "/")
    if src_literal in text or "work/source/" in text:
        errors.append(f"章节引用了整页扫描源图 ({src_literal})，禁止截图替代富文本")

    image_paths = re.findall(r"\bimage\s*\(\s*[\"']([^\"']+)[\"']", code)
    image_records: list[dict[str, Any]] = []
    src, entry = source_page_paths(ctx, p)
    src_hash = sha256_file(src) if src.exists() else None
    try:
        src_im = Image.open(src)
        src_w, src_h = src_im.size
    except Exception:
        src_w = src_h = 0
    page_w_pt = (entry or {}).get("width_pt")
    page_h_pt = (entry or {}).get("height_pt")
    exceptions = load_image_exceptions(ctx).get(p, [])

    allowed_asset_dir = ctx.page_assets(p).resolve()
    for raw in image_paths:
        candidates = [
            (ctx.page_chapter(p).parent / raw).resolve(),
            (ctx.book / raw).resolve(),
            (ctx.root / raw).resolve(),
        ]
        existing = next((c for c in candidates if c.exists()), None)
        rec: dict[str, Any] = {"raw": raw, "resolved": str(existing) if existing else None}
        if existing is None:
            errors.append(f"引用的本地图片不存在（依赖缺失）: {raw}")
            image_records.append(rec)
            continue
        digest = sha256_file(existing) if existing.is_file() else None
        rec["sha256"] = digest
        try:
            existing.relative_to(allowed_asset_dir)
            inside = True
        except Exception:
            inside = False
        page_named_shared = False
        try:
            existing.relative_to(ctx.assets.resolve())
            page_named_shared = _asset_name_matches_page(existing, p)
        except Exception:
            pass
        exception = _matching_image_exception(exceptions, existing, digest)
        if exception is not None:
            if not str(exception.get("reason") or "").strip() or not str(exception.get("approved_by") or "").strip():
                errors.append(f"图片例外缺少 reason/approved_by，不能作为可审核例外: {raw}")
            else:
                rec["exception"] = exception
                warnings.append(f"使用已声明的图片例外（仍需视觉审核）: {raw} — {exception.get('reason')}")
        if not inside and not page_named_shared and exception is None:
            errors.append(
                f"图片不在本页 assets/p{p:03d}/ 内，也不是含本页号的既有资源: "
                f"{raw} -> {rel_to(existing, ctx.book)}"
            )
        elif not inside and page_named_shared:
            rec["page_named_shared_asset"] = True
            warnings.append(
                f"使用 assets/ 根下含本页号的既有图片资源 {rel_to(existing, ctx.book)}；"
                "统一整理时可迁移到 assets/pNNN/"
            )
        if existing == src.resolve() or (src_hash and digest == src_hash):
            errors.append(f"图片与整页源图完全相同，属于截图替代: {raw}")
        try:
            im = Image.open(existing)
            w, h = im.size
            pixel_ratio = (w * h) / (src_w * src_h) if src_w and src_h else 0.0
            declared = _declared_image_size(_image_call_texts(code, raw))
            rec.update({
                "width": w, "height": h,
                "dpi": (im.info.get("dpi") if isinstance(im.info, dict) else None),
                "pixel_area_ratio_vs_source": round(pixel_ratio, 4),
                "declared": declared,
            })
            # Pixel areas of a 300 DPI crop and a 96 DPI page scan are not comparable.
            # Only an absolute placed size gives a reliable page-area estimate.
            placed_ratio = None
            pw = _parse_absolute_length_pt(declared.get("width"))
            ph = _parse_absolute_length_pt(declared.get("height"))
            if pw and ph and page_w_pt and page_h_pt:
                placed_ratio = (pw * ph) / (float(page_w_pt) * float(page_h_pt))
                rec["placed_area_ratio_vs_page"] = round(placed_ratio, 4)
            large = (placed_ratio is not None and placed_ratio >= 0.65) or (
                placed_ratio is None and pixel_ratio >= 0.45
            )
            if large:
                rec["needs_visual_review"] = True
                visual_review.append(rec)
                warnings.append(
                    f"图片像素/放置面积较大（像素面积比 {pixel_ratio:.1%}，"
                    f"可靠放置面积 {'—' if placed_ratio is None else f'{placed_ratio:.1%}'}）；"
                    "不能仅凭像素判断为截图，标为待视觉检查"
                )
            elif pixel_ratio >= 0.45:
                warnings.append(f"图片像素面积比 {pixel_ratio:.1%}；裁剪来源不同，需视觉确认: {raw}")
        except Exception as exc:
            warnings.append(f"无法读取图片尺寸 {raw}: {exc}")
        image_records.append(rec)

    return {
        "errors": errors,
        "warnings": warnings,
        "images": image_records,
        "visual_review_required": visual_review,
        "image_exceptions_file": rel_to(ctx.image_exceptions, ctx.book) if ctx.image_exceptions.exists() else None,
    }


# ---------------------------------------------------------------------------
# single-page compile verification
# ---------------------------------------------------------------------------

def wrapper_text(ctx: Context, p: int) -> str:
    return wrapper_text_for(ctx, p, f"../../../../chapters/p{p:03d}.typ")


def wrapper_text_for(ctx: Context, p: int, chapter_include: str) -> str:
    # The source entry applies geometry before emitting its identity marker.
    return (
        '#import "../../../../theme.typ": *\n'
        '#show: theme\n'
        f'#sourcePage({p}, include "{chapter_include}")\n'
    )


def ink_metrics(png: Path, body_fraction: float = BLANK_BODY_FRACTION) -> dict[str, Any]:
    im = Image.open(png).convert("L")
    a = np.asarray(im)
    h, w = a.shape
    body_h = max(1, int(h * body_fraction))
    body = a[:body_h, :]
    dark = int((body < 200).sum())
    return {
        "width": int(w),
        "height": int(h),
        "body_height": int(body_h),
        "dark_pixels": dark,
        "body_pixels": int(body.size),
        "ink_ratio": float(dark / body.size) if body.size else 0.0,
    }


def strip_trailing_pagebreak(text: str) -> tuple[str, bool]:
    """Remove a real trailing strong or weak pagebreak, keeping comments."""
    matches = list(re.finditer(r"#pagebreak\s*\(\s*(?:weak\s*:\s*true\s*,?\s*)?\)", text))
    for m in reversed(matches):
        line_start = text.rfind("\n", 0, m.start()) + 1
        if "//" in text[line_start:m.start()]:
            continue
        tail = text[m.end():]
        if re.fullmatch(r"(?s)(?:\s|//[^\n]*(?:\n|$)|/\*.*?\*/)*", tail):
            return text[:m.start()] + tail, True
    return text, False


def typst_compile(ctx: Context, input_path: Path, output_pdf: Path, timeout: float,
                  log_path: Path) -> dict[str, Any]:
    cmd = [
        "typst", "compile",
        "--root", str(ctx.root),
        "--font-path", str(ctx.font_path),
        "--ignore-system-fonts",
        "--creation-timestamp", "0",
        str(input_path), str(output_pdf),
    ]
    r = run_capture(cmd, cwd=ctx.root, timeout=timeout)
    log_path.parent.mkdir(parents=True, exist_ok=True)
    log_path.write_text(
        "$ " + " ".join(cmd) + "\n\n[stdout]\n" + r["stdout"] + "\n[stderr]\n" + r["stderr"],
        encoding="utf-8",
    )
    r["log"] = str(log_path)
    r["font_warning"] = bool(re.search(r"(?i)unknown font family|font .* not found", r["stderr"]))
    return r


def verify_page(ctx: Context, p: int, force: bool = False, timeout: float = 180.0) -> dict[str, Any]:
    state = StateStore(ctx)
    src, entry = source_page_paths(ctx, p)
    ch = ctx.page_chapter(p)
    inputs = page_inputs(ctx, p)
    fp = verify_fingerprint(inputs)
    outdir = ctx.verify_dir / f"p{p:03d}"
    result_path = outdir / "result.json"

    if not force and result_path.exists():
        cached = read_json(result_path)
        if isinstance(cached, dict) and cached.get("fingerprint") == fp:
            state.update_page(p, "verify", cached)
            return cached

    outdir.mkdir(parents=True, exist_ok=True)
    base: dict[str, Any] = {
        "page": p,
        "checked_at": now_iso(),
        "fingerprint": fp,
        "inputs": inputs,
        "status": "FAIL",
        "errors": [],
        "warnings": [],
        "static": {},
        "compile": {},
        "artifacts": {},
    }

    if not ctx.theme.exists():
        base["errors"].append("theme.typ 不存在：拒绝用替代主题继续")
        return _finish_verify(ctx, state, result_path, base)
    if not ctx.guide.exists():
        base["errors"].append("TYPST-GUIDE.md 不存在：转写规范缺失，拒绝继续")
        return _finish_verify(ctx, state, result_path, base)
    if not ctx.source_pdf.exists():
        base["errors"].append(f"源 PDF 不存在，旧缓存不能沿用: {rel_to(ctx.source_pdf, ctx.book)}")
        return _finish_verify(ctx, state, result_path, base)
    if not src.exists():
        base["errors"].append(f"源图不存在: {rel_to(src, ctx.book)}")
        return _finish_verify(ctx, state, result_path, base)
    if not ch.exists():
        base["errors"].append(f"章节不存在: {rel_to(ch, ctx.book)}")
        return _finish_verify(ctx, state, result_path, base)
    if not ctx.font_path.exists():
        base["errors"].append(f"字体目录不存在: {ctx.font_path}")
        return _finish_verify(ctx, state, result_path, base)

    text = ch.read_text(encoding="utf-8", errors="replace")
    static = static_page_checks(ctx, p, text)
    base["static"] = static
    base["errors"].extend(static["errors"])
    base["warnings"].extend(static["warnings"])

    wrapper = outdir / "wrapper.typ"
    atomic_write_text(wrapper, wrapper_text(ctx, p))
    base["artifacts"]["wrapper"] = rel_to(wrapper, ctx.book)
    base["artifacts"]["wrapper_sha256"] = sha256_file(wrapper)

    out_pdf = outdir / "output.pdf"
    comp = typst_compile(ctx, wrapper, out_pdf, timeout=timeout, log_path=outdir / "compile.log")
    base["compile"] = {
        "command": comp["cmd"],
        "returncode": comp["returncode"],
        "timed_out": comp["timed_out"],
        "duration_s": comp["duration_s"],
        "log": rel_to(Path(comp["log"]), ctx.book),
        "font_warning": comp.get("font_warning", False),
        "output_pdf": rel_to(out_pdf, ctx.book) if out_pdf.exists() else None,
        "output_pdf_sha256": sha256_file(out_pdf) if out_pdf.exists() else None,
        "pages": None,
    }
    if comp["returncode"] != 0:
        base["errors"].append("Typst 编译失败（详见 compile.log）")
        base["compile"]["stderr_tail"] = tail(comp["stderr"])
        return _finish_verify(ctx, state, result_path, base)
    if comp.get("font_warning"):
        base["errors"].append("编译出现未知字体警告：项目 fonts 未覆盖主题字体")

    pages = pdf_page_count(out_pdf)
    base["compile"]["pages"] = pages
    if pages is None:
        base["errors"].append("无法读取单页编译 PDF 页数")
        return _finish_verify(ctx, state, result_path, base)
    if pages not in (1, 2):
        base["errors"].append(f"单页编译产生 {pages} 页：内容溢出/错页（只允许 1 页，或 2 页且第 2 页仅尾部分页）")
        return _finish_verify(ctx, state, result_path, base)

    # Render page 1 and, when present, the trailing pagebreak page.
    p1_png = outdir / "page1.png"
    p2_png = outdir / "page2.png"
    r1 = run_capture(["pdftoppm", "-r", "100", "-f", "1", "-l", "1", "-singlefile",
                      "-png", str(out_pdf), str(outdir / "page1")], timeout=60)
    if r1["returncode"] != 0 or not p1_png.exists():
        base["errors"].append("无法渲染单页 PDF 第 1 页")
        return _finish_verify(ctx, state, result_path, base)
    m1 = ink_metrics(p1_png)
    base["compile"]["page1_ink"] = m1
    if m1["dark_pixels"] < 20:
        base["errors"].append("第 1 页正文区域几乎无墨迹（内容为空或全部透明/离页）")

    if pages == 2:
        r2 = run_capture(["pdftoppm", "-r", "100", "-f", "2", "-l", "2", "-singlefile",
                          "-png", str(out_pdf), str(outdir / "page2")], timeout=60)
        if r2["returncode"] == 0 and p2_png.exists():
            txt2 = run_capture(["pdftotext", "-f", "2", "-l", "2", "-layout",
                                str(out_pdf), "-"], timeout=30)
            base["compile"]["page2_ink"] = ink_metrics(p2_png)
            base["compile"]["page2_text_chars"] = len(re.sub(r"\s+", "", txt2["stdout"] or ""))

    # The header/footer must not decide whether page 2 is "empty". Compile a
    # temporary same-directory copy without the trailing #pagebreak() and require
    # the real body to fit in exactly one page. This is stricter than accepting
    # two pages and also works for themes that print a header instead of a footer.
    no_tail_text, stripped = strip_trailing_pagebreak(text)
    no_tail_info: dict[str, Any] = {"trailing_pagebreak_removed": stripped}
    base["compile"]["no_tail"] = no_tail_info
    tmp_chapter: Path | None = None
    try:
        if stripped:
            tmp_name = (
                f".verify-p{p:03d}-{os.getpid()}-{threading.get_ident()}-"
                f"{uuid.uuid4().hex[:8]}.typ"
            )
            tmp_chapter = ctx.chapters / tmp_name
            atomic_write_text(tmp_chapter, no_tail_text)
            no_tail_wrapper = outdir / "wrapper-no-tail.typ"
            atomic_write_text(
                no_tail_wrapper,
                wrapper_text_for(ctx, p, f"../../../../chapters/{tmp_name}"),
            )
            no_tail_pdf = outdir / "output-no-tail.pdf"
            comp_nt = typst_compile(
                ctx, no_tail_wrapper, no_tail_pdf, timeout=timeout,
                log_path=outdir / "compile-no-tail.log",
            )
            nt_pages = pdf_page_count(no_tail_pdf) if comp_nt["returncode"] == 0 else None
            no_tail_info.update({
                "returncode": comp_nt["returncode"],
                "log": rel_to(Path(comp_nt["log"]), ctx.book),
                "output_pdf": rel_to(no_tail_pdf, ctx.book) if no_tail_pdf.exists() else None,
                "pages": nt_pages,
            })
            if comp_nt["returncode"] != 0:
                base["errors"].append("移除末尾 #pagebreak() 后的验证编译失败（详见 compile-no-tail.log）")
            elif nt_pages != 1:
                base["errors"].append(
                    f"移除末尾 #pagebreak() 后仍为 {nt_pages} 页：真实正文溢出，不能当作空尾页"
                )
            else:
                nt_p1 = outdir / "no-tail-page1.png"
                rnt = run_capture(["pdftoppm", "-r", "100", "-f", "1", "-l", "1", "-singlefile",
                                   "-png", str(no_tail_pdf), str(outdir / "no-tail-page1")], timeout=60)
                if rnt["returncode"] != 0 or not nt_p1.exists():
                    base["errors"].append("无法渲染移除末尾 pagebreak 后的第 1 页")
                else:
                    nt_ink = ink_metrics(nt_p1)
                    no_tail_info["page1_ink"] = nt_ink
                    if nt_ink["dark_pixels"] < 20:
                        base["errors"].append("移除末尾 pagebreak 后第 1 页几乎无正文墨迹")
                    elif pages == 2:
                        base["warnings"].append(
                            "接受 2 页：去除末尾 #pagebreak() 后真实正文恰好 1 页；"
                            "第 2 页只是尾部分页（可有页眉/页脚），不是正文溢出"
                        )
        else:
            no_tail_info["pages"] = pages
            if pages == 2:
                base["errors"].append(
                    "章节没有末尾 #pagebreak()，但编译为 2 页：正文真实溢出"
                )
    finally:
        if tmp_chapter is not None:
            try:
                tmp_chapter.unlink()
            except Exception:
                pass

    if base["errors"]:
        return _finish_verify(ctx, state, result_path, base)

    base["status"] = "PASS"
    return _finish_verify(ctx, state, result_path, base)


def _finish_verify(ctx: Context, state: StateStore, result_path: Path,
                   result: dict[str, Any]) -> dict[str, Any]:
    atomic_write_json(result_path, result)
    state.update_page(int(result["page"]), "verify", result)
    return result


# ---------------------------------------------------------------------------
# protected snapshot for worker write confinement
# ---------------------------------------------------------------------------

def _is_page_scoped(ctx: Context, path: Path) -> bool:
    """True for chapters/pNNN.typ, assets/pNNN/** and logs/pNNN/**.

    Concurrent per-page workers legitimately write their own page-scoped files.
    A per-page before/after snapshot therefore cannot attribute changes in these
    areas to one worker. They are checked by a separate whole-run snapshot, and
    cross-page ownership within one concurrent batch remains a documented limit.
    """
    try:
        rel = path.resolve().relative_to(ctx.book.resolve())
    except Exception:
        return False
    parts = rel.parts
    if len(parts) >= 2 and parts[0] == "chapters":
        return bool(re.fullmatch(r"p\d{3}\.typ", parts[1]))
    if len(parts) >= 3 and parts[0] in {"assets", "logs"}:
        return bool(re.fullmatch(r"p\d{3}", parts[1]))
    return False


def protected_snapshot(ctx: Context, p: int) -> dict[str, str]:
    """Hash shared/protected book files (theme, guide, main, other shared files).

    Page-scoped areas are excluded to avoid false positives from concurrent
    workers; `page_scoped_snapshot` checks them across the whole run.
    """
    out: dict[str, str] = {}
    work = ctx.work.resolve()
    for root, dirs, files in os.walk(ctx.book):
        rp = Path(root).resolve()
        dirs[:] = [d for d in dirs if (rp / d).resolve() != work and d not in {".git", "__pycache__"}]
        for name in files:
            f = rp / name
            try:
                if f.resolve().is_relative_to(work):
                    continue
            except Exception:
                pass
            if _is_page_scoped(ctx, f):
                continue
            try:
                st = f.stat()
                if not f.is_file():
                    continue
                out[rel_to(f, ctx.book)] = f"{st.st_size}:{sha256_file(f)}"
            except Exception:
                continue
    return out


def page_scoped_snapshot(ctx: Context) -> dict[str, str]:
    """Hash all page-scoped outputs: chapters, page assets, page logs."""
    out: dict[str, str] = {}
    for p in range(1, source_page_count(ctx) + 1):
        candidates = [ctx.page_chapter(p)]
        for base in (ctx.page_assets(p), ctx.page_logs(p)):
            if base.exists():
                candidates.extend(f for f in base.rglob("*") if f.is_file())
        for f in candidates:
            if f.exists() and f.is_file():
                try:
                    out[rel_to(f, ctx.book)] = f"{f.stat().st_size}:{sha256_file(f)}"
                except Exception:
                    continue
    return out


def page_scoped_owner(path: str) -> int | None:
    m = re.match(r"^(?:chapters/p(\d{3})\.typ|(?:assets|logs)/p(\d{3})/)", path)
    if not m:
        return None
    return int(m.group(1) or m.group(2))


def snapshot_diff(before: dict[str, str], after: dict[str, str]) -> dict[str, list[str]]:
    return {
        "added": sorted(set(after) - set(before)),
        "removed": sorted(set(before) - set(after)),
        "changed": sorted(k for k in set(before) & set(after) if before[k] != after[k]),
    }


# ---------------------------------------------------------------------------
# transcription worker
# ---------------------------------------------------------------------------

def session_id_for(ctx: Context, p: int, kind: str, extra: str = "") -> str:
    if kind == "transcribe":
        recovery = read_json(ctx.work / "resume-sessions.json", {})
        record = recovery.get(str(p)) if isinstance(recovery, dict) else None
        if record:
            sid = record["session_id"]
            if not session_file_for(ctx, sid):
                raise ValueError(f"Requested recovery session is missing: {sid}")
            return sid
    tr = ctx.page_transcription(p)
    seed = {
        "kind": kind,
        "page": p,
        "source": sha256_file(source_page_paths(ctx, p)[0]) if source_page_paths(ctx, p)[0].exists() else None,
        "theme": sha256_file(ctx.theme) if ctx.theme.exists() else None,
        "guide": sha256_file(ctx.guide) if ctx.guide.exists() else None,
        "transcription": sha256_file(tr) if tr.exists() else None,
        "prompt": TRANSCRIBE_PROMPT_VERSION if kind == "transcribe" else AUDIT_PROMPT_VERSION,
        "extra": extra,
    }
    return f"ma8-{kind}-p{p:03d}-{fingerprint(seed)[:14]}"


def transcribe_prompt(ctx: Context, p: int, attempt: int, failure: dict[str, Any] | None) -> str:
    src, _ = source_page_paths(ctx, p)
    wrapper_stub = ctx.page_logs(p) / "wrapper.typ"
    transcript = ctx.page_transcription(p)
    recovery = read_json(ctx.work / "resume-sessions.json", {})
    recovery_record = recovery.get(str(p)) if isinstance(recovery, dict) else None
    recovery_note = ("【控制流程恢复】\n" + recovery_record.get("reason", "")
                     + "\n先读取已保存的本页章节和自检产物，接续现有会话完成实际内容、公式和单页核对。\n"
                     if recovery_record else "")
    reading_block = ""
    reading_dir = ctx.work / "source-crops"
    reading_manifest = read_json(reading_dir / "manifest.json")
    if (isinstance(reading_manifest, dict)
            and reading_manifest.get("source_sha256") == sha256_file_cached(ctx.source_pdf)):
        strips = [reading_dir / f"p{p:03d}-{part}.png" for part in ("top", "middle", "bottom")]
        if all(path.is_file() for path in strips):
            reading_block = ("- 原扫描图的原分辨率阅读裁片（相邻分段重叠，文字勿重复录入）:\n"
                             + "\n".join(f"  {path}" for path in strips)
                             + "\n  小字/公式优先读取这些现成裁片；先写完整初稿，再针对实际疑点裁图核对。\n")
    if transcript.exists():
        transcript_block = (
            f"- 本页逐字中间稿（已存在）: {transcript}\n"
            "  先用 read 读取它作为辅助清稿，减少重复录入；但最终必须以源图逐字核对，"
            "不能照搬中间稿里的疑点、错字或缺失。中间稿与源图冲突时以源图为准。"
        )
    else:
        transcript_block = "- 本页没有 work/transcriptions/pNNN.md 中间稿，直接从源图转写。"
    fail_block = ""
    if failure:
        fail_block = f"""
【上一轮程序级验证未通过，必须修复】
{json.dumps(failure, ensure_ascii=False, indent=2)[:12000]}

请先读 logs/p{p:03d}/ 下的 compile.log / page1.png / page2.png（若存在），定位原因后修复。
修复必须保留可复核证据：不要删除日志，不要伪造通过结果。
"""
    return f"""你是《{ctx.book.name}》Typst 逐页转写工人。本次只处理源 PDF 第 {p:03d} 页，禁止批量处理其它页，禁止调用其它 pi/子 agent。

【工程与输入】
- 工程书目录: {ctx.book}
- Typst 根目录: {ctx.root}
- 项目字体目录: {ctx.font_path}
- 本页扫描源图: {src}
- 源页清单: {ctx.manifest_path}
- 主题唯一真源: {ctx.theme}
- 转写规范: {ctx.guide}
- 本页目标源码: {ctx.page_chapter(p)}
- 本页插图目录: {ctx.page_assets(p)}
- 本页工作/日志目录: {ctx.page_logs(p)}
{reading_block}
{transcript_block}
{recovery_note}

开始前必须用 read 读取源图、theme.typ、TYPST-GUIDE.md；如需要可读相邻页源码了解衔接。源图是唯一内容依据。

【唯一允许写入的范围】
1. {ctx.page_chapter(p)}
2. {ctx.page_assets(p)}/ 下的插图裁片
3. {ctx.page_logs(p)}/ 下的临时 wrapper、编译输出、日志
绝对不要修改 theme.typ、TYPST-GUIDE.md、main.typ、其它 chapters/*.typ、其它 assets/pNNN、fonts、work/ 或本页以外的任何文件。程序会在运行前后做哈希快照，越权修改判失败。

【内容要求：真实富文本，禁止截图替代】
- 逐字、逐符号转写本页全部可见正文、公式、符号、标点、页眉页脚语义内容、图注和表格文字。
- 正文必须是 Typst 文本；数学必须是 Typst 数学源码（上标、下标、分式、根式、积分、求和、矩阵、向量、cases、希腊字母等按语义写）。
- 禁止把整页、半页或任何文字区域截图当作正文；禁止把 work/source/pNNN.png 作为 #image 引入。
- 图片只允许用于原书中真正的插图、照片、几何图形、表格线图等非文字图形，且必须从源图裁剪为 assets/p{p:03d}/ 下的独立图片。图片路径严格遵循 TYPST-GUIDE.md。Typst 的 image 相对路径按所在章节文件解析：本页文件在 chapters/ 下，除非你已编译验证指南的其它约定，否则写 ../assets/p{p:03d}/文件名。
- 保持段落边界、首行缩进语义、公式独立/行内属性、图注与插图归属；不要自行改写、概括或补写原文内容。
- 原书段首的纯文本数字标签写为 `1\\. 正文`、`2\\. 正文`，或调用指南的段落标签宏；这样句点保持可见且续行沿用正文版心。Typst 自动 enum 只用于原图确有悬挂缩进的列表。溢出时先核对这类自动列表、续段缩进和公式结构。
- 不确定的字符按指南标记，并在文件末尾用 // UNCERTAIN: 说明；不要静默猜测。

【版式要求：主题集中控制，禁止逐页覆盖】
- 章节首行写 #import "../theme.typ": *。
- 严格按 TYPST-GUIDE.md 使用语义宏；所有字体、字号、页边距、页眉页脚、首行缩进、行距、段距、公式间距、图注格式由 theme.typ 统一。
- 禁止出现 #set page(...)、#set text(...)、#set par(...)、#set math(...)、#show math.equation、#show heading、#set figure(...)、#show figure、footer: 等逐页覆盖。
- 禁止手写数值留白来模仿版式；如指南没有合适语义宏，使用普通段落/公式并在 logs 中注明，不要改主题。
- 源页身份 marker 由流水线 wrapper 注入，不要在章节里伪造 PDF 页码或 source-page marker。
- 章节末尾保留 #pagebreak(weak: true)，与统一入口配合避免满页后的空白页。

【模型自检（必须做）】
在 {wrapper_stub} 建临时 wrapper（相对路径从 logs/p{p:03d}/ 出发）：
```
#import "../../theme.typ": *
#show: theme
#sourcePage({p}, include "../../chapters/p{p:03d}.typ")
```
用以下命令编译（必须带项目字体并禁用系统字体，保持与流水线一致）：
```
typst compile --root {ctx.root} --font-path {ctx.font_path} --ignore-system-fonts --creation-timestamp 0 {wrapper_stub} {ctx.page_logs(p)}/self-check.pdf
```
把编译输出保存到 {ctx.page_logs(p)}/self-check.log。用 pdftoppm 渲染第 1 页（及可能存在的第 2 页）为 PNG，自己 read 查看，修复语法、溢出、错位、漏字和公式错误。
本页内容必须恰好占 1 个内容页；末尾 #pagebreak() 可能产生第 2 张页，但正文不得有任何内容落到第 2 页（页眉/页脚除外）。若超过 2 页或有正文溢出到第 2 页，必须修复后再结束。
本阶段完成逐字/数学符号核对、可编译性和单页自检后立即交付。共享主题的字重、字距、行距或位置残差记录在本页 logs 中，交给后续全书视觉审核集中处理；不要为无法在本页修改的主题差异反复裁图或测量。保留已生成的源图裁片、渲染和编译日志作为复核证据。

{fail_block}

【结束】
完成后只输出简短清单：本页是否完成、编译是否通过、自检 PDF 页数、第 2 页是否空白、裁了哪些图片、仍不确定的字符。不要输出整页源码。
"""


def run_transcribe_attempt(ctx: Context, p: int, attempt: int, args: argparse.Namespace,
                           failure: dict[str, Any] | None) -> dict[str, Any]:
    prompt = transcribe_prompt(ctx, p, attempt, failure)
    logdir = ctx.page_logs(p)
    logdir.mkdir(parents=True, exist_ok=True)
    prompt_path = logdir / f"attempt-{attempt}-prompt.txt"
    atomic_write_text(prompt_path, prompt)
    evidence_prompt = ctx.pipeline / "prompts" / f"p{p:03d}" / f"attempt-{attempt}.txt"
    atomic_write_text(evidence_prompt, prompt)
    prompt_sha = sha256_text(prompt)
    sid = session_id_for(ctx, p, "transcribe", extra=f"attempt-aggregate")
    ctx.session_dir.mkdir(parents=True, exist_ok=True)
    cmd = [
        "pi",
        "--provider", args.provider,
        "--model", args.model,
        "--thinking", args.thinking,
        "--no-extensions", "--no-mcp", "--no-skills", "--no-prompt-templates",
        "--no-context-files",
        "--tools", "read,bash,edit,write",
        "--session-dir", str(ctx.session_dir),
        "--session-id", sid,
        "-p", prompt,
    ]
    log_path = logdir / f"attempt-{attempt}.log"
    t0 = time.time()
    result = run_pi(cmd, cwd=ctx.root, timeout=args.timeout, log_path=log_path)
    transcript = ctx.page_transcription(p)
    result.update({
        "attempt": attempt,
        "cmd": cmd,
        "prompt": str(prompt_path),
        "prompt_evidence": str(evidence_prompt),
        "prompt_sha256": prompt_sha,
        "session_id": sid,
        "session_dir": str(ctx.session_dir),
        "session_files": session_files_since(ctx, t0),
        "session_file": session_file_for(ctx, sid),
        "transcription_file": rel_to(transcript, ctx.book) if transcript.exists() else None,
        "transcription_sha256": sha256_file(transcript) if transcript.exists() else None,
    })
    return result


def transcribe_page(ctx: Context, p: int, args: argparse.Namespace) -> dict[str, Any]:
    state = StateStore(ctx)
    existing = state.get_page(p)
    ch = ctx.page_chapter(p)

    if not args.force and ch.exists():
        cached = existing.get("verify") or read_json(ctx.verify_dir / f"p{p:03d}" / "result.json")
        if isinstance(cached, dict) and cached.get("status") == "PASS":
            current_fp = verify_fingerprint(page_inputs(ctx, p))
            if cached.get("fingerprint") == current_fp:
                rec = {
                    "status": "SKIPPED_VERIFIED",
                    "finished_at": now_iso(),
                    "session_id": None,
                    "verify_status": "PASS",
                    "verify_fingerprint": current_fp,
                    "note": "当前输入指纹与已通过的验证缓存一致，跳过",
                }
                state.update_page(p, "transcribe", rec)
                return {"page": p, **rec}

    if not ctx.theme.exists():
        return {"page": p, "status": "BLOCKED", "error": "theme.typ 不存在；拒绝用替代主题转写"}
    if not ctx.guide.exists():
        return {"page": p, "status": "BLOCKED", "error": "TYPST-GUIDE.md 不存在；拒绝猜测转写规范"}

    try:
        lock_ctx = page_lock(ctx, p)
        lock_ctx.__enter__()
    except Exception as exc:
        return {"page": p, "status": "LOCKED", "error": str(exc)}

    attempts_log: list[dict[str, Any]] = []
    failure: dict[str, Any] | None = None
    try:
        for attempt in range(1, args.attempts + 1):
            before = protected_snapshot(ctx, p)
            rl_retry = 0
            while True:
                result = run_transcribe_attempt(ctx, p, attempt, args, failure)
                rl_retry += 1
                if result["returncode"] == 0 or not rate_limited(result["output"]):
                    break
                if rl_retry > args.max_retries:
                    result["rate_limit_exhausted"] = True
                    break
                delay = min(args.backoff_max, args.backoff_base * (2 ** (rl_retry - 1)))
                delay *= 0.75 + random.random() * 0.5
                time.sleep(delay)
            after = protected_snapshot(ctx, p)
            diff = snapshot_diff(before, after)

            attempt_rec = {
                "attempt": attempt,
                "returncode": result["returncode"],
                "timed_out": result["timed_out"],
                "duration_s": result["duration_s"],
                "log": rel_to(Path(result["log"]), ctx.book),
                "prompt": rel_to(Path(result["prompt"]), ctx.book),
                "prompt_evidence": rel_to(Path(result["prompt_evidence"]), ctx.book),
                "prompt_sha256": result["prompt_sha256"],
                "session_id": result["session_id"],
                "session_dir": result["session_dir"],
                "session_files": result.get("session_files", []),
                "session_file": result.get("session_file"),
                "transcription_file": result.get("transcription_file"),
                "transcription_sha256": result.get("transcription_sha256"),
                "command": [*result["cmd"][:-1], f"<prompt:{rel_to(Path(result['prompt']), ctx.book)}>"],
                "rate_limit_retries": rl_retry - 1,
                "authored_files_changed": diff,
            }
            attempts_log.append(attempt_rec)

            if diff["added"] or diff["removed"] or diff["changed"]:
                detail = {"page": p, "status": "UNAUTHORIZED_WRITE", "attempts": attempts_log,
                          "unauthorized_diff": diff,
                          "error": "worker 修改了允许范围以外的文件；已失败，未标记完成"}
                state.update_page(p, "transcribe", detail)
                return detail

            if result["timed_out"]:
                failure = {"page": p, "error": "timeout", "log": attempt_rec["log"],
                           "output_tail": tail(result["output"], 3000)}
                continue

            if result["returncode"] != 0:
                failure = {"page": p, "error": f"pi returncode {result['returncode']}",
                           "log": attempt_rec["log"], "output_tail": tail(result["output"], 3000)}
                if rate_limited(result["output"]):
                    failure["error"] = "rate limited (429) after retries"
                continue

            verify = verify_page(ctx, p, force=True, timeout=max(120.0, min(300.0, args.timeout)))
            if verify.get("status") == "PASS":
                rec = {
                    "status": "VERIFIED",
                    "finished_at": now_iso(),
                    "session_id": result["session_id"],
                    "session_dir": str(ctx.session_dir),
                    "session_file": result.get("session_file"),
                    "verify_status": "PASS",
                    "verify_fingerprint": verify.get("fingerprint"),
                    "attempts": attempts_log,
                }
                state.update_page(p, "transcribe", rec)
                return {"page": p, **rec}

            failure = {
                "page": p,
                "error": "program verification failed",
                "verify_errors": verify.get("errors", []),
                "verify_warnings": verify.get("warnings", []),
                "verify_compile": verify.get("compile", {}),
                "log": rel_to(ctx.verify_dir / f"p{p:03d}" / "compile.log", ctx.book),
            }
            attempt_rec["verify_errors"] = verify.get("errors", [])

        rec = {
            "status": "FAILED",
            "finished_at": now_iso(),
            "session_id": attempts_log[-1]["session_id"] if attempts_log else None,
            "session_dir": str(ctx.session_dir),
            "session_file": attempts_log[-1].get("session_file") if attempts_log else None,
            "verify_status": "FAIL",
            "verify_fingerprint": verify_fingerprint(page_inputs(ctx, p)),
            "attempts": attempts_log,
            "last_failure": failure,
        }
        state.update_page(p, "transcribe", rec)
        return {"page": p, **rec}
    finally:
        lock_ctx.__exit__(None, None, None)


# ---------------------------------------------------------------------------
# build whole book
# ---------------------------------------------------------------------------

def generate_main_text(ctx: Context, pages: Iterable[int],
                       chapter_override: dict[int, str] | None = None) -> str:
    chapter_override = chapter_override or {}
    lines = [
        "// 由 tools/transcribe_book.py 自动生成；不要手改。",
        '#import "theme.typ": *',
        "#show: theme",
        "",
    ]
    for p in pages:
        rel = chapter_override.get(p, f"chapters/p{p:03d}.typ")
        lines.append(f'#sourcePage({p}, include "{rel}")')
    lines.append("")
    return "\n".join(lines)


def query_marker_map(ctx: Context, timeout: float = 300.0) -> dict[str, Any]:
    expr = ("query(<source-page>).map(it => (value: it.value, page: it.location().page(), "
            "x: it.location().position().x, y: it.location().position().y))")
    cmd = [
        "typst", "eval", expr,
        "--in", str(ctx.main),
        "--root", str(ctx.root),
        "--font-path", str(ctx.font_path),
        "--ignore-system-fonts",
        "--creation-timestamp", "0",
        "--format", "json",
    ]
    r = run_capture(cmd, cwd=ctx.root, timeout=timeout)
    data = None
    if r["returncode"] == 0:
        try:
            data = json.loads(r["stdout"])
        except Exception as exc:
            r["stderr"] += f"\nJSON parse error: {exc}"
    return {"ok": r["returncode"] == 0 and isinstance(data, list), "markers": data or [],
            "returncode": r["returncode"], "stdout": r["stdout"],
            "stderr": r["stderr"], "cmd": cmd}


def collect_font_evidence(ctx: Context, pdf: Path, outdir: Path) -> dict[str, Any]:
    outdir.mkdir(parents=True, exist_ok=True)
    typst_fonts = run_capture(
        ["typst", "fonts", "--font-path", str(ctx.font_path), "--ignore-system-fonts", "--variants"],
        timeout=60,
    )
    (outdir / "typst-fonts.txt").write_text(typst_fonts["stdout"] + "\n[stderr]\n" + typst_fonts["stderr"],
                                            encoding="utf-8")
    pdffonts = run_capture(["pdffonts", str(pdf)], timeout=60)
    (outdir / "pdffonts.txt").write_text(pdffonts["stdout"] + "\n[stderr]\n" + pdffonts["stderr"],
                                         encoding="utf-8")
    embedded: list[str] = []
    if pdffonts["returncode"] == 0:
        for line in pdffonts["stdout"].splitlines()[2:]:
            cols = re.split(r"\s{2,}", line.strip())
            if cols and cols[0] and cols[0] != "name":
                embedded.append(cols[0])
    return {
        "typst_font_list_returncode": typst_fonts["returncode"],
        "typst_font_list_chars": len(typst_fonts["stdout"]),
        "pdffonts_returncode": pdffonts["returncode"],
        "embedded_fonts": embedded,
        "font_files_fingerprint": ctx.font_info()["fingerprint"],
    }


def collect_text_evidence(pdf: Path, expected_pages: int, outdir: Path) -> dict[str, Any]:
    outdir.mkdir(parents=True, exist_ok=True)
    r = run_capture(["pdftotext", "-layout", str(pdf), "-"], timeout=180)
    raw = r["stdout"] or ""
    (outdir / "extracted-text.txt").write_text(raw, encoding="utf-8")
    chunks = raw.split("\f")
    # pdftotext usually appends a final form feed; keep only real page chunks.
    if chunks and not chunks[-1].strip():
        chunks = chunks[:-1]
    pages: list[dict[str, Any]] = []
    for i in range(max(expected_pages, len(chunks))):
        txt = chunks[i] if i < len(chunks) else ""
        non_ws = re.sub(r"\s+", "", txt)
        pages.append({
            "page": i + 1,
            "non_whitespace_chars": len(non_ws),
            "text_sha256": sha256_text(txt),
            "sample": txt.strip()[:120],
        })
    pages_with_text = sum(1 for x in pages[:expected_pages] if x["non_whitespace_chars"] > 0)
    total_chars = sum(x["non_whitespace_chars"] for x in pages[:expected_pages])
    result = {
        "pdftotext_returncode": r["returncode"],
        "chunk_count": len(chunks),
        "expected_pages": expected_pages,
        "pages_with_text": pages_with_text,
        "page_text_ratio": round(pages_with_text / expected_pages, 4) if expected_pages else 0.0,
        "total_non_whitespace_chars": total_chars,
        "pages": pages,
    }
    atomic_write_json(outdir / "text-evidence.json", result)
    return result



def trim_pdf_last_page(ctx: Context, src: Path, dst: Path, keep_pages: int) -> dict[str, Any]:
    """Drop the final artifact page while preserving all preceding pages/fonts/text."""
    if dst.exists():
        dst.unlink()
    script = (
        "import sys\n"
        "try:\n"
        "    import pymupdf as fitz\n"
        "except Exception:\n"
        "    import fitz\n"
        "src, dst, keep = sys.argv[1], sys.argv[2], int(sys.argv[3])\n"
        "doc = fitz.open(src)\n"
        "if doc.page_count != keep + 1:\n"
        "    raise SystemExit(f'unexpected page_count {doc.page_count}, want {keep+1}')\n"
        "doc.delete_page(doc.page_count - 1)\n"
        "doc.save(dst, garbage=3, deflate=True)\n"
        "doc.close()\n"
    )
    interpreters: list[str] = []
    # Prefer the interpreter already able to import pymupdf/fitz.
    try:
        __import__("pymupdf")
        interpreters.append(sys.executable)
    except Exception:
        try:
            __import__("fitz")
            interpreters.append(sys.executable)
        except Exception:
            pass
    for venv_py in (
        Path(__file__).resolve().parent / ".venv" / "bin" / "python",
        ctx.root / "tools" / ".venv" / "bin" / "python",
        ctx.book.parent / "tools" / ".venv" / "bin" / "python",
    ):
        if venv_py.exists():
            interpreters.append(str(venv_py))
    for py in dict.fromkeys(interpreters):
        r = run_capture([py, "-c", script, str(src), str(dst), str(keep_pages)], timeout=180)
        if r["returncode"] == 0 and dst.exists() and pdf_page_count(dst) == keep_pages:
            return {"ok": True, "method": f"pymupdf:{py}", "returncode": 0,
                    "stderr_tail": tail(r["stderr"])}
    # Last resort: Ghostscript (exists on this host). It re-encodes; all evidence is
    # re-collected from the trimmed output afterwards.
    if shutil.which("gs"):
        r = run_capture([
            "gs", "-q", "-dNOPAUSE", "-dBATCH", "-sDEVICE=pdfwrite",
            f"-dFirstPage=1", f"-dLastPage={keep_pages}",
            f"-sOutputFile={dst}", str(src),
        ], timeout=180)
        if r["returncode"] == 0 and dst.exists() and pdf_page_count(dst) == keep_pages:
            return {"ok": True, "method": "ghostscript", "returncode": 0,
                    "stderr_tail": tail(r["stderr"])}
    return {"ok": False, "error": "无法删除尾部空白页（pymupdf 与 ghostscript 均不可用）"}


def prove_no_tail_last_page(ctx: Context, pages: list[int], timeout: float) -> dict[str, Any]:
    """Compile the whole book with the final chapter's trailing #pagebreak removed.

    This proves the last extra page is only a pagebreak artifact, independently of
    whether the theme prints a header or a footer. The original chapter is never
    modified; the copy lives in the same chapters/ directory so relative image and
    import paths keep exactly the same meaning.
    """
    last = pages[-1]
    ch = ctx.page_chapter(last)
    text = ch.read_text(encoding="utf-8", errors="replace")
    no_tail, stripped = strip_trailing_pagebreak(text)
    info: dict[str, Any] = {
        "last_page": last,
        "trailing_pagebreak_removed": stripped,
        "source_chapter_sha256": sha256_file(ch),
        "ok": False,
    }
    if not stripped:
        info["error"] = "末章没有可移除的末尾 #pagebreak()，多出的页不是该 artifact"
        return info
    tmp_name = f".build-notail-p{last:03d}-{os.getpid()}-{uuid.uuid4().hex[:8]}.typ"
    tmp_chapter = ctx.chapters / tmp_name
    main_tmp = ctx.book / f".main-no-tail-{os.getpid()}-{uuid.uuid4().hex[:8]}.typ"
    pdf_tmp = ctx.build_dir / "proof-no-tail.pdf"
    try:
        atomic_write_text(tmp_chapter, no_tail)
        main_text = generate_main_text(ctx, pages, {last: f"chapters/{tmp_name}"})
        atomic_write_text(main_tmp, main_text)
        comp = typst_compile(ctx, main_tmp, pdf_tmp, timeout=timeout,
                             log_path=ctx.build_dir / "compile-no-tail-proof.log")
        n = pdf_page_count(pdf_tmp) if comp["returncode"] == 0 else None
        info.update({
            "returncode": comp["returncode"],
            "pages": n,
            "log": rel_to(Path(comp["log"]), ctx.book),
            "output_pdf": rel_to(pdf_tmp, ctx.book) if pdf_tmp.exists() else None,
            "stderr_tail": tail(comp["stderr"]),
        })
        if comp["returncode"] != 0:
            info["error"] = "去除末章末尾 pagebreak 的证明编译失败"
        elif n != len(pages):
            info["error"] = f"去除末章末尾 pagebreak 后仍为 {n} 页（期望 {len(pages)}），存在真实正文溢出"
        else:
            info["ok"] = True
    finally:
        for f in (tmp_chapter, main_tmp):
            try:
                f.unlink()
            except Exception:
                pass
    return info


def build_book(ctx: Context, args: argparse.Namespace) -> dict[str, Any]:
    ctx.build_dir.mkdir(parents=True, exist_ok=True)
    report: dict[str, Any] = {
        "book": str(ctx.book),
        "built_at": now_iso(),
        "status": "FAIL",
        "errors": [],
        "warnings": [],
        "provider": args.provider,
        "model": args.model,
        "inputs": {},
        "marker_check": {},
        "evidence": {},
    }
    m = load_manifest(ctx)
    expected = source_page_count(ctx)
    if args.expected_pages is not None:
        expected = int(args.expected_pages)
    report["expected_pages"] = expected
    if expected <= 0:
        report["errors"].append("无法确定源页数（manifest/pdfinfo）")
        return _finish_build(ctx, report)
    if m is None:
        report["errors"].append("source-manifest.json 不存在或不可读；拒绝在来源不明确时构建")
    elif m.get("page_count") and int(m["page_count"]) != expected:
        report["errors"].append(f"manifest page_count={m['page_count']} 与 expected={expected} 不一致")
    if not ctx.source_pdf.exists():
        report["errors"].append(f"源 PDF 不存在: {ctx.source_pdf}")
    elif m and m.get("sha256") and m.get("sha256") != sha256_file(ctx.source_pdf):
        report["errors"].append("manifest 中的源 PDF sha256 与当前源 PDF 不一致")
    if expected > 0:
        missing_sources = [p for p in range(1, expected + 1) if not source_page_paths(ctx, p)[0].exists()]
        report["source_images_missing"] = [f"p{p:03d}" for p in missing_sources[:30]]
        if missing_sources:
            report["errors"].append(
                f"缺少 {len(missing_sources)} 张源图（前若干: {missing_sources[:20]}），拒绝构建"
            )
    if report["errors"]:
        return _finish_build(ctx, report)
    if not ctx.theme.exists():
        report["errors"].append("theme.typ 不存在：拒绝用替代主题构建")
        return _finish_build(ctx, report)
    if not ctx.guide.exists():
        report["errors"].append("TYPST-GUIDE.md 不存在：拒绝在转写规范缺失时构建")
        return _finish_build(ctx, report)
    if not ctx.font_path.exists():
        report["errors"].append(f"字体目录不存在: {ctx.font_path}")
        return _finish_build(ctx, report)

    pages = list(range(1, expected + 1))
    missing = [p for p in pages if not ctx.page_chapter(p).exists() or ctx.page_chapter(p).stat().st_size == 0]
    report["missing_chapters"] = [f"p{p:03d}" for p in missing]
    if missing:
        report["errors"].append(
            f"必须先具备全部 {expected} 个非空章节；当前缺 {len(missing)} 个: "
            + ", ".join(f"p{p:03d}" for p in missing[:20])
            + (" ..." if len(missing) > 20 else "")
        )
        return _finish_build(ctx, report)

    verify_states: dict[str, Any] = {}
    stale_verify: list[int] = []
    if not args.allow_unverified:
        for p in pages:
            rec = read_json(ctx.verify_dir / f"p{p:03d}" / "result.json")
            fp = verify_fingerprint(page_inputs(ctx, p))
            if not isinstance(rec, dict) or rec.get("status") != "PASS" or rec.get("fingerprint") != fp:
                stale_verify.append(p)
            verify_states[str(p)] = {
                "status": (rec or {}).get("status", "MISSING"),
                "fingerprint": (rec or {}).get("fingerprint"),
                "current": isinstance(rec, dict) and rec.get("fingerprint") == fp,
            }
        report["verify_states"] = verify_states
        if stale_verify:
            report["errors"].append(
                f"有 {len(stale_verify)} 页未通过当前指纹的单页验证；拒绝构建最终书。"
                f" 前若干页: {stale_verify[:20]}"
            )
            return _finish_build(ctx, report)
    else:
        report["warnings"].append(f"--allow-unverified：本次构建未要求 {expected} 页全部通过单页验证")

    chapter_hashes = {str(p): sha256_file(ctx.page_chapter(p)) for p in pages}
    source_hashes = {str(p): sha256_file(source_page_paths(ctx, p)[0]) for p in pages}
    theme_sha = sha256_file(ctx.theme)
    guide_sha = sha256_file(ctx.guide) if ctx.guide.exists() else None
    fi = ctx.font_info()
    source_manifest_sha = sha256_file(ctx.manifest_path) if ctx.manifest_path.exists() else None
    source_pdf_sha = sha256_file(ctx.source_pdf) if ctx.source_pdf.exists() else None
    tool_versions: dict[str, Any] = {}
    version_flags = {
        "typst": ["--version"], "pi": ["--version"],
        "pdfinfo": ["-v"], "pdftoppm": ["-v"], "pdftotext": ["-v"], "pdffonts": ["-v"],
    }
    for tool, flags in version_flags.items():
        if not shutil.which(tool):
            tool_versions[tool] = None
            continue
        rv = run_capture([tool, *flags], timeout=20)
        text = (rv["stdout"] or rv["stderr"]).strip()
        tool_versions[tool] = text.splitlines()[0] if text else f"returncode={rv['returncode']}"
    report["tool_versions"] = tool_versions
    deps = build_dependencies(ctx)
    report["inputs"] = {
        "theme_sha256": theme_sha,
        "guide_sha256": guide_sha,
        "fonts_fingerprint": fi["fingerprint"],
        "fonts_file_count": fi["file_count"],
        "manifest_sha256": source_manifest_sha,
        "source_pdf_sha256": source_pdf_sha,
        "chapter_sha256": chapter_hashes,
        "source_image_sha256": source_hashes,
        "dependency_version": DEPENDENCY_VERSION,
        "dependency_fingerprint": deps["fingerprint"],
        "book_typ_fingerprint": deps["book_typ_fingerprint"],
        "assets_fingerprint": deps["assets_fingerprint"],
        "dependency_files": deps["files"],
        "dependency_unresolved": deps["unresolved"],
        "dependency_file_count": deps["file_count"],
        "verify_version": VERIFY_VERSION,
        "typst_version": ctx.typst_version,
        "root": str(ctx.root),
        "font_path": str(ctx.font_path),
    }

    # Only now, after all prerequisites, generate main.typ.
    main_text = generate_main_text(ctx, pages)
    atomic_write_text(ctx.main, main_text)
    report["main"] = rel_to(ctx.main, ctx.book)
    report["main_sha256"] = sha256_file(ctx.main)

    tmp_pdf = ctx.build_dir / "final.pdf"
    comp = typst_compile(ctx, ctx.main, tmp_pdf, timeout=args.timeout,
                         log_path=ctx.build_dir / "compile.log")
    report["compile"] = {
        "command": comp["cmd"],
        "returncode": comp["returncode"],
        "timed_out": comp["timed_out"],
        "duration_s": comp["duration_s"],
        "log": rel_to(Path(comp["log"]), ctx.book),
        "output_pdf": rel_to(tmp_pdf, ctx.book) if tmp_pdf.exists() else None,
        "output_pdf_sha256": sha256_file(tmp_pdf) if tmp_pdf.exists() else None,
        "font_warning": comp.get("font_warning", False),
    }
    if comp["returncode"] != 0:
        report["errors"].append("全书 Typst 编译失败（详见 build/compile.log）")
        report["compile"]["stderr_tail"] = tail(comp["stderr"])
        return _finish_build(ctx, report)
    if comp.get("font_warning"):
        report["errors"].append("全书编译出现未知字体警告")

    actual_pages = pdf_page_count(tmp_pdf)
    report["actual_pages"] = actual_pages
    report["trim"] = None
    if actual_pages == expected + 1:
        # Every chapter ends with #pagebreak(); the final chapter therefore leaves one
        # artifact page. Prove with a no-tail compile (header/footer independent) that
        # the real body fits, then remove that artifact page from the delivered PDF.
        proof = prove_no_tail_last_page(ctx, pages, args.timeout)
        report["trim"] = {
            "reason": "final chapter trailing #pagebreak produced one artifact page",
            "no_tail_proof": proof,
        }
        if not proof.get("ok"):
            report["errors"].append(
                "全书多出 1 页且去除末章末尾 pagebreak 后仍不能得到期望页数："
                + str(proof.get("error"))
            )
        else:
            trimmed = ctx.build_dir / "final-trimmed.pdf"
            tr = trim_pdf_last_page(ctx, tmp_pdf, trimmed, expected)
            report["trim"]["trim_result"] = tr
            if tr.get("ok"):
                tmp_pdf = trimmed
                actual_pages = pdf_page_count(tmp_pdf)
                report["actual_pages"] = actual_pages
                report["compile"]["trimmed_output_pdf"] = rel_to(tmp_pdf, ctx.book)
                report["compile"]["trimmed_output_pdf_sha256"] = sha256_file(tmp_pdf)
                report["warnings"].append(
                    "检测到末章尾部 #pagebreak() 产生的 artifact 页；已用去除末尾 pagebreak 的证明编译确认正文不溢出，并从交付 PDF 删除该页"
                )
            else:
                report["errors"].append("尾部 artifact 页剪裁失败: " + str(tr.get("error")))
    if actual_pages != expected:
        report["errors"].append(f"全书输出 {actual_pages} 页，期望恰好 {expected} 页")

    # Marker -> actual page map. Strict 1:1 proves no overflow/misalignment.
    q = query_marker_map(ctx, timeout=args.timeout)
    report["marker_check"] = {
        "ok_query": q["ok"],
        "returncode": q["returncode"],
        "stderr_tail": tail(q["stderr"]),
        "markers": q["markers"],
    }
    if not q["ok"]:
        report["errors"].append("typst eval 查询 <source-page> 失败，无法证明源页与输出页映射")
    else:
        markers = q["markers"]
        try:
            values = [int(x["value"]) for x in markers]
            marker_pages = [int(x["page"]) for x in markers]
        except Exception:
            values, marker_pages = [], []
        page_dims = pdf_first_page_size(tmp_pdf)
        hpt = page_dims[1] if page_dims else None
        map_errors: list[str] = []
        if len(markers) != expected:
            map_errors.append(f"marker 数量 {len(markers)} != {expected}")
        if values != list(range(1, expected + 1)):
            map_errors.append("marker value 序列不是 1..N（缺页/重复/乱序）")
        if marker_pages != list(range(1, expected + 1)):
            # give concrete first mismatches
            mism = [(v, m) for v, m in zip(values, marker_pages) if v != m][:10]
            map_errors.append(f"marker 源页号 != 实际输出页号（前若干: {mism}）")
        if len(set(marker_pages)) != len(marker_pages):
            map_errors.append("多个 marker 落在同一输出页（章节缺少 pagebreak 或内容串页）")
        if hpt:
            bad_y = []
            for x in markers:
                y = parse_pt(x.get("y"))
                if y is None or y > hpt * 0.20:
                    bad_y.append((x.get("value"), x.get("y")))
            if bad_y:
                map_errors.append(f"marker 不在页顶版心（y > 20% 页高）: {bad_y[:10]}")
        report["marker_check"]["map_errors"] = map_errors
        report["marker_check"]["one_to_one"] = not map_errors
        if map_errors:
            report["errors"].extend(map_errors)

    font_ev = collect_font_evidence(ctx, tmp_pdf, ctx.build_dir)
    report["evidence"]["fonts"] = font_ev
    if font_ev["pdffonts_returncode"] != 0 or not font_ev["embedded_fonts"]:
        report["errors"].append("pdffonts 未提供嵌入字体证据（或 PDF 无嵌入字体）")

    text_ev = collect_text_evidence(tmp_pdf, expected, ctx.build_dir)
    report["evidence"]["text"] = {k: v for k, v in text_ev.items() if k != "pages"}
    if text_ev["pdftotext_returncode"] != 0:
        report["errors"].append("pdftotext 提取失败，无法证明文本可搜索")
    if expected and text_ev["page_text_ratio"] < args.min_text_page_ratio:
        report["errors"].append(
            f"可提取文字页比例 {text_ev['page_text_ratio']:.1%} < {args.min_text_page_ratio:.1%}"
            f"（{text_ev['pages_with_text']}/{expected}），文本可搜索证据不足"
        )

    if report["errors"]:
        return _finish_build(ctx, report)

    # Install final output only after all checks pass.
    final_tmp = ctx.final_pdf.with_name(f".{ctx.final_pdf.name}.tmp.{os.getpid()}")
    shutil.copy2(tmp_pdf, final_tmp)
    os.replace(final_tmp, ctx.final_pdf)
    report["final_pdf"] = rel_to(ctx.final_pdf, ctx.book)
    report["final_pdf_sha256"] = sha256_file(ctx.final_pdf)
    report["status"] = "PASS"
    return _finish_build(ctx, report)


def _finish_build(ctx: Context, report: dict[str, Any]) -> dict[str, Any]:
    report["finished_at"] = now_iso()
    atomic_write_json(ctx.build_report_path, report)
    return report


# ---------------------------------------------------------------------------
# audit: render + vision pi
# ---------------------------------------------------------------------------

def render_pdf_page(pdf: Path, page: int, out_png: Path, dpi: float, timeout: float = 90) -> dict[str, Any]:
    out_png.parent.mkdir(parents=True, exist_ok=True)
    base = out_png.with_suffix("")
    if out_png.exists():
        out_png.unlink()
    r = run_capture([
        "pdftoppm", "-r", f"{dpi:.6f}", "-f", str(page), "-l", str(page),
        "-singlefile", "-png", str(pdf), str(base),
    ], timeout=timeout)
    return r


def make_audit_images(ctx: Context, p: int, typst_page: int, pdf: Path) -> dict[str, Any]:
    outdir = ctx.audit_dir / f"p{p:03d}"
    outdir.mkdir(parents=True, exist_ok=True)
    src, _ = source_page_paths(ctx, p)
    src_out = outdir / "source.png"
    typ_out = outdir / "typst.png"
    comp_out = outdir / "compare.png"

    im_src = Image.open(src).convert("RGB")
    if src_out.exists():
        src_out.unlink()
    im_src.save(src_out)

    dims = None
    r = run_capture(["pdfinfo", "-f", str(typst_page), "-l", str(typst_page), str(pdf)], timeout=30)
    if r["returncode"] == 0:
        m = re.search(r"^\s*Page(?:\s+\d+)?\s+size:\s+([\d.]+)\s+x\s+([\d.]+)\s+pts", r["stdout"], re.MULTILINE)
        if m:
            dims = (float(m.group(1)), float(m.group(2)))
    if not dims:
        dims = pdf_first_page_size(pdf)
    if not dims:
        raise RuntimeError("无法读取 Typst PDF 页面尺寸")
    target_h = im_src.height
    dpi = target_h * 72.0 / dims[1]
    raw = outdir / "typst-raw.png"
    rr = render_pdf_page(pdf, typst_page, raw, dpi)
    if rr["returncode"] != 0 or not raw.exists():
        raise RuntimeError(f"Typst 页渲染失败: {tail(rr['stderr'])}")
    raw_im = Image.open(raw).convert("RGB")
    # Same canvas size, but preserve the Typst page aspect ratio (letterbox, no
    # distortion). A page-ratio mismatch then remains visible to the reviewer.
    fitted = ImageOps.contain(raw_im, im_src.size, Image.LANCZOS)
    canvas = Image.new("RGB", im_src.size, "white")
    canvas.paste(fitted, ((im_src.width - fitted.width) // 2, (im_src.height - fitted.height) // 2))
    im_typ = canvas
    im_typ.save(typ_out)
    if raw.exists():
        raw.unlink()

    gap = 24
    comp = Image.new("RGB", (im_src.width * 2 + gap, im_src.height), (210, 210, 210))
    comp.paste(im_src, (0, 0))
    comp.paste(im_typ, (im_src.width + gap, 0))
    comp.save(comp_out)
    details: list[dict[str, Any]] = []
    reading_dir = ctx.work / "source-crops"
    manifest = read_json(reading_dir / "manifest.json")
    if (isinstance(manifest, dict)
            and manifest.get("source_sha256") == sha256_file_cached(ctx.source_pdf)):
        records = {r["file"]: r for r in manifest.get("strips", []) if r.get("page") == p}
        names = [f"p{p:03d}-{part}.png" for part in ("top", "middle", "bottom")]
        if all(name in records for name in names):
            native_size = tuple(records[names[0]]["native_size"])
            native_raw = outdir / "typst-native.png"
            rr = render_pdf_page(pdf, typst_page, native_raw, native_size[1] * 72.0 / dims[1])
            if rr["returncode"] != 0 or not native_raw.exists():
                raise RuntimeError("原分辨率细节渲染失败")
            with Image.open(native_raw) as raw_native:
                fitted_native = ImageOps.contain(raw_native.convert("RGB"), native_size, Image.LANCZOS)
            native_canvas = Image.new("RGB", native_size, "white")
            native_canvas.paste(fitted_native, ((native_size[0] - fitted_native.width) // 2,
                                               (native_size[1] - fitted_native.height) // 2))
            for part, name in zip(("top", "middle", "bottom"), names):
                record = records[name]
                source_detail = reading_dir / name
                if sha256_file(source_detail) != record["sha256"]:
                    raise RuntimeError(f"原分辨率源裁片指纹不符: {name}")
                typst_detail = outdir / f"typst-{part}.png"
                native_canvas.crop(tuple(record["native_bbox"])).save(typst_detail)
                details.append({"part": part,
                                "source_image": rel_to(source_detail, ctx.book),
                                "source_image_sha256": record["sha256"],
                                "typst_image": rel_to(typst_detail, ctx.book),
                                "typst_image_sha256": sha256_file(typst_detail),
                                "native_bbox": record["native_bbox"]})
            native_raw.unlink()
    return {
        "source_image": rel_to(src_out, ctx.book),
        "source_image_sha256": sha256_file(src_out),
        "typst_image": rel_to(typ_out, ctx.book),
        "typst_image_sha256": sha256_file(typ_out),
        "compare_image": rel_to(comp_out, ctx.book),
        "compare_image_sha256": sha256_file(comp_out),
        "typst_pdf_page": typst_page,
        "source_size": [im_src.width, im_src.height],
        "typst_size": [im_typ.width, im_typ.height],
        "detail_images": details,
    }


def audit_prompt(ctx: Context, p: int, images: dict[str, Any], inputs: dict[str, Any],
                 pdf_sha: str) -> str:
    challenge = audit_challenge(ctx, p)
    challenge_note = (
        "\n【专项复核线索】\n以下机械测量是待确认线索，请逐项对照附件确认，"
        "明确检查公式高度、上下留白及正文结束位置，不能仅凭内容相同判 PASS：\n"
        + json.dumps(challenge, ensure_ascii=False, indent=2)
        if challenge is not None else ""
    )
    detail_note = ("附件顺序：整页并排概览；上部原图、上部重排；中部原图、中部重排；下部原图、下部重排。"
                   "后六幅为原扫描分辨率细节图，分段有重叠。逐字、数学和脚注以细节图核对，"
                   "整体位置与页幅以概览核对。重叠文字只比较一次。"
                   if images.get("detail_images") else "本次只提供整页概览；看不清的细节必须判为无法确认。")
    return f"""你是书籍排版转写的独立视觉验收员。模型只做视觉判断，不使用工具。

第 {p:03d} 页并排对照图：左半为【原书扫描页】，右半为【Typst 重排页】。两半已被调整为完全相同尺寸。
{detail_note}
{challenge_note}
本审查绑定以下指纹（防止拿旧图/旧 PDF 蒙混）：
{json.dumps({"source_image_sha256": inputs["source_image_sha256"],
             "chapter_sha256": inputs["chapter_sha256"],
             "theme_sha256": inputs["theme_sha256"],
             "typst_pdf_sha256": pdf_sha,
             "typst_page_image_sha256": images["typst_image_sha256"]}, ensure_ascii=False, indent=2)}

请逐项真实比较：
1. 文字与符号：逐字、标点、上下标、希腊字母、运算符、负号、编号、页眉页脚；有无漏字、错字、错行、重复。
2. 数学：分式、根式、积分/求和、矩阵/向量、cases、括号定界符、公式编号与上下标是否正确完整。
3. 字体：中文宋/黑体、西文 Times、数学字体、字号/字重是否接近。
4. 段落：首行缩进、行距、段距、对齐、换行与原文是否一致；有无挤压或过大空白。
5. 版式：页边距、标题层级、图注、脚注、页码/页脚。
6. 插图：位置、尺寸、纵横比、裁剪是否只含插图图形，有无把整页/文字区域当图片。
7. 溢出：内容是否超过版心、压页脚、错页或缺失。

判定（不能因“能编译/页数一致”就判 PASS）：
- PASS: 内容完整，文字数学符号正确，字体/缩进/行距/段距/公式/插图位置均与源页一致，无可见缺陷，issues 必须为空数组。
- PARTIAL: 内容完整，无 major 缺陷，只有非破坏性的细微波形/字号/间距差异；至少列出 1 条 minor issue。
- FAIL: 存在漏字/错公式/错符号/错行/内容缺失/明显字体错误/明显缩进或行距偏差/插图错位/溢出/疑似截图替代等；major_defect 必须为 true，并列出具体问题。
- 若图像无法看清、无法确认或信息不足，必须判 FAIL 并说明，禁止猜测为 PASS。

只输出严格 JSON，不要 markdown 代码块、不要解释文字。结构必须为：
{{
  "page": {p},
  "rating": "PASS" | "PARTIAL" | "FAIL",
  "content_complete": true | false,
  "major_defect": true | false,
  "summary": "一句话结论",
  "issues": [
    {{
      "category": "text|math|font|indent|line_spacing|paragraph_spacing|figure|layout|overflow|other",
      "severity": "minor|major",
      "detail": "具体差异/原因，尽量指出原文与重排对照",
      "owner": "theme|chapter|both|unknown"
    }}
  ]
}}
"""


def parse_strict_review(text: str, p: int) -> dict[str, Any]:
    raw = (text or "").strip()
    if not raw:
        raise ValueError("模型输出为空")
    candidate = raw
    m = re.search(r"```(?:json)?\s*\n?(.*?)\n?```", raw, re.DOTALL)
    if m:
        candidate = m.group(1).strip()
    if not candidate.startswith("{"):
        a, b = candidate.find("{"), candidate.rfind("}")
        if a >= 0 and b > a:
            candidate = candidate[a:b + 1]
    data = json.loads(candidate)
    if not isinstance(data, dict):
        raise ValueError("JSON 顶层不是对象")
    if int(data.get("page", -1)) != p:
        raise ValueError(f"page 字段不匹配: {data.get('page')} != {p}")
    rating = data.get("rating")
    if rating not in VALID_RATINGS:
        raise ValueError(f"非法 rating: {rating}")
    if not isinstance(data.get("content_complete"), bool):
        raise ValueError("content_complete 必须是布尔值")
    if not isinstance(data.get("major_defect"), bool):
        raise ValueError("major_defect 必须是布尔值")
    if not isinstance(data.get("summary"), str) or not data["summary"].strip():
        raise ValueError("summary 必须是非空字符串")
    issues = data.get("issues")
    if not isinstance(issues, list):
        raise ValueError("issues 必须是数组")
    for i, it in enumerate(issues):
        if not isinstance(it, dict):
            raise ValueError(f"issues[{i}] 不是对象")
        if it.get("category") not in VALID_CATEGORIES:
            raise ValueError(f"issues[{i}].category 非法: {it.get('category')}")
        if it.get("severity") not in VALID_SEVERITIES:
            raise ValueError(f"issues[{i}].severity 非法: {it.get('severity')}")
        if it.get("owner") not in VALID_OWNERS:
            raise ValueError(f"issues[{i}].owner 非法: {it.get('owner')}")
        if not isinstance(it.get("detail"), str) or not it["detail"].strip():
            raise ValueError(f"issues[{i}].detail 不能为空")
    if rating == "PASS":
        if not data["content_complete"] or data["major_defect"] or issues:
            raise ValueError("PASS 与 content_complete/major_defect/issues 矛盾")
    elif rating == "PARTIAL":
        if not data["content_complete"] or data["major_defect"] or not issues:
            raise ValueError("PARTIAL 必须内容完整、无 major_defect、且至少 1 条 issue")
        if any(it["severity"] == "major" for it in issues):
            raise ValueError("PARTIAL 中出现了 major issue")
    elif rating == "FAIL":
        if not data["major_defect"]:
            raise ValueError("FAIL 必须 major_defect=true")
        if not issues:
            raise ValueError("FAIL 必须列出至少 1 条 issue")
    return data


def audit_page(ctx: Context, p: int, args: argparse.Namespace, build_report: dict[str, Any],
               pdf_sha: str) -> dict[str, Any]:
    mapping = {int(x["value"]): int(x["page"]) for x in build_report.get("marker_check", {}).get("markers", [])}
    typst_page = mapping.get(p)
    if typst_page is None:
        rec = {"page": p, "status": "ERROR", "rating": "ERROR",
               "error": "build report 中没有该源页的 marker 映射，拒绝审核"}
        atomic_write_json(ctx.audit_dir / f"p{p:03d}" / "review.json", rec)
        return rec

    inputs = page_inputs(ctx, p)
    build_ch = (build_report.get("inputs", {}).get("chapter_sha256") or {}).get(str(p))
    if inputs["chapter_sha256"] != build_ch:
        rec = {"page": p, "status": "STALE", "rating": "ERROR",
               "error": "章节源码在构建后发生变化；请重新 verify/build 后再审核",
               "inputs": inputs, "build_chapter_sha256": build_ch,
               "checked_at": now_iso()}
        atomic_write_json(ctx.audit_dir / f"p{p:03d}" / "review.json", rec)
        return rec
    build_src = (build_report.get("inputs", {}).get("source_image_sha256") or {}).get(str(p))
    if inputs["source_image_sha256"] != build_src:
        rec = {"page": p, "status": "STALE", "rating": "ERROR",
               "error": "源扫描图在构建后发生变化；请重新 verify/build 后再审核",
               "inputs": inputs, "build_source_image_sha256": build_src,
               "checked_at": now_iso()}
        atomic_write_json(ctx.audit_dir / f"p{p:03d}" / "review.json", rec)
        return rec
    if inputs["theme_sha256"] != build_report.get("inputs", {}).get("theme_sha256"):
        rec = {"page": p, "status": "STALE", "rating": "ERROR",
               "error": "theme.typ 在构建后发生变化；请重新构建后再审核",
               "inputs": inputs, "checked_at": now_iso()}
        atomic_write_json(ctx.audit_dir / f"p{p:03d}" / "review.json", rec)
        return rec
    if inputs["fonts_sha256"] != build_report.get("inputs", {}).get("fonts_fingerprint"):
        rec = {"page": p, "status": "STALE", "rating": "ERROR",
               "error": "fonts 在构建后发生变化；请重新构建后再审核",
               "inputs": inputs, "checked_at": now_iso()}
        atomic_write_json(ctx.audit_dir / f"p{p:03d}" / "review.json", rec)
        return rec
    build_inputs = build_report.get("inputs", {}) or {}
    dep_errors: list[str] = []
    if not ctx.source_pdf.exists():
        dep_errors.append("源 PDF 不存在")
    elif build_inputs.get("source_pdf_sha256") != inputs.get("source_pdf_sha256"):
        dep_errors.append("源 PDF 与构建时不一致")
    if not ctx.guide.exists():
        dep_errors.append("TYPST-GUIDE.md 不存在")
    elif build_inputs.get("guide_sha256") != inputs.get("guide_sha256"):
        dep_errors.append("TYPST-GUIDE.md 与构建时不一致")
    if build_inputs.get("dependency_fingerprint") != inputs.get("dependency_fingerprint"):
        dep_errors.append("构建依赖（book *.typ / assets / import/image/read 引用）与构建时不一致")
    if dep_errors:
        rec = {"page": p, "status": "STALE", "rating": "ERROR",
               "error": "; ".join(dep_errors), "inputs": inputs,
               "checked_at": now_iso()}
        atomic_write_json(ctx.audit_dir / f"p{p:03d}" / "review.json", rec)
        return rec

    images = make_audit_images(ctx, p, typst_page, ctx.final_pdf)
    if getattr(args, "require_native_details", False) and len(images.get("detail_images", [])) != 3:
        rec = {"page": p, "status": "ERROR", "rating": "ERROR",
               "error": "审核要求三组原生源/重排细节图，当前附件不完整；未发送 pi 请求",
               "images": images, "inputs": inputs, "checked_at": now_iso()}
        atomic_write_json(ctx.audit_dir / f"p{p:03d}" / "review.json", rec)
        return rec
    fp = audit_fingerprint(ctx, inputs, pdf_sha, images["typst_image_sha256"],
                           args.provider, args.model, args.thinking, images.get("detail_images"))
    review_path = ctx.audit_dir / f"p{p:03d}" / "review.json"
    if not args.force and review_path.exists():
        cached = read_json(review_path)
        if isinstance(cached, dict) and cached.get("fingerprint") == fp and cached.get("status") in VALID_RATINGS:
            return cached

    outdir = ctx.audit_dir / f"p{p:03d}"
    prompt = audit_prompt(ctx, p, images, inputs, pdf_sha)
    prompt_path = outdir / "prompt.txt"
    atomic_write_text(prompt_path, prompt)
    sid = session_id_for(ctx, p, "audit", extra=fp[:12])
    ctx.session_dir.mkdir(parents=True, exist_ok=True)
    cmd = [
        "pi", "--provider", args.provider, "--model", args.model, "--thinking", args.thinking,
        "--no-extensions", "--no-mcp", "--no-skills", "--no-prompt-templates",
        "--no-context-files", "--no-tools",
        "--session-dir", str(ctx.session_dir), "--session-id", sid,
        "-p", f"@{outdir / 'compare.png'}",
        *[f"@{ctx.book / detail[key]}" for detail in images.get("detail_images", [])
          for key in ("source_image", "typst_image")],
        prompt,
    ]

    attempts: list[dict[str, Any]] = []
    last_error = None
    for attempt in range(1, 3):
        rl = 0
        while True:
            log_path = outdir / f"attempt-{attempt}.log"
            t0 = time.time()
            result = run_pi(cmd, cwd=ctx.root, timeout=args.timeout, log_path=log_path)
            rl += 1
            if result["returncode"] == 0 or not rate_limited(result["output"]):
                break
            if rl > args.max_retries:
                result["rate_limit_exhausted"] = True
                break
            backoff_sleep(rl, args.backoff_base, args.backoff_max)
        attempts.append({
            "attempt": attempt,
            "returncode": result["returncode"],
            "timed_out": result["timed_out"],
            "duration_s": result["duration_s"],
            "log": rel_to(log_path, ctx.book),
            "rate_limit_retries": rl - 1,
            "session_id": sid,
            "session_dir": str(ctx.session_dir),
            "session_files": session_files_since(ctx, t0),
            "session_file": session_file_for(ctx, sid),
            "command": [*cmd[:-1], f"<prompt:{rel_to(prompt_path, ctx.book)}>"],
        })
        if result["timed_out"]:
            last_error = "pi 审核超时"
            continue
        if result["returncode"] != 0:
            last_error = f"pi returncode {result['returncode']}"
            continue
        try:
            review = parse_strict_review(result["output"], p)
        except Exception as exc:
            last_error = f"严格 JSON 校验失败: {exc}"
            (outdir / f"invalid-attempt-{attempt}.txt").write_text(result["output"], encoding="utf-8")
            retry_prompt = (
                prompt + "\n【上次输出的格式错误】\n" + last_error
                + "\n请重新核对附件并输出完整严格 JSON。category 只能逐项取以下一个值："
                "text, math, font, indent, line_spacing, paragraph_spacing, figure, layout, overflow, other。"
                "不要使用 paragraph 等列表外分类；保留真实缺陷及原有判定标准。\n"
            )
            prompt_path = outdir / f"retry-after-invalid-{attempt}-prompt.txt"
            atomic_write_text(prompt_path, retry_prompt)
            cmd[-1] = retry_prompt
            continue
        rec = {
            **review,
            "status": review["rating"],
            "page_image": images["typst_image"],
            "source_image": images["source_image"],
            "compare_image": images["compare_image"],
            "images": images,
            "inputs": inputs,
            "typst_pdf_sha256": pdf_sha,
            "typst_page": typst_page,
            "fingerprint": fp,
            "provider": args.provider,
            "model": args.model,
            "thinking": args.thinking,
            "prompt_version": AUDIT_PROMPT_VERSION,
            "session_id": sid,
            "session_dir": str(ctx.session_dir),
            "session_file": session_file_for(ctx, sid),
            "attempts": attempts,
            "command": [*cmd[:-1], f"<prompt:{rel_to(prompt_path, ctx.book)}>"],
            "checked_at": now_iso(),
        }
        atomic_write_json(review_path, rec)
        return rec

    rec = {
        "page": p, "status": "ERROR", "rating": "ERROR",
        "error": last_error or "审核失败",
        "attempts": attempts,
        "images": images,
        "inputs": inputs,
        "typst_pdf_sha256": pdf_sha,
        "typst_page": typst_page,
        "fingerprint": fp,
        "provider": args.provider, "model": args.model, "thinking": args.thinking,
        "prompt_version": AUDIT_PROMPT_VERSION,
        "session_id": sid, "session_dir": str(ctx.session_dir),
        "session_file": session_file_for(ctx, sid),
        "command": [*cmd[:-1], f"<prompt:{rel_to(prompt_path, ctx.book)}>"],
        "checked_at": now_iso(),
    }
    atomic_write_json(review_path, rec)
    return rec


# ---------------------------------------------------------------------------
# whole-book report
# ---------------------------------------------------------------------------

def build_binding_ok(ctx: Context, build_report: dict[str, Any] | None) -> tuple[bool, list[str]]:
    errs: list[str] = []
    if not isinstance(build_report, dict):
        return False, ["缺少 build/build-report.json"]
    if not ctx.theme.exists():
        errs.append("theme.typ 不存在（构建绑定需要当前主题）")
    if not ctx.guide.exists():
        errs.append("TYPST-GUIDE.md 不存在")
    if not ctx.source_pdf.exists():
        errs.append("源 PDF 不存在")
    if build_report.get("status") != "PASS":
        errs.append(f"build status={build_report.get('status')}")
        return False, errs
    if not ctx.final_pdf.exists():
        errs.append("最终 PDF 不存在")
    else:
        if build_report.get("final_pdf_sha256") != sha256_file(ctx.final_pdf):
            errs.append("最终 PDF sha256 与 build report 不一致（构建后被替换/修改）")
    binp = build_report.get("inputs", {}) or {}
    cur_theme = sha256_file(ctx.theme) if ctx.theme.exists() else None
    if binp.get("theme_sha256") != cur_theme:
        errs.append("theme.typ 与构建时指纹不一致")
    cur_guide = sha256_file(ctx.guide) if ctx.guide.exists() else None
    if binp.get("guide_sha256") != cur_guide:
        errs.append("TYPST-GUIDE.md 与构建时指纹不一致")
    if ctx.font_info()["fingerprint"] != binp.get("fonts_fingerprint"):
        errs.append("fonts 指纹与构建时不一致")
    cur_manifest = sha256_file(ctx.manifest_path) if ctx.manifest_path.exists() else None
    if binp.get("manifest_sha256") != cur_manifest:
        errs.append("source-manifest.json 与构建时不一致或缺失")
    cur_pdf = sha256_file(ctx.source_pdf) if ctx.source_pdf.exists() else None
    if binp.get("source_pdf_sha256") != cur_pdf:
        errs.append("源 PDF 与构建时不一致或缺失")

    # Every real build dependency: all authored book *.typ, all assets files,
    # recursively resolved local import/include/image/read references, and the
    # source PDF/manifest. Comparing the aggregate catches both edits and deletions.
    deps = build_dependencies(ctx)
    if binp.get("dependency_fingerprint") != deps["fingerprint"]:
        old_files = binp.get("dependency_files") or {}
        new_files = deps["files"]
        added = sorted(set(new_files) - set(old_files)) if old_files else []
        removed = sorted(set(old_files) - set(new_files)) if old_files else []
        changed = sorted(k for k in set(old_files) & set(new_files) if old_files[k] != new_files[k])
        detail = ""
        if old_files:
            bits = []
            for label, items in (("新增", added), ("删除", removed), ("修改", changed)):
                if items:
                    bits.append(f"{label} {len(items)}: {', '.join(items[:6])}")
            detail = "；".join(bits)
        else:
            detail = "build report 没有依赖文件清单，需要重新构建"
        errs.append("构建依赖（assets / import / image / read）与构建时不一致" + (f"（{detail}）" if detail else ""))

    build_chapters = (binp.get("chapter_sha256") or {})
    n = source_page_count(ctx)
    changed = []
    for p in range(1, n + 1):
        ch = ctx.page_chapter(p)
        want = build_chapters.get(str(p))
        got = sha256_file(ch) if ch.exists() else None
        if want != got:
            changed.append(p)
    if changed:
        errs.append(f"{len(changed)} 页章节源码与构建时不一致（前若干: {changed[:12]}）")
    build_sources = (binp.get("source_image_sha256") or {})
    bad_sources = []
    for p in range(1, n + 1):
        src = source_page_paths(ctx, p)[0]
        want = build_sources.get(str(p))
        got = sha256_file(src) if src.exists() else None
        if want != got:
            bad_sources.append(p)
    if bad_sources:
        errs.append(f"{len(bad_sources)} 页源图与构建时不一致或缺失（前若干: {bad_sources[:12]}）")
    return not errs, errs


def collect_report(ctx: Context) -> dict[str, Any]:
    expected = source_page_count(ctx)
    build_report = read_json(ctx.build_report_path)
    binding_ok, binding_errors = build_binding_ok(ctx, build_report)
    build_chapters = (build_report or {}).get("inputs", {}).get("chapter_sha256", {}) if isinstance(build_report, dict) else {}
    pdf_sha = sha256_file(ctx.final_pdf) if ctx.final_pdf.exists() else None
    mapping = {}
    if isinstance(build_report, dict):
        for x in (build_report.get("marker_check", {}) or {}).get("markers", []) or []:
            try:
                mapping[int(x["value"])] = int(x["page"])
            except Exception:
                pass

    preconditions: list[str] = []
    if not ctx.theme.exists():
        preconditions.append("theme.typ 不存在（不会用替代主题）")
    if not ctx.guide.exists():
        preconditions.append("TYPST-GUIDE.md 不存在")
    if not ctx.source_pdf.exists():
        preconditions.append(f"源 PDF 不存在: {ctx.source_pdf.name}")
    if not ctx.font_path.exists():
        preconditions.append(f"字体目录不存在: {ctx.font_path}")
    if expected <= 0:
        preconditions.append("无法确定源页数（manifest/pdfinfo）")

    pages: list[dict[str, Any]] = []
    for p in range(1, expected + 1):
        ch = ctx.page_chapter(p)
        src_path, _src_entry = source_page_paths(ctx, p)
        inp = page_inputs(ctx, p) if ch.exists() else {
            "page": p, "chapter_sha256": None, "source_image_sha256": None,
            "theme_sha256": None, "guide_sha256": None, "fonts_sha256": None,
            "source_pdf_sha256": None, "manifest_sha256": None,
            "dependency_fingerprint": None, "dependency_unresolved": [],
        }
        v = read_json(ctx.verify_dir / f"p{p:03d}" / "result.json")
        v_status = (v or {}).get("status", "MISSING")
        v_fp = verify_fingerprint(inp)
        v_current = bool(isinstance(v, dict) and v.get("status") == "PASS" and v.get("fingerprint") == v_fp)

        a = read_json(ctx.audit_dir / f"p{p:03d}" / "review.json")
        a_status = "NOT_AUDITED"
        if isinstance(a, dict):
            page_img_sha = (a.get("images") or {}).get("typst_image_sha256")
            expected_fp = None
            if page_img_sha and pdf_sha:
                expected_fp = audit_fingerprint(
                    ctx, inp, pdf_sha, page_img_sha,
                    a.get("provider", PROVIDER_DEFAULT),
                    a.get("model", MODEL_DEFAULT),
                    a.get("thinking", "medium"),
                    (a.get("images") or {}).get("detail_images"),
                )
            fp_match = (
                a.get("fingerprint") is not None
                and a.get("typst_pdf_sha256") == pdf_sha
                and a.get("fingerprint") == expected_fp
            )
            inp_match = (
                a.get("inputs", {}).get("source_image_sha256") == inp.get("source_image_sha256") and
                a.get("inputs", {}).get("chapter_sha256") == inp.get("chapter_sha256") and
                a.get("inputs", {}).get("theme_sha256") == inp.get("theme_sha256") and
                a.get("inputs", {}).get("fonts_sha256") == inp.get("fonts_sha256") and
                a.get("inputs", {}).get("guide_sha256") == inp.get("guide_sha256") and
                a.get("inputs", {}).get("source_pdf_sha256") == inp.get("source_pdf_sha256") and
                a.get("inputs", {}).get("manifest_sha256") == inp.get("manifest_sha256") and
                a.get("inputs", {}).get("dependency_fingerprint") == inp.get("dependency_fingerprint")
            )
            if not (binding_ok and fp_match and inp_match):
                a_status = "STALE"
            else:
                a_status = a.get("rating") if a.get("rating") in VALID_RATINGS else a.get("status", "ERROR")
        elif not binding_ok:
            a_status = "STALE" if ctx.final_pdf.exists() else "NOT_AUDITED"

        pages.append({
            "page": p,
            "source_image_exists": src_path.exists(),
            "chapter_exists": ch.exists() and ch.stat().st_size > 0,
            "chapter_sha256": inp.get("chapter_sha256"),
            "verify_status": v_status,
            "verify_current": v_current,
            "build_marker_page": mapping.get(p),
            "build_chapter_match": bool(build_chapters.get(str(p)) == inp.get("chapter_sha256")),
            "audit_status": a_status,
            "audit_record": a if isinstance(a, dict) else None,
        })

    counts = {
        "source_images_present": sum(1 for x in pages if x["source_image_exists"]),
        "chapters_present": sum(1 for x in pages if x["chapter_exists"]),
        "verified_current": sum(1 for x in pages if x["verify_current"]),
        "audit_PASS": sum(1 for x in pages if x["audit_status"] == "PASS"),
        "audit_PARTIAL": sum(1 for x in pages if x["audit_status"] == "PARTIAL"),
        "audit_FAIL": sum(1 for x in pages if x["audit_status"] == "FAIL"),
        "audit_ERROR": sum(1 for x in pages if x["audit_status"] == "ERROR"),
        "audit_STALE": sum(1 for x in pages if x["audit_status"] == "STALE"),
        "audit_NOT_AUDITED": sum(1 for x in pages if x["audit_status"] == "NOT_AUDITED"),
    }
    assert sum(counts[k] for k in ("audit_PASS", "audit_PARTIAL", "audit_FAIL",
                                   "audit_ERROR", "audit_STALE", "audit_NOT_AUDITED")) == expected

    if preconditions:
        overall = "BLOCKED"
        reason = "前置条件不满足: " + "; ".join(preconditions)
    elif counts["source_images_present"] < expected:
        overall = "BLOCKED"
        reason = f"源图缺失: {counts['source_images_present']}/{expected}"
    elif counts["chapters_present"] < expected:
        overall = "BLOCKED"
        reason = f"章节缺失: {counts['chapters_present']}/{expected}"
    elif not binding_ok:
        overall = "BUILD_REQUIRED" if not build_report else "FAIL"
        reason = "全书构建绑定无效: " + "; ".join(binding_errors)
    elif counts["audit_FAIL"]:
        overall = "FAIL"
        reason = f"{counts['audit_FAIL']} 页 FAIL"
    elif counts["audit_ERROR"]:
        overall = "ERROR"
        reason = f"{counts['audit_ERROR']} 页审核错误"
    elif counts["audit_STALE"]:
        overall = "STALE"
        reason = f"{counts['audit_STALE']} 页审核绑定已过期"
    elif counts["verified_current"] < expected:
        overall = "UNVERIFIED"
        reason = f"当前指纹下单页验证通过 {counts['verified_current']}/{expected}"
    elif counts["audit_NOT_AUDITED"]:
        overall = "INCOMPLETE"
        reason = f"仅审核 {expected - counts['audit_NOT_AUDITED']}/{expected} 页"
    elif counts["audit_PARTIAL"]:
        overall = "PARTIAL"
        reason = f"{counts['audit_PARTIAL']} 页 PARTIAL，无 FAIL/ERROR"
    else:
        overall = "PASS"
        reason = f"全部 {expected}/{expected} 页 PASS"

    owners: dict[str, int] = {k: 0 for k in sorted(VALID_OWNERS)}
    for x in pages:
        if x.get("audit_status") not in VALID_RATINGS:
            continue
        a = x.get("audit_record") or {}
        for it in a.get("issues", []) or []:
            owner = it.get("owner", "unknown")
            owners[owner] = owners.get(owner, 0) + 1

    return {
        "generated_at": now_iso(),
        "book": str(ctx.book),
        "expected_pages": expected,
        "overall_status": overall,
        "reason": reason,
        "preconditions": preconditions,
        "counts": counts,
        "issue_owner_counts": owners,
        "binding_ok": binding_ok,
        "binding_errors": binding_errors,
        "build_status": (build_report or {}).get("status") if isinstance(build_report, dict) else "MISSING",
        "build_report_path": rel_to(ctx.build_report_path, ctx.book),
        "final_pdf": rel_to(ctx.final_pdf, ctx.book) if ctx.final_pdf.exists() else None,
        "final_pdf_sha256": pdf_sha,
        "theme_sha256": sha256_file(ctx.theme) if ctx.theme.exists() else None,
        "fonts_fingerprint": ctx.font_info()["fingerprint"],
        "build_inputs": (build_report or {}).get("inputs") if isinstance(build_report, dict) else None,
        "pages": pages,
    }


def render_report_markdown(ctx: Context, report: dict[str, Any]) -> str:
    c = report["counts"]
    n = report["expected_pages"]
    lines = [
        f"# 《{ctx.book.name}》整书转写与审核报告",
        "",
        f"- 生成时间: `{report['generated_at']}`",
        f"- 源页总数: **{n}**（报告覆盖全部 {n} 页，不只已审核页）",
        f"- 整书状态: **{report['overall_status']}** — {report['reason']}",
        f"- 最终 PDF: `{report.get('final_pdf') or '未生成'}`",
        f"- 最终 PDF sha256: `{report.get('final_pdf_sha256')}`",
        f"- 构建报告: `{report.get('build_report_path')}` (status={report.get('build_status')})",
        f"- 构建绑定有效: `{report['binding_ok']}`" + (f" — {'; '.join(report['binding_errors'])}" if report['binding_errors'] else ""),
        "",
        "## 全书覆盖统计（分母恒为全部源页）",
        "",
        "| 项目 | 数量 | 分母 |",
        "| :--- | ---: | ---: |",
        f"| 源图存在 | {c.get('source_images_present', 0)} | {n} |",
        f"| 章节存在 | {c['chapters_present']} | {n} |",
        f"| 当前指纹下验证 PASS | {c['verified_current']} | {n} |",
        f"| 审核 PASS | {c['audit_PASS']} | {n} |",
        f"| 审核 PARTIAL | {c['audit_PARTIAL']} | {n} |",
        f"| 审核 FAIL | {c['audit_FAIL']} | {n} |",
        f"| 审核 ERROR | {c['audit_ERROR']} | {n} |",
        f"| 审核 STALE（绑定过期） | {c['audit_STALE']} | {n} |",
        f"| 未审核 | {c['audit_NOT_AUDITED']} | {n} |",
        "",
        "## 问题归属统计（theme / chapter）",
        "",
        f"- theme: {report['issue_owner_counts'].get('theme', 0)}",
        f"- chapter: {report['issue_owner_counts'].get('chapter', 0)}",
        f"- both: {report['issue_owner_counts'].get('both', 0)}",
        f"- unknown: {report['issue_owner_counts'].get('unknown', 0)}",
        "",
        "## 逐页状态（全部源页）",
        "",
        "| 页 | 章节 | 单页验证 | 源页→输出页 | 构建章节匹配 | 审核 | 问题/原因 |",
        "| ---: | :---: | :--- | :---: | :---: | :--- | :--- |",
    ]
    for x in report["pages"]:
        a = x.get("audit_record") or {}
        status = x.get("audit_status")
        issues = a.get("issues", []) or [] if status in VALID_RATINGS else []
        if status in VALID_RATINGS or status == "ERROR":
            detail = a.get("summary") or a.get("error") or ""
        elif status == "STALE":
            detail = "审核绑定过期，需要按当前源码/主题/PDF/图片重审"
        else:
            detail = "未审核"
        if issues:
            iss = "; ".join(
                f"[{it.get('severity')}/{it.get('owner')}] {it.get('detail')}" for it in issues[:4]
            )
            detail = (detail + " " + iss).strip()
        detail = detail.replace("|", "\\|").replace("\n", " ")
        if len(detail) > 500:
            detail = detail[:497] + "..."
        lines.append(
            f"| {x['page']:03d} | {'✓' if x['chapter_exists'] else '✗'} | "
            f"{x['verify_status']}{'*' if x['verify_current'] else ''} | "
            f"{x['build_marker_page'] if x['build_marker_page'] is not None else '—'} | "
            f"{'✓' if x['build_chapter_match'] else '—'} | {x['audit_status']} | {detail or '—'} |"
        )
    lines += [
        "",
        "说明：`验证...*` 表示当前输入指纹与验证缓存匹配；审核状态只有在 source/chapter/theme/fonts/PDF/页面渲染图指纹全部匹配时才计为有效。",
        "",
    ]
    return "\n".join(lines)


def write_report(ctx: Context) -> dict[str, Any]:
    report = collect_report(ctx)
    atomic_write_json(ctx.report_json, report)
    md = render_report_markdown(ctx, report)
    atomic_write_text(ctx.report_md, md)
    atomic_write_text(ctx.pipeline / "AUDIT_REPORT.md", md)
    return report


# ---------------------------------------------------------------------------
# status
# ---------------------------------------------------------------------------

def status_data(ctx: Context) -> dict[str, Any]:
    m = load_manifest(ctx)
    n = source_page_count(ctx)
    pdf_n = pdf_page_count(ctx.source_pdf) if ctx.source_pdf.exists() else None
    manifest_sha = (m or {}).get("sha256")
    actual_pdf_sha = sha256_file(ctx.source_pdf) if ctx.source_pdf.exists() else None
    missing_sources = [p for p in range(1, n + 1) if not source_page_paths(ctx, p)[0].exists()]
    chapters = [p for p in range(1, n + 1) if ctx.page_chapter(p).exists()]
    verify_ok = []
    for p in chapters:
        rec = read_json(ctx.verify_dir / f"p{p:03d}" / "result.json")
        fp = verify_fingerprint(page_inputs(ctx, p))
        if isinstance(rec, dict) and rec.get("status") == "PASS" and rec.get("fingerprint") == fp:
            verify_ok.append(p)
    build_report = read_json(ctx.build_report_path)
    binding_ok, binding_errors = build_binding_ok(ctx, build_report)
    report = collect_report(ctx) if n and chapters else None
    tools = {}
    for name in ["pi", "typst", "pdfinfo", "pdftoppm", "pdftotext", "pdffonts"]:
        tools[name] = shutil.which(name)
    blocked = []
    if not ctx.theme.exists():
        blocked.append("theme.typ 不存在：转写/验证/构建会失败，流水线不会生成替代主题")
    if not ctx.guide.exists():
        blocked.append("TYPST-GUIDE.md 不存在：逐页转写会失败")
    if m is None:
        blocked.append("source-manifest.json 不存在或不可读")
    elif pdf_n is not None and m.get("page_count") != pdf_n:
        blocked.append(f"manifest page_count={m.get('page_count')} 与 PDF 页数={pdf_n} 不一致")
    if not ctx.source_pdf.exists():
        blocked.append(f"源 PDF 不存在: {ctx.source_pdf.name}")
    if manifest_sha and actual_pdf_sha and manifest_sha != actual_pdf_sha:
        blocked.append("manifest 中源 PDF sha256 与当前 PDF 不一致")
    if n and missing_sources:
        blocked.append(f"缺少 {len(missing_sources)} 张源图（前若干: {missing_sources[:10]}）")
    if not ctx.font_path.exists():
        blocked.append(f"字体目录不存在: {ctx.font_path}")
    for k, v in tools.items():
        if not v:
            blocked.append(f"缺少命令: {k}")
    return {
        "book": str(ctx.book),
        "root": str(ctx.root),
        "font_path": str(ctx.font_path),
        "provider": ctx.provider,
        "model": ctx.model,
        "source_pages": n,
        "manifest_page_count": (m or {}).get("page_count"),
        "pdf_pages": pdf_n,
        "manifest_sha256": manifest_sha,
        "pdf_sha256": actual_pdf_sha,
        "theme_exists": ctx.theme.exists(),
        "guide_exists": ctx.guide.exists(),
        "fonts": {"file_count": ctx.font_info()["file_count"], "fingerprint": ctx.font_info()["fingerprint"]},
        "chapters_present": len(chapters),
        "chapters_missing": [p for p in range(1, n + 1) if p not in chapters][:30] if n else [],
        "source_images_missing": missing_sources[:30],
        "verified_current": len(verify_ok),
        "build_status": (build_report or {}).get("status") if isinstance(build_report, dict) else "MISSING",
        "build_binding_ok": binding_ok,
        "build_binding_errors": binding_errors,
        "overall_status": report["overall_status"] if report else ("BLOCKED" if blocked else "NO_SOURCE"),
        "overall_reason": report["reason"] if report else "; ".join(blocked) or "无源页",
        "audit_counts": report["counts"] if report else None,
        "blocked": blocked,
        "tools": tools,
        "pipeline_dir": str(ctx.pipeline),
    }


def cmd_status(ctx: Context, args: argparse.Namespace) -> int:
    d = status_data(ctx)
    if args.json:
        print(json.dumps(d, ensure_ascii=False, indent=2))
        return 0
    print(f"Book          : {d['book']}")
    print(f"Root/fonts    : {d['root']} | {d['font_path']}")
    print(f"Model         : {d['provider']}/{d['model']}")
    print(f"Source pages  : {d['source_pages']} (manifest={d['manifest_page_count']}, pdfinfo={d['pdf_pages']})")
    print(f"Source sha    : {d['pdf_sha256']} (manifest={d['manifest_sha256']})")
    print(f"theme.typ     : {'OK' if d['theme_exists'] else 'MISSING'}")
    print(f"TYPST-GUIDE   : {'OK' if d['guide_exists'] else 'MISSING'}")
    print(f"fonts         : {d['fonts']['file_count']} files, fingerprint={d['fonts']['fingerprint'][:16]}...")
    print(f"chapters      : {d['chapters_present']}/{d['source_pages']}")
    print(f"verify current: {d['verified_current']}/{d['source_pages']}")
    print(f"build         : {d['build_status']}, binding={'OK' if d['build_binding_ok'] else 'INVALID'}")
    if d.get("audit_counts"):
        c = d["audit_counts"]
        print(f"audit         : PASS {c['audit_PASS']} / PARTIAL {c['audit_PARTIAL']} / FAIL {c['audit_FAIL']} / "
              f"ERROR {c['audit_ERROR']} / STALE {c['audit_STALE']} / NOT_AUDITED {c['audit_NOT_AUDITED']} "
              f"(total {d['source_pages']})")
    print(f"overall       : {d['overall_status']} — {d['overall_reason']}")
    if d["blocked"]:
        print("blocked:")
        for x in d["blocked"]:
            print(f"  - {x}")
    missing_tools = [k for k, v in d["tools"].items() if not v]
    if missing_tools:
        print(f"missing tools : {', '.join(missing_tools)}")
    print(f"pipeline dir  : {d['pipeline_dir']}")
    return 0


# ---------------------------------------------------------------------------
# command implementations
# ---------------------------------------------------------------------------

def _missing_tools(names: list[str]) -> list[str]:
    return [x for x in names if not shutil.which(x)]


def _require_positive(args: argparse.Namespace, names: list[str], allow_zero: set[str] | None = None) -> str | None:
    allow_zero = allow_zero or set()
    for name in names:
        val = getattr(args, name, None)
        if val is None:
            continue
        if not isinstance(val, (int, float)):
            return f"--{name.replace('_', '-')} 必须是数值"
        if val < 0 or (val == 0 and name not in allow_zero):
            return f"--{name.replace('_', '-')} 必须{' ≥ 0' if name in allow_zero else ' > 0'}，当前 {val}"
    return None


def cmd_transcribe(ctx: Context, args: argparse.Namespace) -> int:
    bad = _require_positive(args, ["workers", "attempts", "timeout"], allow_zero={"max_retries"})
    if bad:
        print(f"ERROR: {bad}", file=sys.stderr)
        return 2
    if args.backoff_base <= 0 or args.backoff_max <= 0:
        print("ERROR: backoff 参数必须 > 0", file=sys.stderr)
        return 2
    if not ctx.theme.exists():
        print("BLOCKED: theme.typ 不存在。逐页转写必须使用现有 theme.typ；流水线不会偷偷生成或替换主题。", file=sys.stderr)
        return 2
    if not ctx.guide.exists():
        print("BLOCKED: TYPST-GUIDE.md 不存在。逐页转写必须遵循现有指南；流水线不会猜测规范。", file=sys.stderr)
        return 2
    missing_tools = _missing_tools(["pi", "typst", "pdfinfo", "pdftoppm"])
    if missing_tools:
        print(f"BLOCKED: 缺少命令: {', '.join(missing_tools)}", file=sys.stderr)
        return 2
    n = source_page_count(ctx)
    if n <= 0:
        print("BLOCKED: 无法确定源页数（source-manifest.json / pdfinfo）。", file=sys.stderr)
        return 2
    try:
        pages = parse_pages(args.pages, n)
    except Exception as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        return 2
    if args.dry_run:
        print(f"[dry-run] would transcribe {len(pages)} page(s) with {args.provider}/{args.model} "
              f"thinking={args.thinking} workers={args.workers} attempts={args.attempts}")
        for p in pages[:5]:
            print(f"  p{p:03d}: pi ... --tools read,bash,edit,write --session-id {session_id_for(ctx, p, 'transcribe')}")
        if len(pages) > 5:
            print(f"  ... {len(pages)-5} more")
        return 0

    results: dict[int, dict[str, Any]] = {}
    started_at = now_iso()
    t0 = time.time()
    global_before = page_scoped_snapshot(ctx)
    with concurrent.futures.ThreadPoolExecutor(max_workers=max(1, args.workers)) as pool:
        futs = {pool.submit(transcribe_page, ctx, p, args): p for p in pages}
        for fut in concurrent.futures.as_completed(futs):
            p = futs[fut]
            try:
                r = fut.result()
            except Exception as exc:
                r = {"page": p, "status": "EXCEPTION", "error": f"{type(exc).__name__}: {exc}"}
                StateStore(ctx).update_page(p, "transcribe", r)
            results[p] = r
            print(f"p{p:03d}: {r.get('status')} {r.get('error') or r.get('last_failure', {}).get('error') or ''}", flush=True)
    global_after = page_scoped_snapshot(ctx)
    global_diff = snapshot_diff(global_before, global_after)
    changed = global_diff["added"] + global_diff["removed"] + global_diff["changed"]
    outside: list[str] = []
    inside: list[str] = []
    skipped_pages = {p for p, r in results.items() if r.get("status") == "SKIPPED_VERIFIED"}
    for path in changed:
        owner = page_scoped_owner(path)
        if owner in pages and owner not in skipped_pages:
            inside.append(path)
        else:
            # Writes to pages outside this batch, or to pages that were skipped as
            # already verified, are unauthorized.
            outside.append(path)
    run_record = {
        "started_at": started_at,
        "pages": pages,
        "workers": args.workers,
        "thinking": args.thinking,
        "model": args.model,
        "provider": args.provider,
        "duration_s": round(time.time() - t0, 3),
        "page_scoped_changes_in_batch": sorted(inside),
        "page_scoped_changes_outside_batch": sorted(outside),
        "unchanged": not changed,
    }
    run_dir = ctx.pipeline / "transcribe-runs"
    run_dir.mkdir(parents=True, exist_ok=True)
    atomic_write_json(run_dir / f"run-{_dt.datetime.now().strftime('%Y%m%d-%H%M%S')}.json", run_record)
    ok = sum(1 for r in results.values() if r.get("status") in {"VERIFIED", "SKIPPED_VERIFIED"})
    print(f"transcribe summary: {ok}/{len(pages)} verified in {time.time()-t0:.1f}s")
    if outside:
        print("UNAUTHORIZED RUN-LEVEL WRITES (page-scoped files outside requested pages):", file=sys.stderr)
        for x in outside[:20]:
            print(f"  - {x}", file=sys.stderr)
    if inside:
        print(f"note: {len(inside)} page-scoped paths changed within the requested batch "
              f"(跨页归属并发下无法逐文件归因；各页仍独立验证)")
    write_report(ctx)
    return 0 if ok == len(pages) and not outside else 1


def cmd_verify(ctx: Context, args: argparse.Namespace) -> int:
    bad = _require_positive(args, ["workers", "timeout"])
    if bad:
        print(f"ERROR: {bad}", file=sys.stderr)
        return 2
    if not ctx.theme.exists():
        print("BLOCKED: theme.typ 不存在；不能伪造单页编译验证。", file=sys.stderr)
        return 2
    if not ctx.guide.exists():
        print("BLOCKED: TYPST-GUIDE.md 不存在；不能完成规范检查。", file=sys.stderr)
        return 2
    missing_tools = _missing_tools(["typst", "pdfinfo", "pdftoppm", "pdftotext"])
    if missing_tools:
        print(f"BLOCKED: 缺少命令: {', '.join(missing_tools)}", file=sys.stderr)
        return 2
    n = source_page_count(ctx)
    try:
        pages = parse_pages(args.pages, n)
    except Exception as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        return 2
    results: dict[int, dict[str, Any]] = {}
    with concurrent.futures.ThreadPoolExecutor(max_workers=max(1, args.workers)) as pool:
        futs = {pool.submit(verify_page, ctx, p, args.force, args.timeout): p for p in pages}
        for fut in concurrent.futures.as_completed(futs):
            p = futs[fut]
            try:
                r = fut.result()
            except Exception as exc:
                r = {"page": p, "status": "EXCEPTION", "errors": [f"{type(exc).__name__}: {exc}"]}
            results[p] = r
            print(f"p{p:03d}: {r.get('status')} {('; '.join(r.get('errors', [])))[:300]}", flush=True)
    ok = sum(1 for r in results.values() if r.get("status") == "PASS")
    print(f"verify summary: {ok}/{len(pages)} PASS")
    write_report(ctx)
    return 0 if ok == len(pages) else 1


def cmd_build(ctx: Context, args: argparse.Namespace) -> int:
    bad = _require_positive(args, ["timeout"])
    if bad:
        print(f"ERROR: {bad}", file=sys.stderr)
        return 2
    if args.expected_pages is not None and args.expected_pages <= 0:
        print("ERROR: --expected-pages 必须 > 0", file=sys.stderr)
        return 2
    if not (0.0 <= args.min_text_page_ratio <= 1.0):
        print("ERROR: --min-text-page-ratio 必须在 [0,1]", file=sys.stderr)
        return 2
    missing_tools = _missing_tools(["typst", "pdfinfo", "pdftotext", "pdffonts"])
    if missing_tools:
        print(f"BLOCKED: 缺少命令: {', '.join(missing_tools)}", file=sys.stderr)
        return 2
    r = build_book(ctx, args)
    print(f"build status: {r.get('status')} expected={r.get('expected_pages')} actual={r.get('actual_pages')}")
    if r.get("errors"):
        for e in r["errors"]:
            print(f"  ERROR: {e}", file=sys.stderr)
    if r.get("status") == "PASS":
        print(f"[OK] {ctx.final_pdf}")
        print(f"     sha256={r.get('final_pdf_sha256')}")
        print(f"     marker 1:1 = {r.get('marker_check', {}).get('one_to_one')}")
        ev = r.get("evidence", {})
        print(f"     embedded fonts = {len((ev.get('fonts') or {}).get('embedded_fonts', []))}")
        tx = ev.get("text") or {}
        print(f"     searchable pages = {tx.get('pages_with_text')}/{tx.get('expected_pages')} "
              f"({tx.get('page_text_ratio')})")
    write_report(ctx)
    return 0 if r.get("status") == "PASS" else 1


def cmd_audit(ctx: Context, args: argparse.Namespace) -> int:
    bad = _require_positive(args, ["workers", "timeout"], allow_zero={"max_retries"})
    if bad:
        print(f"ERROR: {bad}", file=sys.stderr)
        return 2
    if args.backoff_base <= 0 or args.backoff_max <= 0:
        print("ERROR: backoff 参数必须 > 0", file=sys.stderr)
        return 2
    if args.sample_pct is not None and args.sample_pct <= 0:
        print("ERROR: --sample-pct 必须 > 0", file=sys.stderr)
        return 2
    if args.pages and args.sample_pct is not None:
        print("ERROR: --pages 与 --sample-pct 只能二选一", file=sys.stderr)
        return 2
    missing_tools = _missing_tools(["pi", "pdfinfo", "pdftoppm"])
    if missing_tools:
        print(f"BLOCKED: 缺少命令: {', '.join(missing_tools)}", file=sys.stderr)
        return 2
    n = source_page_count(ctx)
    if n <= 0:
        print("BLOCKED: 无法确定源页数", file=sys.stderr)
        return 2
    build_report = read_json(ctx.build_report_path)
    ok, errs = build_binding_ok(ctx, build_report)
    if not ok:
        print("BLOCKED: 全书构建绑定无效，不能审核：", file=sys.stderr)
        for e in errs:
            print(f"  - {e}", file=sys.stderr)
        return 2
    if not ctx.final_pdf.exists():
        print("BLOCKED: 最终 PDF 不存在；先运行 build。", file=sys.stderr)
        return 2
    if not ctx.theme.exists() or not ctx.guide.exists():
        print("BLOCKED: theme.typ 或 TYPST-GUIDE.md 缺失。", file=sys.stderr)
        return 2
    pdf_sha = sha256_file(ctx.final_pdf)

    if args.pages:
        try:
            pages = parse_pages(args.pages, n)
        except Exception as exc:
            print(f"ERROR: {exc}", file=sys.stderr)
            return 2
    elif args.sample_pct:
        step = max(1, int(round(100.0 / args.sample_pct)))
        pages = list(range(step // 2 or 1, n + 1, step))
        pages = sorted(set(p for p in pages if 1 <= p <= n))
    else:
        print("ERROR: audit 必须指定 --pages 或 --sample-pct（避免误触大规模审核）", file=sys.stderr)
        return 2

    if args.dry_run:
        print(f"[dry-run] would audit {len(pages)} page(s) with {args.provider}/{args.model} "
              f"thinking={args.thinking} workers={args.workers}")
        for p in pages[:5]:
            print(f"  p{p:03d}: render source/typst same-size + compare, pi --no-tools strict JSON")
        if len(pages) > 5:
            print(f"  ... {len(pages)-5} more")
        return 0

    results: dict[int, dict[str, Any]] = {}
    t0 = time.time()
    with concurrent.futures.ThreadPoolExecutor(max_workers=max(1, args.workers)) as pool:
        futs = {pool.submit(audit_page, ctx, p, args, build_report, pdf_sha): p for p in pages}
        for fut in concurrent.futures.as_completed(futs):
            p = futs[fut]
            try:
                r = fut.result()
            except Exception as exc:
                r = {"page": p, "status": "ERROR", "rating": "ERROR",
                     "error": f"{type(exc).__name__}: {exc}"}
                atomic_write_json(ctx.audit_dir / f"p{p:03d}" / "review.json", r)
            results[p] = r
            print(f"p{p:03d}: {r.get('status')} {r.get('error') or ''}", flush=True)
    report = write_report(ctx)
    print(f"audit summary: " + ", ".join(f"{k}={v}" for k, v in report["counts"].items()))
    print(f"whole-book status: {report['overall_status']} — {report['reason']}")
    return 0 if all(r.get("status") in VALID_RATINGS for r in results.values()) else 1


def cmd_report(ctx: Context, args: argparse.Namespace) -> int:
    report = write_report(ctx)
    print(f"whole-book status: {report['overall_status']} — {report['reason']}")
    print(f"report: {ctx.report_md}")
    print(f"json  : {ctx.report_json}")
    c = report["counts"]
    valid_audited = c["audit_PASS"] + c["audit_PARTIAL"] + c["audit_FAIL"]
    print(f"coverage: sources {c.get('source_images_present', 0)}/{report['expected_pages']}, "
          f"chapters {c['chapters_present']}/{report['expected_pages']}, "
          f"verified {c['verified_current']}/{report['expected_pages']}, "
          f"valid-audited {valid_audited}/{report['expected_pages']} "
          f"(PASS {c['audit_PASS']}, PARTIAL {c['audit_PARTIAL']}, FAIL {c['audit_FAIL']}), "
          f"ERROR {c['audit_ERROR']}, STALE {c['audit_STALE']}, "
          f"NOT_AUDITED {c['audit_NOT_AUDITED']}")
    return 0 if report["overall_status"] == "PASS" else 1


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def add_infra_args(sp: argparse.ArgumentParser) -> None:
    sp.add_argument("--book-dir", required=True, help="书目录，例如 数学分析八讲")
    sp.add_argument("--root", default=None, help="Typst --root（默认书目录的上一级，即整个 books 目录）")
    sp.add_argument("--font-path", default=None, help="--font-path（默认 <root>/fonts）")
    sp.add_argument("--provider", default=PROVIDER_DEFAULT, help=f"pi provider（默认 {PROVIDER_DEFAULT}）")
    sp.add_argument("--model", default=MODEL_DEFAULT, help=f"pi model（默认 {MODEL_DEFAULT}）")


def add_pages_args(sp: argparse.ArgumentParser, required: bool = True) -> None:
    sp.add_argument("--pages", required=required, default=None,
                    help="页码：all、1-181、1,3,5-7；必须显式指定以避免误触批量")


def make_ctx(args: argparse.Namespace) -> Context:
    book = Path(args.book_dir)
    root = Path(args.root) if args.root else book.resolve().parent
    font_path = Path(args.font_path) if args.font_path else root / "fonts"
    return Context(book=book, root=root, font_path=font_path,
                   provider=args.provider, model=args.model)


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        prog="transcribe_book.py",
        description="可恢复的整书 Typst 转写、单页验证、全书构建与视觉审核流水线（默认 r4/deepseek-v4.1-flash）",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=(
            "示例:\n"
            "  python3 tools/transcribe_book.py status --book-dir 数学分析八讲\n"
            "  python3 tools/transcribe_book.py transcribe --book-dir 数学分析八讲 --pages 1-5 --workers 2 --thinking high\n"
            "  python3 tools/transcribe_book.py verify --book-dir 数学分析八讲 --pages 1-5 --workers 4\n"
            "  python3 tools/transcribe_book.py build --book-dir 数学分析八讲\n"
            "  python3 tools/transcribe_book.py audit --book-dir 数学分析八讲 --pages 1-5 --thinking medium\n"
            "  python3 tools/transcribe_book.py report --book-dir 数学分析八讲\n"
        ),
    )
    p.add_argument("--version", action="version", version="transcribe_book.py 1.0")
    sub = p.add_subparsers(dest="command", required=True)

    s = sub.add_parser("status", help="只读检查工程/源图/主题/章节/验证/审核/构建状态")
    add_infra_args(s)
    s.add_argument("--json", action="store_true", help="输出 JSON")
    s.set_defaults(func=cmd_status)

    s = sub.add_parser("transcribe", help="逐页 pi 转写，并立即执行程序级单页验证")
    add_infra_args(s)
    add_pages_args(s)
    s.add_argument("--workers", type=int, default=4, help="并发页数（默认 4）")
    s.add_argument("--thinking", default="high", choices=["off", "minimal", "low", "medium", "high", "xhigh", "max"],
                   help="pi thinking（默认 high）")
    s.add_argument("--timeout", type=float, default=1800, help="单次 pi 超时秒数（默认 1800）")
    s.add_argument("--attempts", type=int, default=2, help="内容/验证失败后的模型修复轮数（默认 2）")
    s.add_argument("--max-retries", type=int, default=6, help="429 限流最大重试次数（默认 6）")
    s.add_argument("--backoff-base", type=float, default=10, help="429 backoff 初始秒数（默认 10）")
    s.add_argument("--backoff-max", type=float, default=300, help="429 backoff 最大秒数（默认 300）")
    s.add_argument("--force", action="store_true", help="忽略已通过缓存，强制重转")
    s.add_argument("--dry-run", action="store_true", help="只打印计划，不调用 pi")
    s.set_defaults(func=cmd_transcribe)

    s = sub.add_parser("verify", help="独立 wrapper 编译验证：1 内容页、尾部 pagebreak 空页、静态边界")
    add_infra_args(s)
    add_pages_args(s)
    s.add_argument("--workers", type=int, default=4, help="并发页数（默认 4）")
    s.add_argument("--timeout", type=float, default=180, help="单页编译超时秒数（默认 180）")
    s.add_argument("--force", action="store_true", help="忽略验证缓存")
    s.set_defaults(func=cmd_verify)

    s = sub.add_parser("build", help="章节齐全后生成 main.typ，编译全书并核验 181 页/marker/字体/文本")
    add_infra_args(s)
    s.add_argument("--expected-pages", type=int, default=None, help="期望页数（默认取 manifest，本工程为 181）")
    s.add_argument("--timeout", type=float, default=600, help="全书编译/查询超时秒数（默认 600）")
    s.add_argument("--min-text-page-ratio", type=float, default=0.95,
                   help="可提取文字页最低比例（默认 0.95）")
    s.add_argument("--allow-unverified", action="store_true",
                   help="诊断用：允许存在未通过当前验证的章节（默认拒绝构建最终书）")
    s.set_defaults(func=cmd_build)

    s = sub.add_parser("audit", help="同尺寸源/排版对照，pi --no-tools 视觉复核，严格 JSON")
    add_infra_args(s)
    s.add_argument("--pages", default=None, help="页码：all、1-181、1,3,5-7")
    s.add_argument("--sample-pct", type=float, default=None, help="均匀抽样百分比（如 5）")
    s.add_argument("--workers", type=int, default=4, help="并发审核数（默认 4）")
    s.add_argument("--thinking", default="medium", choices=["off", "minimal", "low", "medium", "high", "xhigh", "max"],
                   help="pi thinking（默认 medium）")
    s.add_argument("--timeout", type=float, default=600, help="单次审核超时秒数（默认 600）")
    s.add_argument("--max-retries", type=int, default=6, help="429 限流最大重试次数（默认 6）")
    s.add_argument("--backoff-base", type=float, default=10, help="429 backoff 初始秒数（默认 10）")
    s.add_argument("--backoff-max", type=float, default=300, help="429 backoff 最大秒数（默认 300）")
    s.add_argument("--force", action="store_true", help="忽略审核缓存，强制重审")
    s.add_argument("--require-native-details", action="store_true", help="每页必须有三组原生源/重排细节图，否则停止该页审核")
    s.add_argument("--dry-run", action="store_true", help="只打印计划，不调用 pi")
    s.set_defaults(func=cmd_audit)

    s = sub.add_parser("report", help="汇总全部源页（含未审核页）生成集中报告")
    add_infra_args(s)
    s.set_defaults(func=cmd_report)

    return p


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    ctx = make_ctx(args)
    if not ctx.book.exists():
        print(f"ERROR: 书目录不存在: {ctx.book}", file=sys.stderr)
        return 2
    return int(args.func(ctx, args))


if __name__ == "__main__":
    raise SystemExit(main())
