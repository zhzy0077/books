#import "../theme.typ": *

// 第 34 页 (目录 第 1 页)

#v(16pt)

#align(center)[#text(size: 20pt, font: ("SimHei", "Noto Sans CJK SC"))[目　　录]]

#v(14pt)

#let tocItem(title, pg, indent: 0em) = {
  block(width: 100%, spacing: 16pt)[
    #h(indent)#title#box(width: 1fr, repeat[#text(9pt)[ . ]])#h(4pt)#text(font: ("Times New Roman", "SimSun"))[#pg]
  ]
}

#tocItem[作者为中文版所写的前言][1]
#tocItem[译校者的话][15]
#tocItem[概览][20]
#tocItem[插图目录][30]
#tocItem[鸣谢][1]

#v(12pt)
#align(center)[#hei[上篇：集异璧 GEB]]
#v(6pt)

#tocItem[导言#h(1em)一首音乐—逻辑的奉献][5]
#tocItem(indent: 2em)[三部创意曲][38]
#tocItem[第一章#h(1em)WU 谜题][45]
#tocItem(indent: 2em)[二部创意曲][57]
#tocItem[第二章#h(1em)数学中的意义与形式][62]
#tocItem(indent: 2em)[无伴奏阿基里斯奏鸣曲][81]
#tocItem[第三章#h(1em)图形与衬底][86]
#tocItem(indent: 2em)[对位藏头诗][99]
#tocItem[第四章#h(1em)一致性、完全性与几何学][110]
#tocItem(indent: 2em)[和声小迷宫][137]
#tocItem[第五章#h(1em)递归结构和递归过程][167]
#tocItem(indent: 2em)[音程增值的卡农][199]
#tocItem[第六章#h(1em)意义位于何处][206]
#tocItem(indent: 2em)[半音阶幻想曲，及互格][231]
#tocItem[第七章#h(1em)命题演算][237]

#pagebreak(weak: true)
