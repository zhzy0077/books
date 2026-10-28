#import "../theme.typ": *

// 第 35 页 (目录 第 2 页)

#let tocItem(title, pg, indent: 0em) = {
  block(width: 100%, spacing: 4.8pt)[
    #h(indent)#title#box(width: 1fr, repeat[#text(9pt)[ . ]])#h(4pt)#text(font: ("Times New Roman", "SimSun"))[#pg]
  ]
}

#tocItem(indent: 2em)[螃蟹卡农][262]
#tocItem[第八章#h(1em)印符数论][267]
#tocItem(indent: 2em)[一首无的奉献][303]
#tocItem[第九章#h(1em)无门与哥德尔][323]

#v(12pt)
#align(center)[#hei[下篇：异集璧 EGB]]
#v(6pt)

#tocItem[前奏曲][358]
#tocItem[第十章#h(1em)描述的层次和计算机系统][370]
#tocItem(indent: 2em)[…蚂蚁赋格][403]
#tocItem[第十一章#h(1em)大脑和思维][441]
#tocItem(indent: 2em)[英、法、德、中组曲][477]
#tocItem[第十二章#h(1em)心智和思维][484]
#tocItem(indent: 2em)[咏叹调及其种种变奏][516]
#tocItem[第十三章#h(1em)BlooP 和 FlooP 和 GlooP][538]
#tocItem(indent: 2em)[G 弦上的咏叹调][572]
#tocItem[第十四章#h(1em)论 TNT 及有关系统中形式上不可判定的命题][582]
#tocItem(indent: 2em)[生日大合唱哇哇哇乌阿乌阿乌阿][610]
#tocItem[第十五章#h(1em)跳出系统][616]
#tocItem(indent: 2em)[一位烟民富于启发性的思想][635]
#tocItem[第十六章#h(1em)自指和自复制][656]
#tocItem(indent: 2em)[的确该赞美螃蟹][721]
#tocItem[第十七章#h(1em)丘奇、图灵、塔斯基及别的人][735]
#tocItem(indent: 2em)[施德鲁，人设计的玩具][769]
#tocItem[第十八章#h(1em)人工智能：回顾][779]
#tocItem(indent: 2em)[对实][834]
#tocItem[第十九章#h(1em)人工智能：展望][846]

#pagebreak(weak: true)
