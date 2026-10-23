# 书籍排版与转写流水线工具集 (Tools)

本目录包含书籍 Typst 重排版流水线中的通用、标准化工具，支持任意书籍的处理、迁移与质检。

---

## 工具清单与用法说明

### 1. `tools/qa_audit.py` (自动化多模态盲审与排版验收)
通过 `pdftoppm` 并行渲染 150 DPI 原书与 Typst 对比图，并通过 `pi` CLI 调用多模态大模型 (`glm-5.3-flash` 或 `deepseek-v4.1-flash`) 进行高标准排版复验，自动生成 JSON 记录与 Markdown 验收报告。

```bash
# 模式 A: 均匀抽样 10% 页码
python3 tools/qa_audit.py \
    --source-pdf linear-algebra-5th/线性代数导论.pdf \
    --typst-pdf linear-algebra-5th/线性代数导论-typst.pdf \
    --sample-pct 10 \
    --output-dir linear-algebra-5th/qa-reports/sample-10pct

# 模式 B: 针对公式/矩阵密集页进行专项行高与防碰撞抽检 (top 10%)
python3 tools/qa_audit.py \
    --source-pdf linear-algebra-5th/线性代数导论.pdf \
    --typst-pdf linear-algebra-5th/线性代数导论-typst.pdf \
    --matrix-dense-pct 10 \
    --chapters-dir linear-algebra-5th/chapters \
    --output-dir linear-algebra-5th/qa-reports/matrix-audit

# 模式 C: 审核指定单页或页码段
python3 tools/qa_audit.py \
    --source-pdf linear-algebra-5th/线性代数导论.pdf \
    --typst-pdf linear-algebra-5th/线性代数导论-typst.pdf \
    --pages 21,36,40-50 \
    --output-dir linear-algebra-5th/qa-reports/quick-check
```

---

### 2. `tools/batch_migrate.py` (单页源码批量语义化迁移)
将未规范化或初次生成的 Typst 页面批量改写为严格遵循 `theme.typ` 语义宏定义的规范代码，自动备份到 `chapters_backup/`，自动修复常见 CJK 数学符号转义与语法错误，并单页编译试跑校验。

```bash
python3 tools/batch_migrate.py \
    --book-dir <book_dir> \
    --pages 1-100 \
    --model deepseek-v4.1-flash \
    --workers 5
```

---

### 3. `tools/render_compare.py` (快速并排渲染对比图)
用于针对特定问题页快速生成 150 DPI 的左右并排比对图（左原书，右 Typst），方便人工确认或复查：

```bash
python3 tools/render_compare.py \
    --source linear-algebra-5th/线性代数导论.pdf \
    --typst linear-algebra-5th/线性代数导论-typst.pdf \
    --pages 21 \
    --output-dir renders/
```

---

### 4. `tools/gen_main.py` (自动生成主入口 `main.typ`)
扫描书籍目录下的 `chapters/`，为每一页插入源页身份 `<source-page>` marker，驱动全局页脚反查系统，并自动生成干净整洁的 `main.typ`：

```bash
python3 tools/gen_main.py --book-dir <book_dir>
```

---

### 5. `tools/check_pages.py` (全书编译与单页溢出检查)
自动执行 `typst compile`，核对全书总页数是否 strictly 等于原书页数，并支持多线程检查每一单页是否出现页面溢出：

```bash
python3 tools/check_pages.py --book-dir linear-algebra-5th --expected 634
```

---

### 6. `tools/pxutil.py` (像素级排版量化工具)
基于 300 DPI 渲染与墨迹识别，量化测量正文字符高度、横线粗细/坐标、内边距，用于在新书排版建立 `theme.typ` 初值时获取精准版心数据。
