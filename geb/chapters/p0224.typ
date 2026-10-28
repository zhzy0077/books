#import "../theme.typ": *

// 第 188 页

#par(first-line-indent: 0em)[者说两个结了婚的人那样纠缠在一起。这些实际的粒子称为“重正化了的”——一个丑陋但却有启发性的术语。结果是，一个粒子如果不涉及所有其它粒子就无法给出定义，而其它粒子的定义反过来又要靠最初那个粒子，等等。这样转来转去，构成了一个永不停止的循环。]

让我们更具体一点。我们只限于讨论两种粒子：电子和光子。不过还要附带上电子的反粒子——正电子。（光子的反粒子是它自己。）首先，设想一下在一个乏味的世界中裸电子要从 A 点传到 B 点，就象芝诺在我那《三部创意曲》里所做的那样。一个物理学家会

#grid(
  columns: (48%, 44%),
  column-gutter: 1.5em,
  align: (center + horizon, top),
  [#bookFigure("assets/p0224/fig1.png", width: 96%, caption: figureCaption("35-①", ""))],
  [
    #par(first-line-indent: 2em)[画出这样一个图：]
    #par(first-line-indent: 2em)[有一个数学表达式与这条线及其端点相对应，而且很容]
  ]
)

#par(first-line-indent: 0em)[易写下来。物理学家可以用这个表达式来理解裸电子在这个轨道上的行为。]

现在让我们“打开”电磁相互作用的开关，让电子和光子相互作用。虽然光子没出现，还是有一些很有价值的结果，即使是在这么简单的轨道上。特别是，我们的电子现在变得能够放射、吸收“虚

#grid(
  columns: (48%, 44%),
  column-gutter: 1.5em,
  align: (center + horizon, top),
  [
    #bookFigure("assets/p0224/fig2.png", width: 96%, caption: figureCaption("35-②", ""))
    #v(14pt)
    #bookFigure("assets/p0224/fig3.png", width: 96%, caption: figureCaption("35-③", ""))
  ],
  [
    #par(first-line-indent: 2em)[光子”——出现之后还未被看到就消失掉的光子。我们这样表示这个过程：]
    #par(first-line-indent: 2em)[当我们的电子传播时，它可以一个接一个地放射和再吸收光子，它甚至可以嵌套这一过程，如下所示：]
    #par(first-line-indent: 2em)[与这些图案——“费因曼图案”]
  ]
)

#par(first-line-indent: 0em)[——相对应的数学表达式很容易写下来，但它们比裸电子的表达式难计算一些。真正使事情复杂化的是光子（实的或虚的）能在瞬]

#pagebreak(weak: true)
