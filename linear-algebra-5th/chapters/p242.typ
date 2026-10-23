#import "../theme.typ": *

这就是“增益矩阵”为 $1/1000$ 的“卡尔曼 (Kalman) 滤波”:

#dmath[$ hat(x)_"新" = hat(x)_"旧" + 1/1000 (b_1000 - hat(x)_"旧") . $]

本书后面会将卡尔曼滤波扩展到矩阵更新.

#ti[34.][(2017) 设 $bold(P)_1$ 与 $bold(P)_2$ 均为投影矩阵 (满足 $bold(P)_i^2 = bold(P)_i = bold(P)_i^T$, $i = 1,2$). 证明: $bold(P)_1 bold(P)_2$ 是投影矩阵当且仅当 $bold(P)_1 bold(P)_2 = bold(P)_2 bold(P)_1$.]

#pagebreak()