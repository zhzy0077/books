# 数学分析八讲 Typst 工程

目标是将原始扫描本的 181 页逐页重排为可编辑、可检索的 Typst 富文本，保持原书版式与内容。

## 当前工作记录

- 交付与验收依据：`work/REQUIREMENTS.md`
- 三份参考会话提取：`work/reference-*.txt`
- 源 PDF 指纹、页尺寸与文字层检查：`work/source-manifest.json`
- 源图与联系表：`work/source/`
- 八讲源页索引：`work/lecture-index.json`
- 执行日志与模型会话：`work/theme-worker.log`、`work/pipeline-worker.log`、`work/pi-*-sessions/`

主题、复杂样页、全书转写与逐页视觉审查依次实施；验收状态以 `work/pipeline/REPORT.md` 中的全书覆盖和审查结果为准。

当前主工程包含 `main.typ`、181 个 `chapters/pNNN.typ` 和 `数学分析八讲-typst.pdf`，已同步经过组件校对的整合稿。实际编译为 181 页，源页身份与输出页一一对应；同步记录及旧稿备份见 `work/root-integration/revision15-promotion.json`。

第128页页首与公式留白、行内 ε/2 相对字号、正文及脚注位置已按原稿校准；本轮使用当前整合PDF的新 pi+r4/deepseek-v4.1-flash 原生7图复核第128页，其余180页经全部7幅送审图片逐字节相同及PDF文字完全相同的证明沿用原真实判断。每页保留实际会话、评级、问题和证据类型，记录见 `work/root-integration/revision15-promotion.json`；本轮源证、量测及修复闭环见 `work/root-integration/revision15-source-finding-resolution.json`。第18页轻强调、图30/图31位置及第124页图文/页末公式间距修复继续保持。原始8项交付要求已通过独立审计，记录见 `work/revision15-completion-audit/completion-assessment.json`。

## 环境与执行

在 books 根目录运行：

```sh
uv venv tools/.venv
uv pip install --python tools/.venv/bin/python -r tools/requirements-book-pipeline.txt
tools/.venv/bin/python 数学分析八讲/work/prepare_source.py
tools/.venv/bin/python tools/transcribe_book.py status --book-dir 数学分析八讲
```

排版依赖 `typst`、`pdftoppm`、`pdfinfo`、`pdftotext`、`pdffonts`，模型调用使用 `pi` 与 `r4/deepseek-v4.1-flash`。字体位于 `fonts/`，主题和逐页页面通过 `--root` 指向 books 根目录构建。

## 重建与审核

在 books 根目录运行以下命令，完成单页验证、整书编译、页数及源页映射检查：

```sh
tools/.venv/bin/python tools/transcribe_book.py verify --book-dir 数学分析八讲 --root . --font-path fonts --pages all --workers 4 --timeout 180
tools/.venv/bin/python tools/transcribe_book.py build --book-dir 数学分析八讲 --root . --font-path fonts --timeout 600
```

构建产物为 `数学分析八讲/数学分析八讲-typst.pdf`，构建证据在 `work/pipeline/build/build-report.json`。流水线以 `main.typ` 为入口，使用项目字体、禁用系统字体，并将创建时间固定为 0。

逐页视觉审核使用原扫描和重排页的整页对照及三组原分辨率细节图：

```sh
tools/.venv/bin/python tools/transcribe_book.py audit --book-dir 数学分析八讲 --root . --font-path fonts --pages all --workers 4 --provider r4 --model deepseek-v4.1-flash --thinking medium --timeout 1800 --require-native-details
```

逐页记录在 `work/pipeline/audit/pNNN/review.json`，汇总在 `work/pipeline/REPORT.md`。审核记录绑定源码、主题、字体、PDF 和细节图指纹；修改后重新构建并审核。修复候选稿及核对报告保存在 `work/audit-repairs/`。

批量命令与可恢复机制见 `work/PIPELINE.md`。
