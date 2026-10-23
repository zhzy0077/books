#import "../theme.typ": *

#dmath[$ bold(A) = mat(delim: "[", 2, 1; 2, 0; 1, 0) , quad bold(A)^T bold(A) = mat(delim: "[", 9, 2; 2, 1) , $]

#dmath[$ (bold(A)^T bold(A))^(-1) = 1/5 mat(delim: "[", 1, -2; -2, 9) , quad bold(P) = mat(delim: "[", 1, 0, 0; 0, 0.8, 0.4; 0, 0.4, 0.2) . $]

因此 $bold(p)^* = bold(P b) = (3, 4.8, 2.4)$. 对应误差向量 $bold(e)^* = bold(b) - bold(p)^* = (0, -0.8, 1.6)$ 垂直于 $bold(a)$ 和 $bold(a)^*$. 该误差 $bold(e)^*$ 在 $bold(P)$ 的零空间中, 且其投影为零! 请注意 $bold(P)^2 = bold(P) = bold(P)^T$.

#hei[4.2 B]  设某人脉搏三次测量结果分别是 $x = 70$ 次/min, $x = 80$ 次/min 和 $x = 120$ 次/min. 关于未知数 $x$ 的三个方程写为 $bold(A x) = bold(b)$, 其中 $bold(A)^T = [1 quad 1 quad 1], bold(b) = (70, 80, 120)$. 关于 70, 80, 120 的最佳逼近 $hat(x)$ 为 $\_\_\_\_$. 请分别使用微积分和投影的方法分析:

(1) 求解 $(d E)/(d x) = 0$, 从而最小化 $E = (x - 70)^2 + (x - 80)^2 + (x - 120)^2$;

(2) 将 $bold(b) = (70, 80, 120)$ 投影到过 $bold(a) = (1, 1, 1)$ 的直线上, 求出 $hat(x) = (bold(a)^T bold(b))/(bold(a)^T bold(a))$.

#hei[解]  距离高度 70, 80, 120 最近的水平线是平均值 $hat(x) = 90$:

#dmath[$ (d E)/(d x) = 2(x - 70) + 2(x - 80) + 2(x - 120) = 0 , $]

#dmath[$ hat(x) = (70 + 80 + 120)/3 = 90 . $]

由投影也可得到上述值:

#dmath[$ hat(x) = (bold(a)^T bold(b))/(bold(a)^T bold(a)) = ((1, 1, 1)^T (70, 80, 120))/((1, 1, 1)^T (1, 1, 1)) = (70 + 80 + 120)/3 = 90 . $]

在递归最小二乘法中, 第四次测量结果 130 将使平均值 $hat(x)_"旧" = 90$ 变为 $hat(x)_"新" = 100$. 验证更新公式

#dmath[$ hat(x)_"新" = hat(x)_"旧" + 1/4 (130 - hat(x)_"旧") . $]

(有了这个公式) 当得到一个新的测量值时, 不必对所有测量结果再计算一次平均值了!

#xiti[习题集 4.2]

习题 1—9 求到直线上的投影 $bold(p)$, 以及误差 $bold(e) = bold(b) - bold(p)$ 和投影矩阵 $bold(P)$.

#ti[1.][将向量 $bold(b)$ 投影到过 $bold(a)$ 的直线上, 验证 $bold(e)$ 垂直于 $bold(a)$:]

#align(center)[#grid(columns: (auto, auto), column-gutter: 3em, align: horizon,
  [(a) $bold(b) = mat(delim: "[", 1; 2; 2), quad bold(a) = mat(delim: "[", 1; 1; 1)$;],
  [(b) $bold(b) = mat(delim: "[", 1; 3; 1), quad bold(a) = mat(delim: "[", -1; -3; -1) .$],
)]

#pagebreak()