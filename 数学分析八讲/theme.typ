// 《数学分析八讲》Typst 主题 (语义唯一真源)
// 版式初值由扫描页 2160×3123 pt 实测, 统一换算到 700×1012 pt (比例 0.32407).
// 正文宋体 15pt, 行距 8.2pt, 首行缩进 2em; 页眉左右按印刷页奇偶切换;
// 页脚无内容 (源书页码在页眉); 章首页不排页眉.

#let book-width = 700pt
#let book-height = 1012pt
#let body-font = ("Times New Roman", "FZShuSong-Z01S", "SimSun")
#let hei-font = ("FZHei-B01S", "SimHei", "Noto Sans CJK SC")
#let kai-font = ("KaiTi", "FangSong", "FZShuSong-Z01S")
#let math-font = ("STIX Two Math", "FZShuSong-Z01S")
// 印刷页码 = PDF 页码 − 8 (目录页前 8 页无印刷页码).
#let printed-offset = 8
#let chapter-opens = (9, 23, 39, 59, 81, 107, 135, 158, 177)

// —— 页眉数据: 源 PDF 页范围 → 章名 (与扫描页眉逐字一致) ——
// 源页实测: 讲次与章名之间是普通词距; 两字章名(极/限, 函/数, ...)内部
// 是一个全角字距, 明显宽于三字章名「连 续 统」内部的普通词距.
// 因此分隔用 ASCII 空格, 两字章名内部保留全角空格, 不再统一压成 ASCII.
#let running-head(p) = {
  if p >= 9 and p <= 22 { "第一讲 连 续 统" }
  else if p >= 23 and p <= 38 { "第二讲 极　限" }
  else if p >= 39 and p <= 58 { "第三讲 函　数" }
  else if p >= 59 and p <= 80 { "第四讲 级　数" }
  else if p >= 81 and p <= 106 { "第五讲 导　数" }
  else if p >= 107 and p <= 134 { "第六讲 积　分" }
  else if p >= 135 and p <= 157 { "第七讲 函数的级数展开" }
  else if p >= 158 and p <= 176 { "第八讲 微分方程" }
  else { "译 后 记" }
}

#let page-header(pg) = {
  let printed = if pg == 7 { 2 } else { pg - printed-offset }
  if (pg <= 8 and pg != 7) or pg >= 180 or chapter-opens.contains(pg) { return }
  let rh = running-head(pg)
  // 正文页统一左右页眉框: 源页横线中位 80..633pt, 奇偶页同宽;
  // 第7页为前言续页独立类别, 保留其 85..638pt 与专用字顶, 不并入正文参数.
  let head-left = if pg == 7 { 85pt } else { 80pt }
  let head-width = 553pt
  let head-top = if pg == 7 { 82.1pt } else { 75.9pt }
  let rule-top = if pg == 7 { 97.3pt } else { 91.4pt }
  // 源页页眉字面比旧值小约2.4%, 与正文字号15.6pt一致; 扫描字迹本就更重,
  // 故只收字号, 不额外减笔画.
  set text(font: ("Times New Roman", "KaiTi"), size: 15.6pt, stroke: 0.35pt, lang: "zh", region: "cn")
  set par(first-line-indent: 0pt)
  if calc.odd(printed) {
    place(top + left, dx: head-left, dy: head-top, block(width: head-width)[#grid(
      columns: (1fr, auto),
      align: (right + horizon, right + horizon),
      [#text(tracking: 5.6pt)[#rh]#h(17pt)],
      [#printed],
    )])
  } else {
    place(top + left, dx: head-left, dy: head-top, block(width: head-width)[#grid(
      columns: (auto, 1fr),
      column-gutter: 15pt,
      align: (left + horizon, left + horizon),
      [#printed],
      [数学分析八讲],
    )])
  }
  place(top + left, dx: head-left, dy: rule-top, line(length: head-width, stroke: 0.8pt))
}

// —— 页面与正文 ——
// 前置页脚注的左缩进/清距按源页可调; 默认值即正文页实测值.
#let footnote-indent = state("footnote-indent", 21.4pt)
#let footnote-gap-adjust = state("footnote-gap-adjust", 0pt)

#let theme(doc, footnote-gap: 10pt) = {
  set page(
    width: book-width,
    height: book-height,
    margin: (left: 80pt, right: 69pt, top: 120pt, bottom: 96pt),
    background: context {
      let p = counter(page).get().first()
      // 按 <source-page> 身份取当前输出页的源页号 (与旧工程同一机制).
      let src = none
      for m in query(<source-page>) {
        if m.location().page() <= p { src = m.value }
      }
      if src != none { page-header(src) }
    },
  )
  set text(
    font: body-font,
    size: 15.6pt,
    lang: "zh",
    region: "cn",
    cjk-latin-spacing: none,
  )
  set par(
    justify: true,
    leading: 9.41pt,
    spacing: 9.41pt,
    first-line-indent: (amount: 2em, all: true),
  )
  // 公式: 西文 STIX Two Math, 中文回退书宋; 上下留白与扫描一致.
  show math.equation: set text(font: math-font, size: 15.6pt)
  show math.equation: set block(above: 8pt, below: 8pt)
  set math.mat(delim: "(")
  set math.vec(delim: "(")
  // 脚注: 源页实测 12.2pt/行距 7.4pt; 圈号与脚注文字同号, 悬挂缩进 21.4pt/16.3pt;
  // 分隔线源页约 150pt. 正文引用仍用默认上标, entry 内数学随脚注字号缩放.
  set footnote(numbering: n => numbering("①", n))
  set footnote.entry(
    clearance: 4.5pt,
    gap: footnote-gap,
    separator: line(length: 150pt, stroke: 0.5pt),
  )
  show footnote.entry: it => context {
    let loc = it.note.location()
    let num = counter(footnote).at(loc).first()
    let indent = footnote-indent.at(loc)
    let gap-adjust = footnote-gap-adjust.at(loc)
    set text(font: body-font, size: 12.2pt)
    set par(first-line-indent: 0em, leading: 7.4pt, spacing: 0pt, justify: true)
    show math.equation: set text(font: math-font, size: 12.2pt)
    pad(left: indent, top: gap-adjust, grid(
      columns: (16.3pt, 1fr),
      column-gutter: 0pt,
      [#numbering("①", num)],
      [#it.note.body],
    ))
  }
  doc
}

// —— 行内语义 ——
#let hei(body) = text(font: hei-font, body)
#let kai(body) = text(font: kai-font, body)
#let em(body) = text(font: ("Times New Roman", "FZXiaoBiaoSong-B05S", "FZShuSong-Z01S"), body)
// p018 页专用轻强调: 源页强调是"轻中粗宋", 项目 XiaoBiaoSong-B05S 明显过重.
// 用正文书宋 FZShuSong-Z01S 加极细 text stroke 形成可检索的真实矢量轻中粗,
// 保留文字 (不转图、不以透明度淡化伪装字重), 字号/字宽/行距不变.
// 该 role 只由 chapters/p018.typ 调用, 共享 #em 及其余页的 em 用户保持原样.
#let emP018(body) = text(font: ("Times New Roman", "FZShuSong-Z01S"), stroke: 0.10pt, body)
// p128 首估计段: 源页含 inline S_T^((1)) 的行后行距比当前少约9px.
// 只在该两行段内把 leading 调为 7.21pt (9.41-2.2), 不动全局/其余页行距.
#let p128FirstEstimatePar(body) = {
  set par(leading: 7.21pt)
  body
}
// p128 第一独立式后的 -2.5pt: 源页第一式墨迹高度比当前矮 9px, 而这 9px
// 由更长的墨迹向上/下外扩吸收; source 第一式顶到下一段文字顶为 101px,
// 当前为 102px, 故保留该补偿以维持 source block pitch, 不得当作未测量留白回收.
#let p128TopFlowAdjust() = v(-2.5pt)
#let lim = math.op("lim", limits: true)
// 行内叠分数 (源书 1/n 用上下分式, 保留行盒高度).
#let ifrac(a, b) = box[$display(frac(#a, #b))$]
// p128 行内 epsilon/2: source 同字号对照中分母 2 约为普通正文 2 的 0.83
// (20px/24px), 即 15.6pt x 0.83 ≈ 13.0pt. 只允许这两个 glyph 用 13.0pt,
// 不能缩小外层 S_T0 < I + ... 的整条不等式. 用一个局部 box 包住该分式,
// box 内 show math.equation: set text(size: 13pt) 是真正的局部 show rule:
// 它同时把分式的 glyph、数学轴和行盒深度按 13.0pt 排, 外层 inequality 仍为
// 15.6pt. baseline: horizon 按 source 行内分式的数学轴对齐 (分母只在基线下
// 留小幅深度), 是局部 line-box 对齐, 不压缩分式几何/不改变透明度; 仍是真实
// 可选中 math 分式.
#let p128EpsilonHalf = box(baseline: horizon, {
  show math.equation: set text(font: math-font, size: 13pt)
  $display(frac(epsilon, 2))$
})
// 行内全字号堆叠分式: 源页 p141 区间、p143 行内 M L_n/I_n、p144 行内 K_n/I_n
// 的分式横线与正文同高. 章节只需调用 fullFrac, 不得在章内改字号或行盒.
// 全字号行内分式: 源页的横线与正文同高, 上下标随 display(frac) 自动留白,
// 不再固定 cap-height 而让分子下标侵入横线. 横线长度按源页实测规则自适应:
// 横线 ≈ max(分子宽, 分母宽) + 约 8px (源页 1/4≈27px, 3/4≈34px, K_n/I_n≈89px,
// M L_n/I_n≈144px, 1/∛n≈93px). 用小量水平 pad 补足 display(frac) 默认留白;
// 字号保持 15.6pt, 负号/括号等外部符号仍由数学模式排布.
#let fullFracCore(a, b, side-padding) = {
  let cell(x) = pad(x: side-padding, $#x$)
  let na = cell(a)
  let nb = cell(b)
  box[$display(frac(#na, #nb))$]
}
#let fullFrac(a, b) = fullFracCore(a, b, 0.6pt)
#let wideFrac(a, b) = fullFracCore(a, b, 0.6pt)
// 小型堆叠分式: 源页指数/积分限中的 1/3、2/3、3/4、1/2. native 实测数字墨迹
// 高约 19/24 px (4.6/5.8pt), 横线约 22 px (5.35pt), 整体约 13.6pt; 负号位于分式左侧.
// Typst 自带 frac 在上下标中纵向留白过大, 会撑高行盒; 这里按源页字面构造紧凑堆叠.
// 负指数用 negScriptFrac, 负号作为分式左侧的独立字符与横线同高; 这样不会把负号
// 错排到分子高度, 也避免在章内加入字号/位移数值.
#let scriptFracBody(a, b, size, bar, gap, signed) = {
  let cell(x) = text(
    font: math-font,
    size: size,
    top-edge: "cap-height",
    bottom-edge: "baseline",
  )[#math.display(x)]
  let frac = stack(
    dir: ttb,
    spacing: gap,
    align(center, cell(a)),
    line(length: bar, stroke: 0.65pt),
    align(center, cell(b)),
  )
  if signed {
    box(
      baseline: 50%,
      grid(
        columns: (auto, auto),
        column-gutter: 0.4pt,
        align: (right + horizon, center + horizon),
        text(font: math-font, size: 1.165em)[−],
        frac,
      ),
    )
  } else {
    box(baseline: 6.9pt, frac)
  }
}
#let scriptFrac(a, b) = scriptFracBody(a, b, 8.0pt, 5.4pt, 1.0pt, false)
#let negScriptFrac(a, b) = scriptFracBody(a, b, 8.0pt, 5.4pt, 1.0pt, true)
// 积分限中的系数分式 (源页 p142 的 ±1/2 n^{-1/3}): 源图墨迹实测与指数分式同一小分式级,
// 分式堆叠高约 52px、横线约 23px; 因此与 scriptFrac 共用 8pt 字号和 5.4pt 横线.
#let limitFrac(a, b) = scriptFracBody(a, b, 8.0pt, 5.4pt, 1.0pt, false)
#let negLimitFrac(a, b) = scriptFracBody(a, b, 8.0pt, 5.4pt, 1.0pt, true)
// 续段 (公式后接排, 不缩进)
#let cont(body) = par(first-line-indent: 0pt, body)

// —— 标题 ——
// 章首页: 第一讲/第二讲 + 章名 (章名内含字间空白), 居中; 下方楷体导语含大字段首字.
#let chapterOpening(no, title, intro) = {
  place(top + left, hide(heading(level: 1, outlined: true)[#no #title]))
  v(61.8pt)
  // 源页标题: 前三个字节距 28.1pt, 章名每字节距 53.4pt.
  let title-spaced = title.split(" ").join(h(1.14em))
  align(center)[#text(font: hei-font, size: 25pt, tracking: 3.1pt)[#no#h(1.11em)#title-spaced]]
  v(20.8pt)
  // 导语块左右各缩 2em; 源页导语三行, 字号与正文接近.
  align(center)[#block(width: 489pt)[
    #align(left)[
      #set par(first-line-indent: 0em, leading: 12.2pt, justify: true)
      #set text(font: kai-font, size: 15pt)
      #intro
    ]
  ]]
  v(0pt)
}
// 大字段首字: 34pt 字形置于 2em 字格, 只占首行, 后两行回到导语块左缘.
#let dropcap(ch, body) = [#box(width: 1.1em)[#move(dx: -2pt, text(font: kai-font, size: 36pt)[#ch])] #body]
// 章首正文块: 第七讲章首页源文正文实测为 15.3pt (同一行宽下换行位置与
// 源图逐行一致); 其他章首页正文仍为 15.6pt. 只在需要该真实类别的章首调用。
#let longLectureOpeningBody(body) = block(width: 100%)[
  #set text(size: 15.3pt)
  #body
]

// 节标题: 黑体, 源页 18pt 字面.
#let sec(title) = block(above: 12pt, below: 17.2pt, width: 100%)[
  #place(top + left, hide(heading(level: 2, outlined: true)[#title]))
  #set par(first-line-indent: 0em)
  #text(font: hei-font, size: 18pt)[#title]
]
// 小节标题 (与正文同字号黑体)
#let subsec(title) = block(above: 8pt, below: 5pt, width: 100%)[
  #set par(first-line-indent: 0em)
  #hei[#title]
]
// 密集推导页的页首节标题: 仍用 18pt 黑体节标题字面, 但源页标题位于页眉
// 之下更靠下的位置, 且标题底到正文顶只有约 11.9pt (普通节标题的中页
// 上下文间距更宽). 该类别按页首密集推导语义命名, 不按源页号分支.
#let denseProofSection(title) = block(above: 0pt, below: 12.6pt, width: 100%)[
  #set par(first-line-indent: 0em)
  #v(6.3pt)
  #text(font: hei-font, size: 18pt)[#title]
]

// —— 公式 ——
// 无编号独立公式, 页面居中.
#let dmath(body) = body
// p128 首式 f(x,y)⩾0: 源页墨迹上/下空隙为121/53px, 通用8/8pt只有27/21px.
// 仅此页按源相对空隙增加局部上下留白, 不改全局 dmath.
#let p128FirstDisplay(body) = {
  show math.equation: set block(above: 30.85pt, below: 15.78pt)
  body
}
// p128 的 sum 展示式: source 墨迹上下空隙为 50/47px, 且 sum ink 比当前高 5px.
// 最终 native 校准为 above 47px / below 42px (block pitch 259px, 均在 source
// 50/47 与 262 的 +-5/+-6px 内). above 用 47 而非 50, 是因为 pre_sum 墨底
// 在当前字体下比 source 低约 7px; 这样 sum 的绝对位置仍在 source 的字墨差内,
// 且不向第一式、四段式 f/(15) 或 footnotes 的任何已正确 gap 借空间.
// above/below 为局部 block 参数, 实际 native 含 par spacing 塌缩, 以测量为准.
#let p128SumDisplay(body) = {
  show math.equation: set block(above: 14.57pt, below: 9.2pt)
  body
}
// 推导步骤展示式: 源书独立推导行上方留整行空白, 下接正文时只留较小段距
// (第五讲 p101 实测上 24pt/下 16pt); 与 #dmath 的紧凑上下距区分.
#let derivationDisplay(body) = {
  show math.equation: set block(above: 24pt, below: 16pt)
  body
}
// p044 连续性定义展示式: 源页 native 2880×4164 实测式上空白比全局多约 16.6pt、
// 式下到同段续行多约 8.7pt; 仅此页调用, 不改全局 dmath.
#let continuityDefinitionDisplay(body) = {
  show math.equation: set block(above: 24.6pt, below: 16.7pt)
  body
}
// 多行对齐推导: 整块居中, 各行按 & 同一列对齐, 不按行分别居中.
// 源页 p101 三行等号同列 x=1021、第三行 + 右移 63 native px; 数学轴距
// 112/112.5 native px (约 27.2pt). 默认数学行距约 24.3pt, 用 par.leading 补足.
// 组上方按源页与上段空白校准, 下方接正文段距.
#let derivationAligned(body) = block(above: 30pt, below: 16pt, width: 100%)[
  #set par(leading: 12.85pt)
  #body
]
// 续行标签后的独立展示式: 标签自成前一文字行, 公式按整个版心居中,
// 不是与标签同基线/同一 grid. 源页 p101“因此”基线 1552、公式基线约 1618,
// 相差 66 native px (约 16pt); 高分式上端伸入标签行带, 故用负 above 校准.
#let continuationDisplay(label, equation) = block(above: 0pt, below: 0pt, width: 100%)[
  #par(first-line-indent: 0pt)[#label]
  #show math.equation: set block(above: -5.6pt, below: 0pt)
  #equation
]
// 证明结论展示式: 前有整行空白, 下接“由此得到/因而”等续句, 下方只留通常行距 (如 p58)。
#let proofDisplay(body) = {
  show math.equation: set block(above: 20pt, below: 12pt)
  body
}
// 密集推导页的展示式: 源页公式与正文之间只留约 7pt (p132 的积分块)。
#let tightDisplay(body) = {
  show math.equation: set block(above: 7pt, below: 7pt)
  body
}
// 行内展示级算子与展示块并存的密集页: 源页展示块上下约 4pt (p132 实测);
// 用于恢复大号行内 sum/integral 后, 避免展示块额外撑高整页。
#let denseDisplay(body) = {
  show math.equation: set block(above: 4pt, below: 4pt)
  body
}
// 密集证明页的展示式: 源页 p141 的三条积分式上下留白比默认 8pt 略紧,
// 且该页有全字号行内分式与插图. 仅由该语义类别调用, 默认 dmath 行为不变.
#let denseDmath(body) = block(above: 6.5pt, below: 6.5pt, width: 100%)[
  #show math.equation: set block(above: 0pt, below: 0pt)
  #align(center)[#body]
]
// 展示式密集、每条式子较短的证明页 (p143): 源页式子上下留白约 11pt,
// 比默认 8pt 宽; 仅由该语义类别调用.
#let spreadDmath(body) = block(above: 11pt, below: 11pt)[
  #show math.equation: set block(above: 0pt, below: 0pt)
  #body
]
// p142 的密集证明页: 放大脚本分式后, 用与扫描行距一致的行盒回收高度.
// 只作用于该类语义页, 不改变字号或字形.
#let scriptProofDmath(body) = block(above: 6pt, below: 6pt, width: 100%)[
  #show math.equation: set block(above: 0pt, below: 0pt)
  #align(center)[#body]
]
// p143 的短展示式密集页: 源页上下留白比 p143 默认 11pt 略紧.
#let denseSpreadDmath(body) = block(above: 8pt, below: 8pt)[
  #show math.equation: set block(above: 0pt, below: 0pt)
  #body
]
#let eqnum(num, body) = {
  set math.equation(numbering: n => "(" + str(num) + ")")
  body
}
// p128 编号(15): 源页墨迹上/下空隙为56/67px, 通用式只有26/24px.
// 只在此语义式上设置编号与上下留白, 不改全局 eqnum/dmath.
#let p128Eqnum15(num, body) = {
  set math.equation(numbering: n => "(" + str(num) + ")")
  show math.equation: set block(above: 15.29pt, below: 18.45pt)
  body
}
// 宽编号展示式: 源图长公式连同末尾条件几乎占满版心时, 编号区只占编号本身
// 加固定间隔; 默认编号保留的 3em 区会与公式右端重叠 (p170 的 (13)). 公式仍
// 为原字号/原形态, 只在网格第一列居中, 编号右对齐.
#let wideEqnum(num, body, gutter: 0.45em) = block(above: 8pt, below: 8pt, width: 100%)[
  #grid(
    columns: (1fr, auto),
    column-gutter: gutter,
    align: (center + horizon, right + horizon),
    math.equation(block: false, body),
    text(font: math-font)[(#num)],
  )
]

// —— 插图 ——
#let bookFigure(path, width, caption) = block(width: width)[
  #align(center)[#image(path, width: width)]
  // 源页图墨迹底线到图注字顶约 9.6pt; 原 v(10pt) 与段间距叠加后再减 2pt.
  #v(-2pt)
  #align(center)[#text(font: body-font, size: 13.5pt)[#caption]]
  // 源页图注到下一段字顶约 13.5pt, 补足段间距.
  #v(6pt)
]
#let figureRow(..figs) = align(center)[#grid(
  columns: (auto, auto),
  column-gutter: 31pt,
  align: center + top,
  ..figs,
)]

// 图注标识间隙集中管理。
#let figureCaption(num) = [图 #h(0.75em)#num]

// —— 真实语义图版 (坐标由源页 native 扫描实测) ——
// 图版行不是普通图片行: 各图的轴标随图, 图注是真实文字; 图与图注的
// 纵向白边、左右基线和图注顶线均由源页 bbox 决定. 章内只给图路径/图宽/
// 图号和图组类别, 不写任何定位数值. 该入口不改变上方 bookFigure/figureRow
// 的默认行为.
#let plateFigure(path, width, number) = (
  path: path,
  width: width,
  number: number,
)

// 源页 native (2880×4164) → 700×1012pt. 表内 x/y 是紧贴墨迹的 bbox 左上角;
// caption 的 y 是“图”字墨迹顶, 因此图底到图注顶的真实留白可由二者直接计算.
#let figure-plate-layouts = (
  "limit-behaviour": (
    origin: (x: 80pt, y: 120pt),
    caption-width: 100pt,
    // 印刷图注的墨迹顶比文字行盒顶低约 0.45pt, 仅校正字面光学位置.
    caption-lift: 0.45pt,
    rows: (
      // 图 1′/2′: 图底到图注顶 12.64/13.37pt; 两图注不在同一基线上.
      (
        cells: (
          (x: 165.0347pt, y: 115.9280pt, h: 137.8012pt),
          (x: 362.3958pt, y: 118.1153pt, h: 138.5303pt),
        ),
        captions: (
          (x: 244.2708pt, y: 266.1239pt),
          (x: 467.3958pt, y: 269.7695pt),
        ),
      ),
      // 图 3′/4′: 图底到图注顶 12.88/19.69pt.
      (
        cells: (
          (x: 162.1181pt, y: 307.1969pt, h: 113.9837pt),
          (x: 360.2083pt, y: 310.8425pt, h: 107.4217pt),
        ),
        captions: (
          (x: 241.1111pt, y: 433.8184pt),
          (x: 464.2361pt, y: 437.7070pt),
        ),
      ),
      // 图 5′: 单图居中于源页, 图底到图注顶 14.10pt.
      (
        cells: (
          (x: 244.2708pt, y: 462.9827pt, h: 122.4899pt),
        ),
        captions: (
          (x: 347.0833pt, y: 599.3256pt),
        ),
      ),
      // 图 6/7: 两图顶端差 74pt; 图底到图注顶 20.17/19.66pt.
      (
        cells: (
          (x: 156.2847pt, y: 708.2056pt, h: 161.6186pt),
          (x: 361.9097pt, y: 634.5658pt, h: 239.6330pt),
        ),
        captions: (
          (x: 232.8472pt, y: 889.7531pt),
          (x: 456.7014pt, y: 894.6138pt),
        ),
      ),
    ),
  ),
)

#let figurePlate(rows: (), kind: "limit-behaviour") = {
  let layout = figure-plate-layouts.at(kind)
  let ox = layout.origin.x
  let oy = layout.origin.y
  set par(first-line-indent: 0pt, leading: 0pt, spacing: 0pt)
  block(width: 100%, height: 0pt, above: 0pt, below: 0pt)[
    #for (ri, row) in rows.enumerate() {
      let row-layout = layout.rows.at(ri)
      for (ci, fig) in row.enumerate() {
        let cell = row-layout.cells.at(ci)
        place(top + left, dx: cell.x - ox, dy: cell.y - oy,
          image(fig.path, width: fig.width, height: cell.h))
        let cap = row-layout.captions.at(ci)
        place(top + left,
          dx: cap.x - layout.caption-width / 2 - ox,
          dy: cap.y - oy - layout.caption-lift,
          block(width: layout.caption-width, align(center)[
            #set text(font: body-font, size: 13.5pt)
            #figureCaption(fig.number)
          ]))
      }
    }
  ]
}

// —— 列表/条目 ——
#let item(head, body) = par(first-line-indent: 0.45em)[#h(1.1em)#head#h(0.5em)#body]

// 段首标签与正文间隙由主题统一。
#let leadLabel(body) = [#hei[#body]#h(1em)]

// 定理/证明段首: 标签后接正文的标准间隙.
#let theoremLead(body) = [#leadLabel[#em[定理]]#h(1em)#body]
#let proofLead(body) = [#leadLabel[#em[证明]]#h(1em)#body]
// 整段以强调字排的证明 (标签与正文的间隙仍在强调范围内).
#let emphasizedProof(body) = em[证明#h(1em)#body]
// 整段以黑体排的定理 (标签与正文同用黑体).
#let heiTheoremLead(body) = hei[定理#h(1em)#body]
// 带括号名称的引理段首: 名称前后的间隙由主题统一.
#let namedLemmaLead(name) = [#hei[引理]#h(0.4em)#[#name]#h(1em)]

// 引理正文采用楷体，标签保持黑体。
#let lemma(label, body) = par(first-line-indent: 2em)[#leadLabel[#label]#text(font: kai-font, size: 16pt, stroke: 0.25pt)[#body]]

// =====================================================================
// 前置页与书后附表: 统一入口 + 集中语义版式
// 源页像素 → 版心 pt: x * 700/1245, y * 1012/1800 (p180 的 x 用 700/1261).
// 章内只写语义内容; 所有几何/字号/行距/间距均在本节.
// =====================================================================

// —— 源页类别 → 页面几何/字体/段落 ——
// 正文页仍是 80/69/120/100, 15pt, leading 10.2; 前置页按扫描实测另设.
#let page-kind(n) = {
  if n == 1 or n == 181 { "cover" }
  else if n == 2 { "titlepage" }
  else if n == 3 { "copyright" }
  else if n == 4 { "preface" }
  else if n == 5 { "preface5" }
  else if n == 6 { "preface6" }
  else if n == 7 { "preface7" }
  else if n == 8 { "toc" }
  else if n == 180 { "bibliography" }
  else if n <= 8 { "frontmatter" }
  else if n == 44 { "body44" }
  else if n == 128 { "p128" }
  else { "body" }
}

#let page-profiles = (
  cover: (
    width: book-height * 2187 / 3123,
    margin: 0pt,
    text: (size: 15pt),
    par: (leading: 0pt, spacing: 0pt, first-line-indent: 0pt),
  ),
  titlepage: (
    width: book-height * 2187 / 3123,
    margin: 0pt,
    text: (size: 15pt),
    par: (leading: 0pt, spacing: 0pt, first-line-indent: 0pt),
  ),
  body: (
    margin: (left: 80pt, right: 69pt, top: 120pt, bottom: 96pt),
    text: (size: 15.6pt),
    par: (leading: 9.41pt, spacing: 9.41pt, first-line-indent: (amount: 2em, all: true)),
  ),
  // p044: 源页脚注分隔线与三条脚注整体比通用正文页高约 6pt; 仅此页底边距
  // 按 native 2880×4164 实测调整, 不改变其余 179 页的脚注锚点.
  body44: (
    margin: (left: 80pt, right: 69pt, top: 120pt, bottom: 102pt),
    text: (size: 15.6pt),
    par: (leading: 9.41pt, spacing: 9.41pt, first-line-indent: (amount: 2em, all: true)),
  ),
  // p128: 源页确有脚注分隔线和三行脚注; 该块整体比通用正文页高约83px.
  // source 第一式 top 475 / 当前 498 (+23px = +5.59pt), 故 top 120pt -> 114.4pt;
  // 底边距 116.2pt、左右 80/69pt、页眉/页脚/字号/行距保持原值.
  p128: (
    margin: (left: 80pt, right: 69pt, top: 114.4pt, bottom: 116.2pt),
    text: (size: 15.6pt),
    par: (leading: 9.41pt, spacing: 9.41pt, first-line-indent: (amount: 2em, all: true)),
  ),
  frontmatter: (
    margin: (left: 80pt, right: 69pt, top: 100pt, bottom: 90pt),
    text: (size: 15pt),
    par: (leading: 10.2pt, spacing: 10.2pt, first-line-indent: (amount: 2em, all: true)),
  ),
  // p003: 版权/CIP 页. 左缘 76.5pt 是 CIP 悬挂行的基准; 右边 75pt 使提要右缘
  // 落在 625pt. 上缘 74pt, 下缘 112pt 使出版块底边落在 900pt.
  copyright: (
    margin: (left: 76.5pt, right: 75pt, top: 74pt, bottom: 112pt),
    text: (size: 13.5pt),
    par: (leading: 10.85pt, spacing: 0pt, first-line-indent: 0pt),
  ),
  // p004: 再版序. 正文仍用正文页左右边界与 15pt 字; 标题顶部另加偏移.
  preface: (
    margin: (left: 80pt, right: 69pt, top: 120pt, bottom: 100pt),
    text: (size: 15pt),
    par: (leading: 9.85pt, spacing: 0pt, first-line-indent: (amount: 2em, all: true)),
  ),
  // p005: 第3版前言. 单行标题不展开字距; 版心按源页实测略右移.
  preface5: (
    margin: (left: 82.25pt, right: 64.05pt, top: 120pt, bottom: 100pt),
    text: (size: 15.6pt),
    par: (leading: 9.33pt, spacing: 9.33pt, first-line-indent: (amount: 2em, all: true)),
  ),
  // p006: 第1版前言. 版心左移, 段距比行距多约 1.7pt; 底边容纳两条脚注.
  preface6: (
    margin: (left: 77.75pt, right: 68.55pt, top: 120pt, bottom: 100pt),
    text: (size: 15.6pt),
    par: (leading: 9.33pt, spacing: 11.03pt, first-line-indent: (amount: 2em, all: true)),
  ),
  // p007: 第1版前言续页. 无标题; 正文左缘与页眉横线同起 (85pt), 首段不缩进.
  preface7: (
    margin: (left: 85pt, right: 61.3pt, top: 120pt, bottom: 100pt),
    text: (size: 15.6pt),
    par: (leading: 9.41pt, spacing: 9.41pt, first-line-indent: (amount: 2em, all: true)),
  ),
  // p008: 目录. 标题/条目位置按扫描页绝对坐标, 页边距置零后用 v() 定位.
  toc: (
    margin: (left: 84.5pt, right: 61.5pt, top: 0pt, bottom: 0pt),
    text: (size: 15pt),
    par: (leading: 9.85pt, spacing: 0pt, first-line-indent: 0pt),
  ),
  // p180: 书目表. 左右缘 46.1/53.4pt, 表头/行高见 bibliographyTable.
  bibliography: (
    width: 1012pt * 2187 / 3123,
    margin: (left: 46.65pt, right: 62.94pt, top: 0pt, bottom: 0pt),
    text: (size: 12.5pt),
    par: (leading: 5pt, spacing: 0pt, first-line-indent: 0pt),
  ),
)

// 页眉 background 与正文页完全同一机制; 前置页由 no-running-head 自动关闭.
#let source-header-background = context {
  let p = counter(page).get().first()
  let src = none
  for m in query(<source-page>) {
    if m.location().page() <= p { src = m.value }
  }
  if src != none { page-header(src) }
}

// 统一入口: 设置源页类别版式 → 源页 marker → 脚注清零 → 正文.
// 章内不再写 metadata 或 show: theme; main.typ 在 include 外调用.
#let sourcePage(n, body) = {
  let profile = page-profiles.at(page-kind(n))
  set page(
    width: profile.at("width", default: book-width),
    height: book-height,
    margin: profile.margin,
    background: source-header-background,
  )
  set text(font: body-font, lang: "zh", region: "cn", cjk-latin-spacing: none, ..profile.text)
  set par(justify: true, ..profile.par)
  place(top + left)[#metadata(n)<source-page>]
  counter(footnote).update(0)
  footnote-indent.update(if n == 6 { 26.4pt } else { 21.4pt })
  // Native footnote gap is document-scoped; entry inset supplies the source6 local adjustment.
  footnote-gap-adjust.update(if n == 6 { -2.25pt } else { 0pt })
  body
}

// —— p003 版权/CIP 页 ——
// CIP 记录行: indent 以 em 计; hang: true 表示该行回到左缘 (原图破折号/续行).
#let cipLine(body, indent: 1.1, hang: false) = (
  body: body,
  indent: if hang { 0pt } else { indent * 1em },
)

#let cipData(title: none, lines: ()) = block(above: 0pt, below: 0pt, width: 100%)[
  #set par(justify: false, first-line-indent: 0pt, spacing: 0pt, leading: 9.95pt)
  #set text(size: 14pt)
  #if title != none [
    #block(above: 0pt, below: 0pt)[
      #h(1.4em)
      #text(font: hei-font, size: 14.2pt, weight: "bold")[#title]
    ]
    #v(20.1pt)
  ]
  #for (i, line) in lines.enumerate() {
    if i > 0 { linebreak() }
    h(line.indent)
    line.body
  }
]

// 内容提要标题: 原图 15pt 黑体, 四字间约半字空.

#let abstractHeading(title) = block(above: 0pt, below: 0pt, width: 100%)[
  #set par(first-line-indent: 0pt)
  #align(center)[#text(font: hei-font, size: 15pt, tracking: 0.58em)[#title]]
]

#let abstractBody(paras) = block(above: 0pt, below: 0pt, width: 100%)[
  #set par(
    justify: true,
    leading: 9.15pt,
    spacing: 8.2pt,
    first-line-indent: (amount: 2em, all: true),
  )
  #set text(size: 13.5pt)
  #for (i, p) in paras.enumerate() {
    p
    if i < paras.len() - 1 { parbreak() }
  }
]

// 版权块内的语义小件: 外框、并列项、开本格式; 几何值留在这里.

#let creditBox(body) = box(stroke: 0.8pt, inset: (x: 2pt, y: 0.5pt))[#body]
#let creditPair(left, right) = [#left#h(0.9em)#right]

#let creditLine(label, value, diamond: false, label-width: 65pt) = block(
  inset: (left: 15pt),
  height: 18.5pt,
  above: 0pt,
  below: 0pt,
)[#grid(
  columns: (10pt, label-width, 1fr),
  column-gutter: 9pt,
  align: (left + horizon, left + horizon, left + horizon),
  if diamond { text(font: body-font)[◇] } else { [] },
  hei[#label],
  value,
)]

// 出版发行行: 宽标签 + 右侧地址.

#let creditWide(label, value) = block(
  inset: (left: 15pt),
  height: 18.5pt,
  above: 0pt,
  below: 0pt,
)[#grid(
  columns: (10pt, 166pt, 1fr),
  column-gutter: 9pt,
  align: (left + horizon, left + horizon, left + horizon),
  text(font: body-font)[◇],
  hei[#label],
  value,
)]

// 出版信息子行: 标签列 36pt, 值列 55pt, 次列 108pt, 日期列 1fr.

#let creditSub(label, value, second: none, date: none, diamond: false, value-width: 55pt) = block(
  inset: (left: 15pt),
  height: 18.5pt,
  above: 0pt,
  below: 0pt,
)[#if date != none {
  grid(
    columns: (19pt, 36pt, value-width, 163pt - value-width, 1fr),
    column-gutter: 0pt,
    align: (left + horizon, left + horizon, left + horizon, left + horizon, left + horizon),
    if diamond { text(font: body-font)[◇] } else { [] },
    if label != none { hei[#label] } else { [] },
    value,
    if second != none { second } else { [] },
    date,
  )
} else if second != none {
  grid(
    columns: (19pt, 36pt, 55pt, 1fr),
    column-gutter: 0pt,
    align: (left + horizon, left + horizon, left + horizon, left + horizon),
    if diamond { text(font: body-font)[◇] } else { [] },
    if label != none { hei[#label] } else { [] },
    value,
    second,
  )
} else {
  grid(
    columns: (19pt, 36pt, 1fr),
    column-gutter: 0pt,
    align: (left + horizon, left + horizon, left + horizon),
    if diamond { text(font: body-font)[◇] } else { [] },
    if label != none { hei[#label] } else { [] },
    value,
  )
}]

#let creditFull(value) = block(
  inset: (left: 15pt),
  height: 18.5pt,
  above: 0pt,
  below: 0pt,
)[#grid(
  columns: (19pt, 1fr),
  column-gutter: 0pt,
  align: (left + horizon, left + horizon),
  [],
  value,
)]

#let creditCentered(value) = block(above: 0pt, below: 0pt, width: 100%)[
  #set par(first-line-indent: 0pt)
  #align(center)[#value]
]

#let creditRule(before: 5pt, after: 5pt) = block(above: 0pt, below: 0pt, width: 100%)[
  #v(before)
  #line(length: 100%, stroke: 1.4pt)
  #v(after)
]

#let publisherCredits(
  series: none,
  title: none,
  rows: (),
  isbn: none,
  price: none,
  hotlines: (),
) = align(center)[
  #block(above: 0pt, below: 0pt, width: 433.5pt)[
  #set par(justify: false, first-line-indent: 0pt, spacing: 0pt, leading: 5pt)
  #set text(size: 13pt)
  #if series != none [
    #block(above: 0pt, below: 0pt, width: 100%)[
      // 丛书名的间隔号在源页紧排: 字面仍用 U+00B7, 只收紧其两侧字距.
      #show "·": it => [#h(-0.135em)#it#h(-0.135em)]
      #align(center)[#text(font: hei-font, size: 13.5pt)[#series]]
    ]
    #v(14pt)
  ]
  #if title != none [
    #block(above: 0pt, below: 0pt, width: 100%)[
      #align(center)[#text(font: hei-font, size: 15.5pt)[#title]]
    ]
    #v(5.2pt)
  ]
  #creditRule(before: 2.2pt)
  #v(5.0pt)
  #grid(
    columns: (1fr,),
    row-gutter: 0pt,
    ..rows,
  )
  #v(3.7pt)
  #creditCentered(isbn)
  #v(5pt)
  #creditRule(before: 0pt, after: 5.6pt)
  #creditCentered(price)
  #v(10pt)
  #if hotlines.len() > 0 [
    // 源页热线行为粗体宋体/粗体 Times, 与上下定价行区分.
    #set text(weight: "bold", stroke: 0.22pt)
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 8pt,
      align: (center + horizon, center + horizon),
      ..hotlines.slice(0, calc.min(2, hotlines.len())),
    )
  ]
  #for h in hotlines.slice(2) {
    v(14.5pt)
    creditCentered(h)
  }
  ]
]

// 版权页总装: CIP → 提要 → 出版信息 (下方以 1fr 压到版心底).

#let copyrightPage(cip: none, abstract-title: [内容提要], abstract-paras: (), credits: none) = {
  v(6.2pt)
  cip
  v(27.4pt)
  abstractHeading(abstract-title)
  v(17.2pt)
  abstractBody(abstract-paras)
  v(1fr)
  credits
}

// —— p004 再版序 ——
// 标题按字间空白展开: 章内只传 "再 版 序".

#let spreadTitle(title, size: 24pt, gap: 0.9em) = {
  let parts = title.split(" ").filter(p => p.len() > 0)
  text(font: hei-font, size: size)[#for (i, p) in parts.enumerate() {
    if i > 0 { h(gap) }
    p
  }]
}

#let prefaceTitle(title) = block(above: 0pt, below: 0pt, width: 100%)[
  #set par(first-line-indent: 0pt)
  #v(53.5pt)
  #align(center)[#spreadTitle(title, gap: 1.0em)]
]

#let prefaceBody(body) = block(above: 0pt, below: 0pt, width: 100%)[
  #set par(
    justify: true,
    leading: 9.85pt,
    spacing: 9.85pt,
    first-line-indent: (amount: 2em, all: true),
  )
  #v(29pt)
  #body
]

// 落款: 右缘比正文右边界内收 30pt; 两行行距 23.7pt.
// p179 末段末行字顶至“齐民友”字顶在源页为 2.48 个正文行距 (233 native px);
// 默认落款上距仅 0.96 行, 故续页落款用独立语义上距 42.8pt (= 8 + 34.8).

#let signature-gap = 8pt
#let closing-signature-gap = 42.8pt

#let signature(name, date, gap: signature-gap) = block(above: 0pt, below: 0pt, width: 100%)[
  #set par(first-line-indent: 0pt, spacing: 0pt, leading: 10.5pt)
  #v(gap)
  #align(right)[
    #block(width: 133pt, align(center)[
      #name\
      #date
    ])
  ]
]

#let closingSignature(name, date) = signature(name, date, gap: closing-signature-gap)


// —— p005/p006 第3版/第1版前言 ——
// 标题为单行黑体 (数字用 Times), 不展开字距; 源页两页标题基线分别比 p004 低 1.1pt/6.2pt.
#let prefaceEditionTitle(num, suffix, lift: 0pt) = block(above: 0pt, below: 0pt, width: 100%)[
  #set par(first-line-indent: 0pt)
  #v(53.5pt + lift)
  #align(center)[#text(font: hei-font, size: 24pt)[第#text(font: "Times New Roman", weight: "bold")[#num]#suffix]]
]

#let prefaceEditionBody(body, lift: 0pt, spacing: 9.33pt) = block(above: 0pt, below: 0pt, width: 100%)[
  #set text(size: 15.6pt)
  #set par(
    justify: true,
    leading: 9.33pt,
    spacing: spacing,
    first-line-indent: (amount: 2em, all: true),
  )
  #v(29pt + lift)
  #body
]

#let prefaceEditionTitle3(num, suffix) = prefaceEditionTitle(num, suffix, lift: 1.1pt)
#let prefaceEditionBody3(body) = prefaceEditionBody(body, lift: 0.6pt)
#let prefaceEditionTitle1(num, suffix) = prefaceEditionTitle(num, suffix, lift: 6.2pt)
#let prefaceEditionBody1(body) = prefaceEditionBody(body, lift: 2.2pt, spacing: 11.03pt)

// —— p007 续页: 无标题, 首段接上页 (不缩进) ——
#let prefaceContinuation(body) = block(above: 0pt, below: 0pt, width: 100%)[
  #set text(size: 15.6pt)
  #set par(
    justify: true,
    leading: 9.41pt,
    spacing: 9.41pt,
    first-line-indent: (amount: 2em, all: true),
  )
  #v(3.4pt)
  #body
]

// —— p008 目录 ——

#let tocEntry(no, title, page) = {
  // 源页点线: 圆点直径约 2.0pt, 点距约 7.3pt, 紧接标题且接近页码.
  let dots = block(height: 1em)[
    #place(
      top + left,
      dy: 1.03em,
      line(
        length: 100%,
        stroke: (paint: black, thickness: 2.0pt, cap: "round", dash: (0.1pt, 7.2pt)),
      ),
    )
  ]
  let title-dots = grid(
    columns: (auto, 1fr),
    column-gutter: 5.7pt,
    align: (left + horizon, left + horizon),
    title,
    dots,
  )
  block(height: 22.7pt, above: 0pt, below: 0pt)[
    // 源页目录条目为较重的宋体 (近似宋体加粗), 非黑体/小标宋细横.
    #set text(font: ("SimSun", "Times New Roman"), size: 15pt, stroke: 0.8pt)
    #if no != none {
      grid(
        columns: (45.5pt, 1fr, auto),
        column-gutter: (19.1pt, 7pt),
        align: (left + horizon, left + horizon, right + horizon),
        no,
        title-dots,
        page,
      )
    } else {
      // 无讲次的“译后记”与讲次栏左对齐, 跨前两栏排标题与点线.
      grid(
        columns: (45.5pt, 1fr, auto),
        column-gutter: (19.1pt, 7pt),
        align: (left + horizon, left + horizon, right + horizon),
        grid.cell(colspan: 2, title-dots),
        page,
      )
    }
  ]
}

#let tocPage(title, entries) = {
  // SimSun 的行盒上缘比原先行盒高约 5.6pt, 以偏移保持标题字面位置.
  v(184.1pt)
  block(above: 0pt, below: 0pt, width: 100%)[
    #set par(first-line-indent: 0pt)
    // 源页目录标题为宋体加粗, 非黑体.
    #align(center)[#text(font: "SimSun", stroke: 0.6pt)[
      #let parts = title.split(" ").filter(p => p.len() > 0)
      #text(size: 24pt)[#for (i, p) in parts.enumerate() {
        if i > 0 { h(2.0em) }
        p
      }]
    ]]
  ]
  v(32.5pt)
  block(above: 0pt, below: 0pt, width: 100%)[
    #set par(justify: false, first-line-indent: 0pt, spacing: 0pt, leading: 9.85pt)
    #for e in entries { e }
  ]
}

// —— p180 书目表: 列宽/行高/表头按扫描页实测 ——
// 表宽 600.5pt = 46.1 + 287.9 + 266.5; 行高约 19.3pt; 表头浅灰底.

#let bibliographyTable(rows, header: ([序号], [作者], [书名])) = block(
  above: 0pt,
  below: 0pt,
  width: 100%,
)[
  #set text(size: 11.8pt)
  #set par(leading: 2pt, spacing: 0pt, first-line-indent: 0pt)
  #table(
    columns: (65.75pt, 266.4pt, 266.95pt),
    stroke: (top: 1.1pt, bottom: 1.1pt, left: 1.1pt, right: 1.1pt, x: 0.55pt, y: 0.55pt),
    inset: (x: 4.5pt, y: 4.35pt),
    align: (center + horizon, left + horizon, left + horizon),
    table.header(
      repeat: true,
      table.cell(fill: luma(215), align: center + horizon)[
        #text(font: hei-font, weight: "bold", tracking: 1.15em)[#header.at(0)]
      ],
      table.cell(fill: luma(215), align: center + horizon)[
        #text(font: hei-font, weight: "bold", tracking: 0.8em)[#header.at(1)]
      ],
      table.cell(fill: luma(215), align: center + horizon)[
        #text(font: hei-font, weight: "bold", tracking: 0.8em)[#header.at(2)]
      ],
    ),
    ..rows.flatten(),
  )
]

#let bibliographyRow(no, author, title) = (
  table.cell[#no],
  table.cell[#author],
  table.cell[#text(size: 12.5pt)[#title]],
)

// —— p180 页头/丛书横幅. 坐标由源图 1261×1800 换算, 再减版心左缘 46.65pt ——
// 源图 x_abs * 708.69/1261, 故 dx = x_abs - 46.65.
#let catalogueMasthead() = {
  place(top + left, dx: 0.55pt, dy: 40.46pt,
    image("assets/p180/turing-logo.png", width: 94.4pt))
  place(top + left, dx: 118.14pt, dy: 59pt, block(width: 292pt, align(center)[
    #set par(leading: 0pt, spacing: 0pt, first-line-indent: 0pt)
    #text(font: hei-font, weight: "bold", size: 22pt, tracking: 0em)[
      精选大师名作#h(1.2em)打造专业品牌
    ]
  ]))
  place(top + left, dx: 432.25pt, dy: 48.33pt,
    image("assets/p180/publisher-mark.png", width: 27.0pt))
  place(top + left, dx: 461.35pt, dy: 54.0pt, block[
    #set par(leading: 6.5pt, spacing: 0pt, first-line-indent: 0pt)
    #text(font: hei-font, weight: "bold", size: 19.6pt, tracking: 0em)[人民邮电出版社]
    #linebreak()
    #h(14.7pt)
    #text(font: ("Times New Roman", "FZShuSong-Z01S"), weight: "bold",
      size: 8.4pt, tracking: 0.08em)[POSTS & TELECOM PRESS]
  ])
}

#let catalogueIntro(body) = place(top + left, dx: 3.95pt, dy: 108.7pt,
  block(width: 593.6pt)[
    #set text(size: 11.5pt)
    #set par(justify: true, leading: 7.0pt, spacing: 0pt, first-line-indent: 0pt)
    #h(2em)#body
  ])

#let catalogueSeriesBand(title) = {
  place(top + left, dx: 33.72pt, dy: 182.09pt,
    rect(width: 540.65pt, height: 25.29pt, stroke: 0.6pt, fill: luma(242)))
  place(top + left, dx: 53.5pt, dy: 181.1pt,
    block(width: 540.65pt, height: 25.29pt, align(center + horizon)[
      #set par(leading: 0pt, spacing: 0pt, first-line-indent: 0pt)
      #text(font: hei-font, weight: "bold", size: 27pt, tracking: 0em)[#title]
    ]))
  place(top + left, dx: 1.41pt, dy: 179.84pt,
    image("assets/p180/series-orn-left.png", width: 28.1pt))
  place(top + left, dx: 582.35pt, dy: 179.84pt,
    image("assets/p180/series-orn-right.png", width: 28.1pt))
}

// p180 单页入口: 章内只写语义内容.
#let cataloguePage(intro: [], title: [图灵数学·统计学丛书], rows: ()) = {
  catalogueMasthead()
  catalogueIntro(intro)
  catalogueSeriesBand(title)
  v(220.87pt)
  bibliographyTable(rows)
}

#let coverGraphic(path) = place(top + left, image(path, width: 100%, height: 100%, fit: "stretch"))

// 译者注脚注: 源书把“—— 译者注”排在脚注末行右缘 (p21), 不随之折行。
#let translatorFootnote(body, note: "译者注") = footnote[
  #block(width: 100%)[
    // 源页译者注与脚注正文同处末行; 脚注宋体比正文小, 此处按源页末行
    // 可用宽度微调 0.6pt, 使“—— 译者注”不被折到下一行。
    #set text(size: 11.6pt)
    #body
    #place(right + bottom, text(size: 11.4pt)[—— #note])
  ]
]

// =====================================================================
// p002 内封/扉页: 全部几何/字号/间距集中于此; 章内只传语义内容与图形路径.
// 源图 native 2916×4164 px ↔ 页面 708.69×1012 pt; 下列 tp() 为 native→pt.
// =====================================================================
#let tp-scale = 1012 / 4164
#let tp(n) = n * tp-scale * 1pt

#let titlePage(
  logo: none,
  graph: none,
  ornament: none,
  wordmark: none,
  series: [图灵数学·统计学丛书],
  series-number: [45],
  author-prefix: [苏],
  author-initials: ([A.], [Я.]),
  author-name: [辛钦],
  author-role: [著],
  translator-first: [王会林],
  translator-second: [齐民友],
  translator-role: [译],
  publisher: [人民邮电出版社],
  city: [北京],
) = {
  // 图形资产: 均按源 native bbox 的左上角与宽度放置, 保持原比例.
  place(top + left, dx: tp(283), dy: tp(264),
    image(logo, width: tp(231)))
  place(top + left, dx: tp(562), dy: tp(592),
    image(graph, width: tp(1777)))
  place(top + left, dx: tp(343), dy: tp(1838),
    image(ornament, width: tp(2341)))
  place(top + left, dx: tp(392), dy: tp(2314),
    image(wordmark, width: tp(2164)))

  // 丛书描述: 空心字由字体轮廓 + 白色填充形成; 数值 45 为斜体空心.
  place(top + left, dx: tp(554), dy: tp(283), block(above: 0pt, below: 0pt)[
    #set par(leading: 0pt, spacing: 0pt, first-line-indent: 0pt)
    #set text(font: body-font, size: 16.4pt, tracking: 0.678em,
      fill: white, stroke: 0.62pt + black)
    #series
  ])
  place(top + left, dx: tp(1614), dy: tp(272), block(above: 0pt, below: 0pt)[
    #set par(leading: 0pt, spacing: 0pt, first-line-indent: 0pt)
    #set text(font: "Times New Roman", style: "italic", size: 29pt,
      tracking: 0.31em, fill: white, stroke: 0.62pt + black)
    #series-number
  ])

  // 作者/译者署名: 各语义段按源页坐标放置, 字号/间距集中控制.
  // 方括号是版式符号, 与国籍标记同一行; 内空左宽右窄由 h() 定位.
  place(top + left, dx: tp(1447), dy: tp(3138), block(above: 0pt, below: 0pt)[
    #set par(leading: 0pt, spacing: 0pt, first-line-indent: 0pt)
    #set text(font: body-font)
    #text(size: 16.8pt)[［]#h(17pt)#text(size: 17.4pt)[#author-prefix]#h(-3.9pt)#text(size: 16.8pt)[］]
  ])
  place(top + left, dx: tp(1735), dy: tp(3147), block(above: 0pt, below: 0pt)[
    #set par(leading: 0pt, spacing: 0pt, first-line-indent: 0pt)
    #set text(font: body-font, size: 18pt)
    #for (i, part) in author-initials.enumerate() {
      if i > 0 { h(0.31em) }
      part
    }
    #h(0.35em)
  ])
  place(top + left, dx: tp(1924), dy: tp(3138), block(above: 0pt, below: 0pt)[
    #set par(leading: 0pt, spacing: 0pt, first-line-indent: 0pt)
    #set text(font: body-font, size: 17.4pt)
    #author-name
  ])
  place(top + left, dx: tp(2184), dy: tp(3140), block(above: 0pt, below: 0pt)[
    #set par(leading: 0pt, spacing: 0pt, first-line-indent: 0pt)
    #set text(font: body-font, size: 16.8pt)
    #author-role
  ])

  // 译者: 王会林外加源页细框; 其余两段独立定位.
  place(top + left, dx: tp(1572), dy: tp(3262), box(
    width: tp(249), height: tp(90), stroke: 0.6pt,
  ))
  place(top + left, dx: tp(1587), dy: tp(3268), block(above: 0pt, below: 0pt)[
    #set par(leading: 0pt, spacing: 0pt, first-line-indent: 0pt)
    #set text(font: body-font, size: 17.2pt)
    #translator-first
  ])
  place(top + left, dx: tp(1848), dy: tp(3270), block(above: 0pt, below: 0pt)[
    #set par(leading: 0pt, spacing: 0pt, first-line-indent: 0pt)
    #set text(font: body-font, size: 17.4pt, tracking: 0.04em)
    #translator-second
  ])
  place(top + left, dx: tp(2184), dy: tp(3274), block(above: 0pt, below: 0pt)[
    #set par(leading: 0pt, spacing: 0pt, first-line-indent: 0pt)
    #set text(font: body-font, size: 16.8pt)
    #translator-role
  ])

  // 出版社/出版地: 均以页中线为准.
  place(top + left, dx: tp(1022), dy: tp(3625), block(
    width: tp(870), above: 0pt, below: 0pt,
  )[
    #set par(leading: 0pt, spacing: 0pt, first-line-indent: 0pt)
    #set text(font: body-font, size: 19.8pt, tracking: 0.595em)
    #align(center)[#publisher]
  ])
  place(top + left, dx: tp(1250), dy: tp(3752), block(
    width: tp(416), above: 0pt, below: 0pt,
  )[
    #set par(leading: 0pt, spacing: 0pt, first-line-indent: 0pt)
    #set text(font: body-font, size: 17.8pt, tracking: 2.01em)
    #align(center)[#city]
  ])
}

// Numbered subitems inside a footnote share the source indentation.
#let footnoteItem(body) = [#h(1.1em)#body]

#let creditPrintRun(value, date: none) = creditSub([印数：], value, date: date, value-width: 64pt)


#let bodyParagraph(body) = par(first-line-indent: 2em, body)

#let textBesideFigure(body, figure) = grid(
  columns: (340pt, 1fr), column-gutter: 24pt,
  align: (left + top, left + top), body, figure,
)

#let labeledEquation(label, equation) = block(above: 8pt, below: 8pt)[#grid(
  columns: (auto, 1fr), align: (left + horizon, center + horizon), label, equation,
)]

#let derivationStep(body) = block(width: 100%, above: 6.5pt, below: 6.5pt, body)

#let afterwordOpening(author) = {
  v(58.3pt)
  align(center)[#text(font: body-font, size: 25pt)[译#h(0.88em)后#h(0.88em)记]]
  v(20.9pt)
  align(center)[#text(font: kai-font, size: 20.5pt)[#author]]
  v(21.2pt)
}

#let compactDisplay(body) = align(center)[#math.equation(block: false, $ display(body) $)]

#let translatorAttribution = [#h(0.55em)—— 译者注]

// 脚注中的译者署名: 另起一行右对齐; 公式署名时将公式置于两侧弹性空隙之间.
#let footnoteTranslatorNote(body, equation: none) = {
  linebreak()
  h(1fr)
  if equation != none {
    equation
    h(1fr)
  }
  body
}

#let fixedParen(body) = math.lr(size: 1em, [\(] + body + [\)])

#let bottomEqnum(num, body) = {
  set math.equation(number-align: bottom)
  eqnum(num, body)
}

#let conditionGap = h(0.4em)
#let casesConditionGap = h(0.6em)

// 脚注标记前的源图间隙: 由章节中的 #h(0.3em) 集中为语义间距 (p123).
#let footnoteMarkerGap = h(0.3em)

// 正文数字与后接汉字的源书间隙。
#let numberWordGap() = h(0.25em)

// Gap between Chinese book title and Roman volume labels.
#let bookVolumeGap() = h(0.4em)

// Proof steps, mean-value integrals and convergence displays.
#let proofStepDisplay(body) = block(width: 100%, above: 7pt, below: 7pt)[#body]
#let integralMeanDisplay(body) = align(center, block(above: 6.5pt, below: 6.5pt, body))
// p124 积分比较展示式: 源页区分“前行为长行/整行”与“前行为短续行”的
// 展示式上下跳距. 旧实现只设外层 3pt, 内层 math.equation 仍继承全局 8pt,
// 两者叠加且无法表达源页的 long/short display skip. 此处按语义类别集中
// 管控, 并把内层块距清零; 只由 p124 调用, 不改全局 equation 默认.
#let comparison-integral-skips = (
  long: (above: 11.5pt, below: 1.0pt),
  short: (above: -3.3pt, below: -4.8pt),
  numbered: (above: -2.1pt, below: 1.5pt),
  // 页末公式: 源墨迹本身已到 918.4pt, 超出本版心 916pt 下缘; 现稿数学
  // 字形又比扫描高约 5pt. 保持源页身份时只保留原流程高度, 不把这里
  // 的残余伪装成已恢复的源留白.
  end: (above: 0pt, below: 0pt, bleed: 11.2pt),
)
#let comparisonIntegralDisplay(body, kind: "long") = {
  let s = comparison-integral-skips.at(kind)
  if kind == "end" {
    // 页末展示式: 源页末行墨迹底到 F5 墨迹顶仍有 37px≈9pt 空档, 且源 F5
    // 墨迹底 918.43pt 已略越过通用 body frame 的 916pt. 这里用零高度
    // 页末墨迹延伸把公式按源锚点下移, 不占流程高度、不触发分页、不缩字。
    // 孤立124校准: place 起点在段落流程游标处, bleed=11.2pt 时 F5 墨迹顶
    // 到 3631px (源 3630px), 墨迹底 3802px/924.0pt, 仍在 1012pt 纸面内。
    block(width: 100%, height: 0pt, above: 0pt, below: 0pt)[
      #place(top + center, dy: s.bleed, block(width: 100%, align(center)[
        #show math.equation: set block(above: 0pt, below: 0pt)
        #body
      ]))
    ]
  } else {
    block(width: 100%, above: s.above, below: s.below)[
      #show math.equation: set block(above: 0pt, below: 0pt)
      #body
    ]
  }
}
#let convergenceIntegralDisplay(body) = block(width: 100%, above: 4pt, below: 4pt, body)
#let bottomNumberedEquation(num, body) = math.equation(
  block: true,
  numbering: n => "(" + str(num) + ")",
  number-align: right + bottom,
  body,
)

// Figure widths and text columns are centralized by figure identity.
#let source-figure-widths = (
  "assets/p024/fig-p024-1.png": 209pt,
  "assets/p024/fig-p024-2.png": 182pt,
  "assets/p025/fig3.png": 180pt,
  "assets/p025/fig4.png": 180pt,
  "assets/p025/fig5.png": 145pt,
  "assets/p036/fig8.png": 237pt,
  "assets/p036/fig9.png": 161pt,
  "assets/p038/fig10.png": 230.5pt,
  "assets/p039/fig11.png": 192pt,
  "assets/p040/fig12.png": 148pt,
  "assets/p055/fig13.png": 205.2pt,
  "assets/p055/fig14.png": 205.2pt,
  "assets/p055/fig15.png": 402pt,
  "assets/p072/fig16.png": 315pt,
  "assets/p074/fig17.png": 170pt,
  "assets/p074/fig18.png": 194pt,
  "assets/p083/fig19.png": 178pt,
  "assets/p083/fig20.png": 348pt,
  "assets/p086/fig21.png": 277pt,
  "assets/p094/fig22.png": 157pt,
  "assets/p102/fig23.png": 252.8pt,
  "assets/p104/fig24.png": 202.97pt,
  "assets/p111/fig25.png": 386.3pt,
  "assets/p113/fig26.png": 421.7pt,
  "assets/p115/fig27.png": 280pt,
  "assets/p122/fig28.png": 311pt,
  "assets/p124/fig29.png": 267pt,
  "assets/p128/fig30.png": 170.36pt,
  "assets/p130/fig31.png": 357.03pt,
  "assets/p131/fig32.png": 210.84pt,
  "assets/p141/fig33.png": 274.94pt,
  "assets/p165/fig-p165-1.png": 388pt,
)
#let sourceFigure(path, caption) = bookFigure(path, source-figure-widths.at(path), caption)
// p130 图 31 专用源 crop 偏移：源 crop bbox 对当前实测 bbox 差为 dx 1.81pt、
// dy 10.06pt；整块 figure+caption 同移，流程高度与图注字号不变，其他页不受影响。
#let source-figure-source-shifts = (
  "assets/p130/fig31.png": (dx: 1.81pt, dy: 10.06pt),
)
#let sourceFigureAtSourceShift(path, caption) = {
  let s = source-figure-source-shifts.at(path)
  block(width: 100%)[
    #align(center)[#move(dx: s.dx, dy: s.dy, sourceFigure(path, caption))]
  ]
}
// p124 图 29: 源扫描裁片 bbox 换算到输出坐标 (2160x3123 -> 700x1012):
//   x 193.9759..472.8514pt, y 121.44..333.96pt; width 278.8755pt, height 212.52pt.
// 源图注中心约 356.5pt (= 版心中心 355.5pt), 与图形裁片中心 333.4pt 原本不同,
// 因此图注独立居中, 不强制与图同心. 在全版心图版块内按源几何放置原图.
// 源页三处独立锚点 (同 2880x4164 画布): 图墨迹底 1367px, 图注墨迹顶 1441px,
// 正文首行墨迹顶 1570px. 旧实现把图注放在固定流程块底部, 图-注之间没有真实
// 空档, 且旧流程高度 228.65pt 保留了旧正文位置. 现按源分别控制图、图注、
// 首段位置: 图只补 1.46pt 的源配准, 图注用源锚点, 流程高度增加 23.09pt 使
// 首行落到源锚点; 不缩小字号, 不改图/文字. 图注字面比扫描小约 3px, 故控制
// 图注墨迹顶而不是墨迹底.
#let source-native-figure-plates = (
  "assets/p124/fig29.png": (
    left: 113.9759pt,        // 193.9759pt - 80pt 版心左缘
    top: 1.46pt,             // 图本身相对版心顶的源配准
    width: 278.8755pt,       // 源裁片宽度
    height: 212.52pt,        // 源裁片高度
    caption-top: 229.27pt,   // 源图注墨迹顶 350.21pt - 版心顶 120pt - 0.45pt 字面校正
    flow-height: 251.74pt,   // 228.65pt + 23.09pt, 首行落到源锚点
  ),
)
#let sourceFigureAtNativeGeometry(path, caption) = {
  let g = source-native-figure-plates.at(path)
  block(width: 100%, height: g.flow-height)[
    #place(top + left, dx: g.left, dy: g.top, image(path, width: g.width, height: g.height))
    #place(top + center, dy: g.caption-top,
      text(font: body-font, size: 13.5pt)[#caption])
  ]
}
#let figure-text-profiles = (
  "limit-crossings": (
  columns: (310pt, 1fr),
  column-gutter: 0pt,
  align: (left + top, left + top),
  ),
  "discontinuous-limit": (
  columns: (277pt, 1fr),
  column-gutter: 0pt,
  align: (left + top, left + top),
  ),
  "function-introduction": (
  columns: (334pt, 1fr),
  column-gutter: 0pt,
  align: (left + top, left + top),
  ),
  "nonintegrable-series": (
  columns: (1fr, 170pt),
  column-gutter: 12pt,
  align: (left + top, right + top),
  ),
  "integral-limit-series": (
  columns: (194pt, 1fr),
  column-gutter: 10pt,
  align: (left + top, left + top),
  ),
  "continuous-corner": (
  columns: (389pt, 1fr),
  column-gutter: 0pt,
  align: (left + top, right + bottom),
  ),
  "mean-value-diagram": (
  columns: (1fr, 157pt),
  column-gutter: 0pt,
  align: (left + horizon, right + horizon),
  ),
  "implicit-function": (
  columns: (210.4pt, 1fr),
  column-gutter: 34pt,
  align: (center + top, left + top),
  ),
  "double-integral-region": (
  columns: (252pt, 1fr),
  column-gutter: 22pt,
  align: (center + top, left + top),
  ),
)
#let figureTextLayout(kind, ..cells) = grid(..figure-text-profiles.at(kind), ..cells)
#let figure-insets = ("5": 35pt, "10": 20pt, "11": 2pt, "24": 7.2pt)
#let figureInset(number, body) = pad(left: figure-insets.at(str(number)), body)

#let source-plate-widths = (
  "assets/p026/fig1p.png": 179.8611pt,
  "assets/p026/fig2p.png": 179.3750pt,
  "assets/p026/fig3p.png": 179.1319pt,
  "assets/p026/fig4p.png": 182.0486pt,
  "assets/p026/fig5p.png": 210.7292pt,
  "assets/p026/fig6.png": 182.7778pt,
  "assets/p026/fig7.png": 170.8681pt,
)
#let sourcePlateFigure(path, label) = plateFigure(path, source-plate-widths.at(path), label)
#let coefficientMatrix = math.mat.with(delim: none, row-gap: 0.5em)

// Emphasized proof body with a blackface source label.
#let heiEmphasizedProof(body) = em[#hei[证明]#h(1em)#body]

// 源方向导数算子字形候选, 仅103页调用; 待原生字形裁决.
#let directionalDerivativeD = math.upright("D")
