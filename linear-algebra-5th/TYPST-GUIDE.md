# 转写规范 (vision worker 必读, theme v2 语义契约)

目标: 视觉与扫描页一致。工程根 `/home/zhizhen/Code/books/typst/`。
主题 `theme.typ` (+`footers.typ` 页脚总表) 是全书一致版式的唯一真源。
每章文件首行须为 `#import "../theme.typ": *` (include 作用域隔离, 不写则语义函数不可见);
正文片段只含内容, main 统一 `#show: theme`。

## 工人只允许用的语义函数 (禁止手写数值)
- 页脚: 不写任何代码 (总表 `footers.typ` 按源页 metadata 自动挂载; 对齐/12pt/上移 27pt 由主题统一)。
- 行内黑体: `#hei[1.]` `#hei[证]` `#hei[定义]` (题号术语, 继承字号, 不许手写 font/size)。
- 习题条目: `#ti[11.][题面……]` (first 193 / cont 249 列位自动; 题面仅行内内容)。
- 子项/续行: `#sub[(1) $…$;]` `#sub[令 …]` `#sub[请画出…]` (249-250 续行列; pitch 55px)。
- 框体 (三选一, 不许手写 stroke/inset/above):
  `#dingliC[居中公式]` `#dingli[文本]` `#gainian[直角][解释]` `#yaodian[要点]`。
- 标题: `#barHead[■ 要点回顾]` `#sec[1.1 …]` `#secBracket[3.1 …]`
  `#subsec[两个向量的夹角]` `#chapterHead("assets/fig-p150-chapter.png")[标题]` (根相对路径)
  `#xiti[习题集 1.3]`。
- 公式 (一律 display, `$` 两侧留空格; 行内 `$…$` 只出现在正文行内):
  独立无编号 `#dmath[$ … $]` (体中心 745); 顶层标号 `#eqL[标号][$ … $]` (标号 198);
  题内标号 `#eqLd[标号][$ … $]` (标号 303); 编号 `#eqnum[$ … $](2)` (编号传裸整数);
  顶层编号标号 `#eqnumL[标号][$ … $](3)`。公式禁包 align/block/grid (破坏定位)。
- 插图: `#figure(…, caption: [图 1.3 …], numbering: none)` (caption 内不许手写 size; 尺寸 width 按扫描比例)。
- 脚注: `…#footnote[注文]` (字号间距主题统一)。

## 严禁 (违者打回)
- `#v(` `#h(` 数值留白/缩进 (页脚分隔 `#h(5em)` 亦不得出现——页脚不手写)。
- `#block(` `#box(` 手写边框/边距, `#grid` 手排公式编号, `#align(center)[ $…$ ]` 包独立公式。
- `#set page(` `#set page(footer` `move(dy` (封面 p001/p634 的 margin:0pt+footer:none 例外保留)。
- 逐页 `#show math.equation` (公式字体间距主题统一)。
- `#text(font:` 手写字体 (hei/sec 系除外)。
- `#par(justify` 等段落覆盖。

## fidelity
- 页码一律 PDF 页码 (印刷 = PDF − 19)。
- 每源页 `chapters/p<NNN>.typ`, 末尾 `#pagebreak()`; 单页 QA 标准: 编译得 2 页 (内容+空页)。
- 逐字转写 (引号“”, 省略号……, 乘号×); `mat()/vec()`, `x_1`, `C^(-1)`。
- 填空转义 `\_\_\_\_`; 数域 `$R^3$` 原样, 禁 `RR`; 多字母粗体加空格 `$bold(A B)$`。
- 不确定字符 `▪` + 文件末 `// UNCERTAIN:`。
- 只输出 Typst 代码, 不解释。

## 2026-10-16 复验补充
- 主文件与单页 QA 须在 include 前加入 `#metadata(源页码)<source-page>`；页脚按源页身份挂载。
- 行内大分数用 `#ifrac(1, 2)`，上下行盒空间由主题控制。其余行内公式仍用 `$…$`。
- 习题分组说明用 `#exerciseNote[习题 18—28 …]`；题号由 `ti` 统一使用粗体 Times，重点文字用 `hei`。
- 独立公式后接同题续段时用 `#dmath([$ … $], continuation: true)`；公式到续段的间距由主题统一。

## 前言与字体分工
- 普通西文优先 Times New Roman，中文回退 SimSun，避免宋体ASCII接管西文。
- 前言的节目说明各自使用 `#outlineEntry[第 10.4 节：线性规划——][说明]`；每项是独立段落，首行2em，续行回版心。
- 楷体文字用 `#kai[...]`；软件名称用 `#software[MATLAB]`（比例无衬线）。

## 前言矩阵示例
- 使用 `matrixExamples((标题1, 标题2, 标题3), (公式1, 公式2, 公式3))`。标题可含 `hei` 等语义，矩阵以普通 `$mat(...)$` 输入，主题转为显示样式并统一方括号、行列间距、组间距。
- 前言小标题使用 `prefaceHeading`，与正文节标题 `sec` 分别定义段距。

## 章首正文页（第20页试点）
- `#show: chapterProse` 使用章首正文与数学的字号分工；`chapterOpening` 输出装饰章号、散排标题及引文前留白。
- 行内列向量用 `inlineVector`，独立公式/框内列向量用 `columnVector`，内容仅传分量。
- 带标签的公式框用 `formulaBox[标签][$ 公式 $]`；独立向量公式用 `vectorEquation[$ 公式 $]`；一般页心公式用 `dmath([$ 公式 $], centered: true)`；无缩进续段用 `flushParagraph`。
