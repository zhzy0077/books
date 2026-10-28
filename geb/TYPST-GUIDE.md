# 《哥德尔，埃舍尔和巴赫—集异璧之大成》逐页转写与排版规范手册 (TYPST-GUIDE.md)

本项目致力于全书 1,089 个源页 1:1 忠实重排，确保 Typst 编译输出页数严格等于 1,089 页。

---

## 1. 核心架构与单页源码规则

1. **单页独立文件**：
   - 每页源码存放在 `chapters/pNNNN.typ`（例如 `p0001.typ` 至 `p1089.typ`）。
   - 文件开头统一为：`#import "../theme.typ": *`。
   - 文件末尾统一为：`#pagebreak(weak: true)`。
2. **严禁页级硬编码样式**：
   - 严禁在单页中书写 `#set page(...)`、`#set text(...)`、`#set par(...)` 等全局样式覆盖。
   - 严禁硬编码过量的 `#v(...)` 或 `#h(...)` 强行凑版，必须使用 `theme.typ` 提供的语义函数。
   - 单页编译通过 `tools/transcribe_geb.py verify` 检测，确保内容无溢出且恰好为 1 内容页。

---

## 2. 常用语义宏说明

### 2.1 字体与强调
- `#hei[...]`：黑体强调（术语、重点、引理标号）。
- `#kai[...]`：楷体（对话角色、引用、前言）。
- `#fangsong[...]`：仿宋。
- `#em[...]`：西文斜体 / 中文着重标记。
- `#code[...]`：等宽符号代码。

### 2.2 对话体篇章 (Dialogues)
阿基里斯与乌龟的对话是本书精髓：
- `#dialogueItem(speaker, speech)`：角色对话段落，例如 `#dialogueItem[乌龟][你说得太对了，阿基里斯！]`。
- `#speaker[阿基里斯：]`：行内角色前缀，自动使用黑体/楷体加粗，保持标准间距。
- `#sceneDirection[...]`：舞台指示 / 对话场景说明（如 `[（阿基里斯拿出一张羊皮纸，若有所思）]`），居中或楷体缩进显示。

### 2.3 形式系统与逻辑公理 (Formal Systems)
- `#formalSystem(title, content)`：带边框的形式系统定义盒（如 MIU 谜题、TNT 规则）。
- `#derivation(steps)`：公理推导步骤表格或多行对齐列表。
- `#ruleBox[规则 1：...][如果存在一个以 I 结尾的串，可以在末尾加上 U。]`：推导规则标准盒。

### 2.4 数学公式
- `#dmath[$ ... $]`：居中展示数学公式，段前后留白统一受控。
- `#eqnum(n)[$ ... $]`：带右侧编号的标准独立公式。
- `#ifrac(a, b)`：行内全字号堆叠分式。

### 2.5 插图与图注
- `#bookFigure("assets/pNNNN/fig.png", width, caption)`：标准单图插入。
- `#figureRow(fig1, fig2)`：并排双图。
- `#figureCaption(no, title)`：标准图注排印。

---

## 3. 校验与交付流水线

```bash
# 验证单页或指定范围
python3 tools/transcribe_geb.py verify --pages 1-20

# 全书构建与 1,089 页校验
python3 tools/transcribe_geb.py build

# 视觉对照盲审
python3 tools/transcribe_geb.py audit --pages 1-10
```
