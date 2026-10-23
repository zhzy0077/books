#import "../theme.typ": *
#show: chapterProse

#chapterOpening("assets/fig-p020-chapter.png")[向量引论]

线性代数的核心内容包括了两种运算——它们都与向量有关：将两个向量 $bold(v), bold(w)$ 相加得 $bold(v) + bold(w)$，或者将它们分别与数 $c$ 和 $d$ 相乘得 $c bold(v)$ 和 $d bold(w)$。将这两种运算混合（即将 $c bold(v)$ 与 $d bold(w)$ 相加）可得#hei[线性组合] $c bold(v) + d bold(w)$。设 $bold(v) = inlineVector(1,1), bold(w) = inlineVector(2,3)$，则

#formulaBox[线性组合][$ c bold(v) + d bold(w) = c columnVector(1,1) + d columnVector(2,3) = columnVector(c + 2d, c + 3d). $]

例如，当 $c = d = 1$ 时，上述 $bold(v)$ 和 $bold(w)$ 的线性组合为

#vectorEquation[$ bold(v) + bold(w) = columnVector(1,1) + columnVector(2,3) = columnVector(3,4). $]

线性组合是本课程中非常重要的概念！在后续学习中，有时要找到一个特定的线性组合，例如，选择 $c = 2$ 和 $d = 1$ 使得 $c bold(v) + d bold(w) = (4,5)$；有时要考虑 $bold(v)$ 和 $bold(w)$ 的全体线性组合（利用 $c$ 和 $d$ 的所有可能取值来构造）。

$c bold(v)$ 表示的向量都在一条直线上。当向量 $bold(w)$ 不在这条直线上时，线性组合 $c bold(v) + d bold(w)$ #hei[生成了整个二维平面]。同理，基于四维空间中四个向量 $bold(u), bold(v), bold(w), bold(z)$ 的全体线性组合

#dmath([$ c bold(u) + d bold(v) + e bold(w) + f bold(z) $], centered: true)

#flushParagraph[很可能生成这个四维空间——但这个结论并非总是成立的，向量及其线性组合也可能在同一条直线上或者同一个平面中。]

本章讲解了本书建立所有数学原理的核心模式：从方便图形化表示的二维和三维向量展开分析，然后再引入更高的维度。线性代数最引人入胜的特点就是可以自然地将结论推广到 $n$ 维空间，比如即使不能绘制出 10 维向量的几何图形，借助低维向量的研究方法来讨论其性质也是完全可行的。

本书的目标之一是研究低维向量空间的性质，并将它们推广到 $n$ 维向量空间。本章首先学习第 1.1 节和第 1.2 节的向量运算，然后学习第 1.3 节的三个基本概念：



#pagebreak()
