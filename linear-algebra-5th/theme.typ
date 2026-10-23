// 线性代数导论 (第5版) — Typst theme v2 (语义化唯一真源)
// 原则: 全书一致的版式只在这里调; workers 只用语义函数, 禁止手写 #v/#h 留白、
// 手写 block(stroke/inset/above)、手写 footer move、逐页 show math.equation。
// 几何/字号初值来自扫描实测 (p34/p40/p150 @150dpi), 由 pi + r4/deepseek-v4.1-flash 复验。

// —— 页脚 (全书总表驱动, 工人零页脚代码) ——
// footers.typ 下标 = 源 PDF 页码; main 通过 <source-page> 标记维持归属。
// 对齐/字号/上移量唯一真源 (12pt 宋体, 上移 27pt; 源 p040 页脚字面高 8.2pt(数字)/11.5pt(CJK)); 封面 p001/p634 自带 margin:0pt+footer:none 例外保留。
#import "footers.typ": footer-data
#let styled-footer(pg) = {
  let f = footer-data.at(pg, default: (align: "none"))
  if f.align == "none" [ ] else {
    let b = f.body
    if f.align == "left" { align(left, move(dy: -27pt, text(size: 12pt, font: "SimSun")[#b])) }
    else if f.align == "center" { align(center, move(dy: -27pt, text(size: 12pt, font: "SimSun")[#b])) }
    else { align(right, move(dy: -27pt, text(size: 12pt, font: "SimSun")[#b])) }
  }
}

#let theme(doc) = {
  set page(
    width: 679.2pt,
    height: 1032.24pt,
    margin: (left: 63pt, right: 61pt, top: 66pt, bottom: 56pt),
    footer: context {
      // 按源页身份挂载页脚: 取本输出页之前最近的 <source-page> marker.
      // 溢出页无自身 marker, 归属最近前项, 与源书内容一致.
      let p = counter(page).get().first()
      let src = none
      for m in query(<source-page>) {
        if m.location().page() <= p { src = m.value }
      }
      if src == none { [] } else { styled-footer(src) }
    },
  )
  // 中文宋体, 西文 Times; 字号 15pt (扫描字面高 28-31px@150dpi 对应值, 已对照扫描复验)
  set text(
    font: ("Times New Roman", "SimSun", "Noto Serif CJK SC"),
    size: 15pt,
    lang: "zh",
    region: "cn",
    cjk-latin-spacing: none,
  )
  // 正文: 两端对齐, 行距 leading 13.5pt (贴合原书扫描节奏), 段距 12pt (与 leading 等效, 非叠加),
  // 首行缩进 2em 且 all:true (块后首段亦缩进, 与原书一致)
  set par(justify: true, leading: 13.5pt, spacing: 12pt, first-line-indent: (amount: 2em, all: true))
  // 公式西文 STIX Two Math, 中文回退宋体; 不设全局编号
  show math.equation: set text(font: ("STIX Two Math", "SimSun"))
  show math.equation: set block(above: 12pt, below: 12pt)
  set math.mat(delim: "[", row-gap: 6.5pt, column-gap: 12pt)
  set math.vec(delim: "[", gap: 6.5pt)
  set math.cases(gap: 0.55em)
  // 标题黑体, 取消首行缩进
  show heading: set text(font: ("SimHei", "Noto Sans CJK SC"))
  show heading: set par(first-line-indent: 0em)
  // 图注: 与扫描同字号 (13pt, 非正文 15pt); 图-注 9pt, 注-文 14pt
  show figure.caption: set text(font: ("SimSun", "Times New Roman"), size: 13pt)
  show figure.caption: set par(first-line-indent: 0em, leading: 8pt, spacing: 6pt)
  set figure(gap: 10pt)
  show figure: set block(below: 16pt)
  // 脚注: 扫描约为正文 0.79× → 12pt; 正文-脚注 22pt (glm p34)
  set footnote(numbering: "①")
  show pagebreak: it => {
    counter(footnote).update(0)
    it
  }
  show footnote.entry: set text(font: ("SimSun", "Times New Roman"), size: 12pt)
  show footnote.entry: set par(first-line-indent: 0em, leading: 6pt, spacing: 4pt)
  set footnote.entry(clearance: 14pt, gap: 6pt, separator: move(dy: -30pt, line(length: 30%, stroke: 0.5pt)))
  show footnote.entry: it => move(dy: -30pt)[#it]
  // 列表默认紧凑, 与正文行距协调
  set enum(numbering: "1.", tight: false)
  set list(tight: false)
  doc
}

// —— 行内语义 ——
// 黑体 (题号、术语、证/解/定义等): 继承字号, 只换字体
#let hei(..args) = text(font: ("SimHei", "Noto Sans CJK SC"), ..args)

// 行内大分数: 保留书版分数上下的行盒空间。
#let ifrac(numerator, denominator) = box(inset: (top: 7pt, bottom: 7pt))[$display(frac(#str(numerator), #str(denominator)))$]

// 前言中的节目说明与软件名称。西文优先可避免宋体接管ASCII。
#let kai(body) = text(font: ("Times New Roman", "KaiTi", "SimSun"), body)
#let software(body) = text(font: ("Nimbus Sans", "SimSun"), body)
#let outlineEntry(title, body) = par(first-line-indent: (amount: 2em, all: true))[#kai[#title]#body]

// —— 段落语义 ——
// 习题条目: 悬挂缩进, 续行自动缩进, 取代手写 #v(-12pt)#h(2em)
// 用法: #ti[11.][题面文字……]
// 习题条目: 扫描列位 first 193 / cont 249-250 (页边 131): first-line 2em + hanging 57pt.
#let ti(no, ..rest) = {
  let body = if rest.pos().len() > 0 { rest.pos().first() } else { [] }
  block(above: 12pt, below: 12pt, breakable: true)[
    #set par(first-line-indent: 2em, hanging-indent: 57pt)
    #text(font: ("Times New Roman",), weight: "bold")[#no]#h(0.5em)#body
  ]
}
// 子项/续行 (扫描列位 249-250, 如 (1)(2)(3)、"令 … 证明"): 与 ti 续行同列。
// 扫描 sub 间 pitch 54-55px = H(21) + above(16pt); below 须带 12pt (块后跟裸段落时 par-spacing
// 不接管, gap 只认 block below; below:0 会导致后随 ti 行重叠)。注意 block 不许带 spacing 参数。
// 用法: #sub[(1) $…$;]
#let sub(body) = block(above: 16pt, below: 12pt)[
  #set par(first-line-indent: 0em)
  #h(57pt)#body
]
// 习题分组说明段 (源 p040 "习题 18—28 是…" : 整段黑体, 上下各约 10pt 额外间距)
#let exerciseNote(body) = block(above: 22pt, below: 23pt)[
  #set par(first-line-indent: 0em)
  #h(2em)#hei[#body]
]
// 普通缩进续段 (扫描中缩进 2 字的续行): 取代 #h(2em) 开头 + 手写 #v
#let cont(body) = par(first-line-indent: 0em)[#h(2em)#body]

// —— 框体语义 (三类, 唯一真源) ——
// 注: 块内一律用作用域 set 取消首行缩进; 禁止把 grid/align/display 公式包进 #par
// 定理/定义框·居中公式型 (原 303 处 inset(x:4pt,y:10pt)+above:22pt)
#let dingliC(body) = block(
  stroke: 0.6pt, radius: 3pt, inset: (x: 8pt, y: 14pt), width: 100%, above: 18pt, below: 20pt,
)[#set par(first-line-indent: 0em); #align(center)[#body]]
// 定理/概念框·文本型
#let dingli(body) = block(
  stroke: 0.6pt, radius: 3pt, inset: (x: 8pt, y: 13pt), width: 100%, above: 16pt, below: 18pt,
)[#set par(first-line-indent: 0em); #body]
// 小概念框 (直角/行… 原 inset y:5pt + above:12pt 型)
#let gainian(name, ..rest) = {
  let body = if rest.pos().len() > 0 { rest.pos().first() } else { [] }
  block(
    stroke: 0.6pt, radius: 3pt, inset: (x: 8pt, y: 8pt), width: 100%, above: 12pt, below: 12pt,
  )[#set par(first-line-indent: 0em); #hei[#name]#h(2em)#body]
}
// 定理/概念框·左侧标签居中公式型 (如 p055 线性组合/系数矩阵/矩阵方程)
#let dingliL(tag, body) = block(
  stroke: 0.6pt, inset: (x: 10pt, y: 14pt), width: 100%, above: 16pt, below: 18pt,
)[
  #set par(first-line-indent: 0em)
  #grid(
    columns: (auto, 1fr),
    align: (left + horizon, center + horizon),
    text(font: ("SimHei", "Noto Sans CJK SC"), size: 14pt)[#tag],
    body,
  )
]
// 要点总结框 (0.8pt 细框型, 含枚举/矩阵例)
#let yaodian(body) = block(
  stroke: 0.8pt, radius: 4pt, inset: (x: 8pt, y: 13pt), width: 100%, above: 18pt, below: 20pt,
)[
  #set par(first-line-indent: 0em, spacing: 12pt, leading: 10.8pt)
  #set enum(spacing: 12pt)
  #body
]

// —— 标题语义 ——
// 栏目标题 (■ 要点回顾 / ■ 范例解析: 扫描实测右对齐)
#let barHead(title) = block(width: 100%, above: 20pt, below: 14pt)[
  #set par(first-line-indent: 0em)
  #align(right)[#text(font: "SimHei", size: 14pt)[#title]]
]
// 节标题 (1.1 向量与线性组合, 14pt 黑体)
// 源 p011 "线性代数的多样性" 实测: 标题上 24.7pt / 下 → 正文 33.8pt (300DPI)
#let sec(title) = block(above: 14pt, below: 10pt)[
  #set par(first-line-indent: 0em); #text(font: "SimHei", size: 14pt)[#title]
]
// 章内首节标题 (3.1 向量空间: "[" 44pt  decor 左置 + 20pt 散排标题居中 709;
// 括号左缘贴版心, 标题 tracking 5.6pt 展宽至 327px, 胶体全文本可测, 零调参)
#let secBracket(title) = context {
  let tw = measure(text(font: "SimHei", size: 16pt)[#title]).width
  let bw = measure(text(font: "Times New Roman", size: 30pt)[\[]).width
  let dx = 276.4pt - tw / 2 - bw
  block(above: 20pt, below: 18pt)[
    #set par(first-line-indent: 0em, justify: false)
    #text(font: "Times New Roman", size: 30pt)[\[]#h(dx)#text(font: "SimHei", size: 16pt)[#title]
  ]
}
// 小节黑体标题 (两个向量的夹角, 正文同字号黑体)
#let subsec(title) = block(above: 8pt, below: 8pt)[
  #set par(first-line-indent: 0em); #hei[#title]
]
// 章首页 (glm p150 定量: 菱形高 92pt, 章标题 25pt 黑体, 全宽细实线 0.8pt,
// 线在标题下 15pt, 线到节标题 72pt; 第/章 24pt 与菱形垂直居中)
// 用法: #chapterHead("../assets/fig-p150-chapter.png")[向量空间与子空间]
#let chapterHead(path, title, introduction: false) = {
  v(8pt)
  // 源 p150: 第/菱形/章 贴版心左缘 (x0≈68.6 vs 点线 x0 67), 非居中
  align(left)[#grid(
    columns: (auto, auto, auto),
    column-gutter: 18pt,
    align: center + horizon,
    text(font: ("SimHei",), size: 26pt)[第],
    if introduction {
      box(width: 93pt, height: 88pt)[#place(top + left, dy: 11pt, image(path, width: 92pt, height: 81pt, fit: "contain"))]
    } else { image(path, width: 93pt, height: 88pt, fit: "cover") },
    text(font: ("SimHei",), size: 26pt)[章],
  )]
  v(27pt)
  align(center, text(font: ("SimHei",), size: 25pt, tracking: if introduction { 8.5pt } else { 0pt })[#title])
  v(6pt)
  line(length: 100%, stroke: (thickness: 0.8pt, dash: "dotted"))
  if introduction {
    place(top + center, dy: 172.5pt, image("assets/chapter-accent.png", width: 125pt, height: 4pt))
  }
  v(if introduction { 47pt } else { 67pt })
}
#let chapterOpening(path, title) = chapterHead(path, title, introduction: true)

// —— 公式语义 (实测定稿) ——
// display 公式在顶层 auto 单元里取自然宽居中 (外层 block / 1fr 格 / align 直接包 display
// 都会拉伸左对齐, 均已证伪; 外层 block 还会破坏居中, 证伪)。故居中单元一律顶层, 无外层 block;
// 垂直间距由公式自带 show-block (above/below 12pt, 对称) 提供。
// 扫描几何: 标号行 = 左锚标号 + 约30px 间隙 + 公式自然宽左流 (非居中);
//   标号列位: 顶层 198px / 题内 303px。裸/编号公式体中心在 745px。
// 工人公式一律 display 写法 (`$` 两侧留空格); 行内 `$…$` 只出现在正文行内。
// 无编号独立公式 (体中心 745): #dmath[$ … $]
#let dmath(form, continuation: false, centered: false, tall: false) = {
  v(if centered { if tall { 10pt } else { 8pt } } else { 5pt })
  align(center)[#grid(
    columns: (auto, auto), column-gutter: if centered { 0pt } else { 36.5pt }, align: horizon, [], [#form],
  )]
  v(if continuation { 2pt } else if centered { if tall { 10pt } else { 8pt } } else { 5pt })
}
// 顶层标号行 (标号 198): #eqL[标号][$ … $]
#let eqL(label, form) = grid(
  columns: (auto, 1fr), column-gutter: 14pt, align: horizon,
  [#h(32pt)#label], [#form],
)
// 顶层带边框公式行
#let boxEq(label, form) = block(
  width: 100%, stroke: 0.6pt, radius: 2pt, inset: (x: 10pt, y: 6pt), above: 8pt, below: 8pt,
)[
  #grid(columns: (auto, 1fr), column-gutter: 14pt, align: horizon,
    [#h(18pt)#label], [#align(center)[#form]]
  )
]
// 题内标号行 (标号 303): #eqLd[标号][$ … $]
#let eqLd(label, form) = {
  v(8pt)
  grid(
    columns: (auto, 1fr), column-gutter: 14pt, align: horizon,
    [#h(82.4pt)#label], [#form],
  )
  v(2pt)
}
// 编号公式 (编号贴右缘, 公式居中): #eqnum($ … $, 2)
#let eqnum(form, n) = {
  grid(
    columns: (1fr, auto),
    align: (center + horizon, right + horizon),
    form,
    [(#n)],
  )
}
// 顶层编号标号行 (标号在左, 公式居中, 编号贴右缘): #eqnumL([标号], $ … $, 3)
#let eqnumL(label, form, n) = {
  grid(
    columns: (auto, 1fr, auto),
    column-gutter: 14pt,
    align: (left + horizon, center + horizon, right + horizon),
    label,
    form,
    [(#n)],
  )
}

// 前言小标题：原书第11页前后段距单独建模。
#let prefaceHeading(title) = block(above: 22pt, below: 37pt)[
  #set par(first-line-indent: 0em)
  #hei[#title]
]

// —— 矩阵例题语义 (源 p011 实测 @300DPI) ——
// 根因: 旧 p011 用裸 grid 三列 + inline 公式, 标题 cell 与公式 cell 相邻,
// display 公式的 above 块间距被行高吞掉 → 标题盖住矩阵首行。
// 定稿 (probe-display 实测):
//   - 矩阵用 math.equation(m.body, block: true) 渲染 display 公式 (body 提取数学体),
//     局部 show 掉 equation above/below, 避免额外胶; 正文 15pt 即得 21.6pt 行 pitch,
//     不放大字号。
//   - set math.mat(delim: "[", row-gap: 7.6pt, column-gap: <cg>): 方括号 + 行/列距匹配源。
//   - 列宽 auto (自然宽), 固定 column-gutter; 整组居中。标题行与矩阵行用 row-gutter
//     分隔 (源 caption→matrix 12pt)。
// worker 只写 #matrixExamples(("对称矩阵", "正交矩阵", "三角形矩阵"), (
//   $mat(...)$, $mat(...)$, $mat(...)$)) 或单列 #matrixRow。
#let matrixDiscussion(body) = par(first-line-indent: 0em)[#body]
#let matrixCaptionGap = 13.5pt
#let matrixRowGap = 7.6pt
#let matrixColGap = 17pt
#let _matrixEq(m) = {
  show math.equation: set block(above: 0pt, below: 0pt)
  math.equation(m.body, block: true)
}
#let matrixExamples(captions, mats) = {
  set math.mat(delim: "[", row-gap: matrixRowGap, column-gap: matrixColGap)
  block(above: 29.2pt, below: 23pt)[
    #set par(first-line-indent: 0em)
    #align(center)[#grid(
      columns: (1fr, auto, auto, auto, 1fr),
      column-gutter: 31pt,
      row-gutter: matrixCaptionGap,
      align: center,
      [], ..captions.map(c => text(size: 14pt)[#c]), [],
      [], ..mats.map(m => _matrixEq(m)), [],
    )]
  ]
}
// 单列矩阵例题 (标题 + 矩阵): 供非三列排版复用
#let matrixRow(caption, mat) = {
  set math.mat(delim: "[", row-gap: matrixRowGap, column-gap: matrixColGap)
  block(above: 14pt, below: 18pt)[
    #set par(first-line-indent: 0em)
    #align(center)[#grid(
      columns: (auto,),
      row-gutter: matrixCaptionGap,
      align: center,
      text(font: ("SimHei", "Noto Sans CJK SC"), size: 14pt)[#caption],
      _matrixEq(mat),
    )]
  ]
}

// —— 习题集栏 (保留旧签名兼容) ——
#let xiti(title, ..rest) = {
  v(10pt)
  align(center, text(font: ("SimHei",), size: 16pt, title))
  v(4pt)
  line(length: 100%)
  v(4pt)
  for b in rest.pos() { b }
  if "doc" in rest.named() { rest.named().at("doc") }
}

// 列向量在行内仍保持正常数学字号与书版的方括号。
#let columnVector(..entries) = {
  let cells = entries.pos().map(x => [#h(5.3pt)#(if type(x) == content { x } else { str(x) })#h(5.3pt)])
  h(5pt) + math.display(math.vec(delim: "[", gap: 7.6pt, ..cells)) + h(5pt)
}
#let formulaBox(label, form) = block(
  width: 100%, stroke: 0.6pt, inset: (x: 4pt, y: 21.8pt), above: 30.6pt, below: 20pt,
)[
  #set par(first-line-indent: 0em)
  #grid(columns: (0.72fr, auto, auto, 1.28fr), column-gutter: 42pt, align: horizon,
    [], [#hei[#label]], _matrixEq(form), [],
  )
]
#let flushParagraph(body) = par(first-line-indent: 0em)[#body]

#let inlineVector(..entries) = box(inset: (top: 15pt))[$#columnVector(..entries.pos())$]
#let vectorEquation(form) = dmath(form, centered: true, tall: true)

#let chapterProse(doc) = {
  set text(size: 14.2pt)
  set par(leading: 12pt)
  show math.equation: set text(size: 15pt)
  doc
}

#let indexPage(doc) = {
  set text(size: 13.5pt)
  set par(leading: 11pt, spacing: 7.5pt, first-line-indent: 0em)
  doc
}
