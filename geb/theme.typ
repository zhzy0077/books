// 《哥德尔，埃舍尔和巴赫—集异璧之大成》Typst 主题 (geb/theme.typ)
// 经由 CodeBuddy (glm-5.3-flash) 墨迹实测校准：
// 1. 无页顶页眉 (header: none)，无横线
// 2. 页码位于页脚外侧 (偶数页居左，奇数页居右)

#let theme(doc) = {
  set page(
    width: 595.28pt,
    height: 841.89pt,
    margin: (inside: 84pt, outside: 80pt, top: 68pt, bottom: 64pt),
    header: none,
    footer: context {
      let p = counter(page).get().first()
      let src = none
      for m in query(<source-page>) {
        if m.location().page() <= p { src = m.value }
      }
      // 前置未编页码页 (封面、扉页、空白页) 不显示页码
      if src != none and src >= 41 {
        let book-page = src - 36
        if calc.odd(src) {
          align(right)[#text(size: 11pt, font: "Times New Roman")[#book-page]]
        } else {
          align(left)[#text(size: 11pt, font: "Times New Roman")[#book-page]]
        }
      }
    },
  )

  // 中文字体优先方正书宋/宋体，西文字体 Times New Roman
  set text(
    font: ("Times New Roman", "FZShuSong-Z01S", "SimSun", "Noto Serif CJK SC"),
    size: 14.5pt,
    lang: "zh",
    region: "cn",
    cjk-latin-spacing: none,
  )

  // 正文：两端对齐，行距 15pt，段距 0pt，段首缩进严格 2em (包含块后第一段)
  set par(
    justify: true,
    leading: 11pt, spacing: 11pt,
    first-line-indent: (amount: 2em, all: true),
  )

  // 数学公式 STIX Two Math
  show math.equation: set text(font: ("STIX Two Math", "SimSun"))
  show math.equation: set block(above: 10pt, below: 10pt)
  set math.mat(delim: "[", row-gap: 5pt, column-gap: 8pt)
  set math.vec(delim: "[", gap: 5pt)

  // 标题样式
  show heading: set text(font: ("SimHei", "Noto Sans CJK SC"))
  show heading: set par(first-line-indent: 0em)

  // 脚注
  set footnote(numbering: "①")
  show pagebreak: it => {
    counter(footnote).update(0)
    it
  }
  show footnote.entry: set text(font: ("SimSun", "Times New Roman"), size: 9pt)
  show footnote.entry: set par(first-line-indent: 0em, leading: 11pt, spacing: 11pt)

  // 图注
  show figure.caption: set text(font: ("SimSun", "Times New Roman"), size: 9.5pt)
  show figure.caption: set par(first-line-indent: 0em, leading: 11pt, spacing: 11pt)
  set figure(gap: 8pt)

  doc
}

// —— 基础文字样式 ——
#let hei(..args) = {
  let pos = args.pos()
  let named = args.named()
  let size = named.at("size", default: none)
  let body = if pos.len() == 1 { pos.at(0) }
             else if pos.len() > 1 {
               if type(pos.at(0)) == length { size = pos.at(0); pos.at(1) }
               else { pos.at(0) }
             } else { none }
  if size != none {
    text(font: ("SimHei", "Noto Sans CJK SC"), size: size, body)
  } else {
    text(font: ("SimHei", "Noto Sans CJK SC"), body)
  }
}
#let kai(body) = text(font: ("KaiTi", "SimSun"), body)
#let fangsong(body) = text(font: ("FangSong", "SimSun"), body)
#let em(body) = text(font: ("Times New Roman", "KaiTi"), style: "italic", body)
#let code(body) = text(font: ("Noto Sans Mono", "SimSun"), size: 9.5pt, body)

// —— 对话体专用宏 (GEB 标志性版式) ——
#let speaker(name) = {
  text(font: ("SimSun", "Times New Roman"))[#name：]
}

#let dialogueItem(..args) = {
  let pos = args.pos()
  block(above: 8pt, below: 8pt, breakable: true)[
    #set par(first-line-indent: 0em, hanging-indent: 2.2em, leading: 13pt)
    #if pos.len() == 1 [
      #text(font: ("Times New Roman", "FZShuSong-Z01S", "SimSun", "Noto Serif CJK SC"))[#pos.at(0)]
    ] else if pos.len() >= 2 [
      #let s = pos.at(0)
      #let c = pos.at(1)
      #let sep = if s == [] or s == "" { "" } else { "：" }
      #text(font: ("Times New Roman", "FZShuSong-Z01S", "SimSun", "Noto Serif CJK SC"))[#s#sep#c]
    ]
  ]
}

#let sceneDirection(body) = block(above: 7pt, below: 7pt, width: 100%)[
  #align(center)[#text(font: ("KaiTi", "SimSun"), size: 9.5pt)[#body]]
]

// —— 形式系统与规则盒 (MIU, TNT 等) ——
#let formalSystem(title, content) = block(
  stroke: 0.8pt + black,
  inset: (x: 12pt, y: 10pt),
  radius: 0pt,
  width: 100%,
  above: 12pt,
  below: 12pt,
  breakable: false,
)[
  #if title != none [
    #align(center)[#hei[#title]]
    #v(4pt)
  ]
  #content
]

#let ruleBox(no, desc) = block(
  stroke: (left: 2pt + black),
  inset: (left: 8pt, y: 4pt),
  above: 8pt,
  below: 8pt,
)[
  #hei[#no]#h(0.5em)#desc
]

// —— 公式与数学 ——
#let dmath(eq) = block(above: 10pt, below: 10pt)[
  #align(center)[#eq]
]

#let eqnum(no, eq) = block(above: 10pt, below: 10pt, width: 100%)[
  #grid(
    columns: (1fr, auto),
    align: (center, horizon + right),
    [#eq],
    [#text(font: ("Times New Roman",), size: 10pt)[(#no)]]
  )
]

#let ifrac(n, d) = box(inset: (top: 4pt, bottom: 4pt))[$display(frac(#str(n), #str(d)))$]

// —— 插图与图版 ——
#let bookFigure(..args) = {
  let named = args.named()
  let pos = args.pos()
  let raw-path = if "path" in named { named.path } else if "image" in named { named.image } else if pos.len() > 0 { pos.at(0) } else { "" }
  let remaining-pos = if "path" in named or "image" in named { pos } else { if pos.len() > 1 { pos.slice(1) } else { () } }
  let cap = named.at("caption", default: if remaining-pos.len() > 0 { remaining-pos.at(0) } else { none })
  let w = named.at("width", default: 85%)
  let clean-path = if type(raw-path) == str {
    let m = raw-path.find(regex("p\d{4}/fig\d?\.png"))
    if m != none { "assets/" + m }
    else if raw-path.starts-with("../assets/") { raw-path.slice(3) }
    else if raw-path.starts-with("/assets/") { raw-path.slice(1) }
    else { raw-path }
  } else { raw-path }
  block(above: 12pt, below: 12pt)[
    #align(center)[
      #image(clean-path, width: w)
      #if cap != none [
        #v(6pt)
        #cap
      ]
    ]
  ]
}

// 边注/英文版原页码标注
#let marginnote(..args) = []
#let marginNote(..args) = []
#let margin-note(..args) = []
#let sideNote(..args) = []
#let pagebull(..args) = []
#let headingOfPage(body) = align(center)[#heading(level: 2)[#text(size: 16.5pt)[#body]]]
#let chapterTitle(body) = align(center)[#heading(level: 2)[#text(size: 16.5pt)[#body]]]
#let bookChapter(body) = align(center)[#heading(level: 2)[#text(size: 16.5pt)[#body]]]
#let chapCenter(body) = align(center)[#heading(level: 2)[#text(size: 16.5pt)[#body]]]

#let figureCaption(no, text-body) = [
  #text(font: ("SimHei", "SimSun"), size: 9.5pt)[图 #no]#h(0.8em)#text(font: ("SimSun", "Times New Roman"), size: 9.5pt)[#text-body]
]
