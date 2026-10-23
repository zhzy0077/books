# 《数学分析八讲》逐页转写接口

代表页已完成结构整合，当前继续全书转写、内容和视觉审核。

每源页保存 chapters/pNNN.typ，首行为 `#import "../theme.typ": *`，末尾为 `#pagebreak(weak: true)`。入口负责源页 metadata、统一主题与脚注逐页归零；章节只含语义内容。

字体、页幅、版心、页眉、字号、行段距、标题、公式及脚注间距统一在 theme.typ。页面源码使用语义函数，逐字转写原文、保留数学符号、加粗、脚注和插图图注。插图裁取仅包含真实图形；正文、公式、表格文字使用源码。

- 黑体 `#hei[...]`；楷体 `#kai[...]`；强调 `#em[...]`。
- 段首引理/标签 `#leadLabel[引理 2.]` 后接正文；标签与正文间隙由主题控制。
- 章首 `#chapterOpening("第一讲", "连 续 统", dropcap("为")[什么……])`。
- 节标题 `#sec[...]`；小节标题 `#subsec[...]`。
- 独立公式 `#dmath[$ ... $]`；编号公式 `#eqnum(6)[$ ... $]`。
- 公式后无缩进续段 `#cont[...]`；条目 `#item([1°], [正文])`。
- 脚注 `#footnote[...]`，原书逐源页重新从①开始，由入口归零。
- 插图 `#bookFigure("assets/pNNN/fig.png", 200pt, figureCaption(1))`，图形宽度按源图比例测量。函数中的路径相对 theme.typ，通常以 assets/ 开头。
- 并排图 `#figureRow(bookFigure(...), bookFigure(...))`；图注使用真实文字。

独立单页检查通过 tools/transcribe_book.py verify 执行。它检查移除末尾分页后真正正文是否恰好一页，并保留页眉、脚注及依赖指纹证据。核验按源页独立输出进行；全书或样本集存在溢出时，需用源页标记追踪实际输出页。

版权、再版序、目录和书目表的集中语义宏已整合；其余前言与内封继续按源图校准。

## 统一源页入口与前置页

单页或整书入口在 `#show: theme` 后调用 `#sourcePage(n, include "chapters/pNNN.typ")`。sourcePage先选源页类别的集中版式，再插入源页身份和清零脚注。章节自身仍只含import、语义内容和末尾分页。

版权页使用 `copyrightPage` / `cipData` / `publisherCredits` 组合；再版序使用 `prefaceTitle` / `prefaceBody` / `signature`；目录使用 `tocPage` / `tocEntry`。第3、4、8页源码提供用例。书目表使用 `bibliographyTable` 等集中宏，行数据按原图转写。

引理段落用 `#lemma([引理 2.], [正文])`。数字标签中的句点需转义，如 `#leadLabel[3\. 海涅—博雷尔引理.]`。

出版社信息中的姓名框用 `creditBox([...])`，并列字段用 `creditPair([...], [...])`；每页字号、边框和留白由主题宏控制。封面/封底保留完整设计图，普通正文和表格使用真实文字与数学源码。

编号段落使用字面句点，例如 `1\. 正文`，确保续行沿用正文版心。脚注内编号小条目用 `footnoteItem[...]`；图注用 `figureCaption(1)`。历史不属于号按原图写 `accent(in, macron)`，现代记号用 `in.not`。

## 数学形态与原文核对

- 分式先按原图区分斜线、行内小型堆叠和全字号堆叠。小型行内堆叠使用 `$frac(1, n)$`；`ifrac` 内部使用 `display`，适用于原图确为全字号堆叠的行内式。
- 导数的撇号须附着在函数上，例如 `$f'_1(x)$`；`$f_1'(x)$` 会把撇号附着到下标。高阶导数是否另有撇号也须逐符号核对原图。
- `cases` 的行分隔逗号属于语法。原图需要显示的句读用 `#sym.comma` 等真实符号写入，检查实际渲染。
- Typst 数学中的 `\,` 会产生逗号；细空白使用数学记号 `thin`。空白、运算符和标点各按原图处理。
- 不等号逐处按源图字形选择：斜底使用 `lt.eq.slant` / `gt.eq.slant`，水平底使用 `<=` / `>=`；两种形态可在同书不同位置并存。
- 原书错印按实际字形保留。疑字注明原生裁图位置和判断依据；标点按字形及占位核对，详见 `work/PUNCTUATION-POLICY.md`。

章节修复先保留源图正确的内容与数学形态。若当前共享主题使正确修复溢出，可在独立工作稿中交付实际页数和待校准项，继续由主题修复；交付全书的每个源页仍须恰好对应一页。

## 章节与共享样式的边界

章节中的图文分栏调用 `figureTextLayout`；插图调用 `sourceFigure` 或 `sourcePlateFigure`，宽度、分栏和内边距由主题按插图身份保存。密集证明、积分中值和收敛判别展示式分别调用主题中的语义宏。新增类别先在主题定义，章节保留文字、数学、图号和资产路径。移动样式时核验全书像素和源页映射，原图忠实性仍由 pi 独立审核。

## 重建与核验

在项目 `books` 根目录执行：

```bash
tools/.venv/bin/python tools/transcribe_book.py verify --book-dir 数学分析八讲 --pages all --workers 4
tools/.venv/bin/python tools/transcribe_book.py build --book-dir 数学分析八讲 --expected-pages 181
tools/.venv/bin/python tools/transcribe_book.py audit --book-dir 数学分析八讲 --pages all --workers 2 --provider r4 --model deepseek-v4.1-flash --thinking medium --timeout 1200 --require-native-details
tools/.venv/bin/python tools/transcribe_book.py report --book-dir 数学分析八讲
```

字体来自项目 `fonts`，构建固定创建时间戳。输出为 `数学分析八讲/数学分析八讲-typst.pdf`，核验与审查证据在 `数学分析八讲/work/pipeline/`。审查绑定实际源码、源图及构建结果；每次交付按当前版本核验。

## 脚本分式与密集证明

`scriptFrac` / `negScriptFrac` 用于源图中的堆叠指数，`limitFrac` / `negLimitFrac` 用于积分限系数。主题在字形单元内显式设定数学显示样式，防止外层上下标再次缩小指定字号；当前这两类数字的实际 PDF 字号均为 8pt。密集证明页分别调用 `scriptProofDmath` 与 `denseSpreadDmath`，公式留白由主题控制。

修改分式时同时核对实际 PDF 字号、原生扫描墨迹、横线长度和下标间隙；标称字号不能代替实际渲染测量。源页141—144的尺寸与继承样式证据保存在 `work/math-size-source-review/logs/`；全字号分式按内容自动确定横线宽度，校准证据保存在 `work/full-fraction-geometry/`。负号使用相对字号，并保留积分限与普通指数的缩放层级；源图样本宽度分别为24px与31px。组合稿的原生细节验收见 `work/combined-math-final-2/logs/`。


本轮原稿校核：第35页使用无下划线的行内 lim（下标仍在算子下方）；第58页该处使用斜等号，第103页方向导数 D 为正体。第124页图像与图注分别按原稿定位，使用 `sourceFigureAtNativeGeometry`；第179页落款使用 `closingSignature`。第143页半角括号前保留原稿间隙。第11、46、55、56页保留现有分式尺寸。原生审校、整本像素/文字等价证明与实际模型日志保存在 `work/` 对应记录中。
