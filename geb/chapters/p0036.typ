#import "../theme.typ": *

// 第 36 页 (目录 第 3 页)

#let tocItem(title, pg, indent: 0em) = {
  block(width: 100%, spacing: 4.8pt)[
    #h(indent)#title#box(width: 1fr, repeat[#text(9pt)[ . ]])#h(4pt)#text(font: ("Times New Roman", "SimSun"))[#pg]
  ]
}

#tocItem(indent: 2em)[树懒卡农][900]
#tocItem[第二十章#h(1em)怪圈,或缠结的层次结构][904]
#tocItem(indent: 2em)[六部无插入赋格][951]

#v(26pt)

#tocItem[注释][983]
#tocItem[文献目录][990]
#tocItem[索引][1014]

#pagebreak(weak: true)
