#import "../theme.typ": *

// 第 625 页 (边码 444)

公式能体现它！)相比之下，"是证明对"这个性质鉴于它的原始递归性，就既可以用上面引入的这个公式表示，也可用这个公式体现。

#align(center)[#hei[代入导致第二个想法]]

通过上面的讨论，我们已经能够看清 TNT 是怎样对"是否 TNT 定理"这一概念进行"反省"的了。这是哥德尔证明第一部分的精华。我们现在打算着手讨论证明的第二个主要想法，方法是构想一个概念，使我们能把这种反省集中进一个单个句子。要做到这一点，我们先得看看当你用一个简单的方法从结构上修改某个公式时，该公式的哥德尔数会发生什么变化。其实，我们要考虑的只是这样一种特殊的修改：

#block(inset: (left: 2em))[把全部自由变元都用具体数字替换。]

下面的对照表中，左边一列给出这种运算的一些例子，而右边一列则显示其哥德尔数的对应变化#marginnote[444]

#v(6pt)
#grid(
  columns: (1fr, 1.6fr),
  column-gutter: 20pt,
  align(center)[#hei[公式]],
  align(center)[#hei[哥德尔数]],
  align(center)[a＝a],
  align(center)[262,111,262],
  align(center)[全部自由变元都\ 换成 2 的数字表示],
  align(center)[↓],
  align(center)[SS0＝SS0],
  align(center)[123,123,666,111,123,123,666],
)
#v(6pt)
#align(center)[$\*#h(3em)\*#h(3em)\*$]
#v(6pt)
#grid(
  columns: (1fr, 1.6fr),
  column-gutter: 20pt,
  align(center)[∼∃a:∃a′:a"＝(SSa·SSa′)],
  align(left)[223,333,262,636,333,262,163,636,262,163,163,111,362,123,123,262,236,123,123,262,163,323],
  align(center)[全部自由变元都\ 换成 4 的数字表示],
  align(center)[↓],
)
#v(6pt)

#pagebreak(weak: true)