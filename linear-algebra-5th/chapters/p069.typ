#import "../theme.typ": *

如果将第一个方程变为 $4x-8y=4$ (对应相同的直线, 只是第一个主元变成 4), 按照确定乘数的规则, 现在正确的乘数是 $ell = 3/4$. 用要消去的系数 “3” 除以主元 “4” 就得到乘数:

#align(center)[
#grid(
  columns: (auto, auto, auto),
  column-gutter: 2.2em,
  align: (center+horizon, center+horizon, center+horizon),
  [$ cases(4x-8y=4, 3x+2y=11) $],
  [从第二个方程中 #linebreak() 减去第一个方程的 $3/4$,],
  [$ cases(4x-8y=4, 8y=8) $],
)
]

最终的方程组 (左侧) 形如三角形且求解最后一个方程仍然得到 $y=1$. 回代得 $4x-8=4$, 即 $4x=12$, 从而 $x=3$. 可见虽然数字发生了变化, 但是对应的直线与解保持不变. 对除以主元来计算乘数 $ell = 3/4$ 的总结如下:

#dingliC[
  主元 = 用于消元的行的第一个非零系数, \
  乘数 = (需消去的项的系数) 除以 (主元).
]

新的第二个方程开头的 8 是第二个主元, 如果还有第三个方程, 就可以利用它消去其中的 $y$. 要求解 $n$ 个方程需要 $n$ 个主元, 这些主元位于消元所得三角形系数矩阵的对角线上.

上例非常简单, 读者在学习本书之前就掌握了这类方程组的求解方法, 但是这里仍将继续分析该方法. 即使对 $2 times 2$ 方程组 (系数矩阵为 $2 times 2$ 矩阵), 消元法也可能会中止. 通过了解导致中止的原因 (当不能找到完整主元集时), 就能对消元法的整体流程有更深刻的理解.

#figure(
  grid(
    columns: (1fr, 1fr),
    column-gutter: 18pt,
    [
      #align(center, image("../assets/fig-p069-a.png", width: 96%))
      #align(center)[(a) 消元之前]
    ],
    [
      #align(center, image("../assets/fig-p069-b.png", width: 96%))
      #align(center)[(b) 消元之后]
    ],
  ),
  caption: [图 2.5  消去 $x$ 使得第二条直线变成水平直线, 然后由 $8y=8$ 得 $y=1$.],
  numbering: none,
)

#subsec[消元法的中止]

通常情况下, 由消元法所得主元可以用于求出解, 但消元法也可能失效. 在某些情况下出现除数为零时, 消元法就不得不中止. 此时可能调整方程顺序后可继续消元——当然也可能面临无法调整的情形.

如下所示, 例 1 在消元后出现 $0y=8$, 此时方程无解导致消元法失效; 例 2 在消元后出现 $0y=0$, 此时方程有无穷多解导致消元法失效; 例 3 在交换方程次序后利用消元法成功求解.

#hei[例 1]  无解, 消元法失效. 在消元后显而易见:

#grid(
  columns: (auto, auto, auto),
  column-gutter: 2.2em,
  align: (center+horizon, center+horizon, center+horizon),
  [$ cases(x-2y=1, 3x-6y=11) $],
  [从第二个方程中减去 #linebreak() 第一个方程的 3 倍,],
  [$ cases(x-2y=1, 0y=8) $],
)



#pagebreak()
