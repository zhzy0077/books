#import "../theme.typ": *

// 第 359 页

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align(left)[
    都应归功于这一结果。

    #dialogueItem[螃蟹][我的唱片是来自什么数学结果？其奇怪！好吧，你已经逗起了我的好奇心，我得听个究竟。]

    #dialogueItem[阿基里斯][好吧。（停顿了一小会儿，呷了一口茶，然后才开始说出来。）你们听说过费马那个臭名昭著的“最后定理”吗？]

    #dialogueItem[食蚁兽][#marginnote[276]我说不好 …… 听起来怪熟的，可我想不起来了。]

    #dialogueItem[阿基里斯][#marginnote[277]内容非常简单。彼埃尔·德·费马，这位专业律师、业余数学家，在读一本丢番图的经典教本《算术》时，看到了这样一个方程式：

    #align(center)[$a^2 - b^2 = c^2$]

    他立刻意识到有无穷多个 a、b、c 能满足这个方程，于是在书的边空上写下了下面这段臭名远扬的批注：]

    #block(inset: (left: 2em))[方程]

    #align(center)[$a^n + b^n = c^n$]

    其中 a、b、c 及 n 取正整
  ],
  align(center)[
    #bookFigure("assets/p0395/fig.png", width: 88%, caption: figureCaption("54", "莫比乌斯带 I，艾舍尔作（木刻，1963）。"))
  ]
)

#pagebreak(weak: true)
