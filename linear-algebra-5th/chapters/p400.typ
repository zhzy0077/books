#import "../theme.typ": *

#hei[SVD 中的特征向量]

在 SVD 中并非直接使用图像对应矩阵 (设为 $bold(A)$) 的特征向量, 因为大部分 $bold(A)$ 的特征向量并不正交; 此外, 矩阵 $bold(A)$ 的特征向量 $bold(x)_1, bold(x)_2, dots.c$ 只给出了一个向量集, 而所需的是两个向量集 (所有的 $bold(u)_i$ 和所有的 $bold(v)_i$). 对于以上两个难题的回答就是 SVD 的思想:

#align(center)[使用 $bold(A) bold(A)^T$ 的特征向量 $bold(u)_i$ 和 $bold(A)^T bold(A)$ 的特征向量 $bold(v)_i$.]

鉴于 $bold(A) bold(A)^T$ 与 $bold(A)^T bold(A)$ 都必为对称矩阵 (但两者通常不等!), 那么所有的 $bold(u)_i$ 组成一个正交向量集, 而所有 $bold(v)_i$ 构成另一个正交向量集. 不妨将它们全部单位化: $norm(bold(u)_i) = 1$, $norm(bold(v)_i) = 1$. 于是秩 2 矩阵 $bold(A) = sigma_1 bold(u)_1 bold(v)_1^T + sigma_2 bold(u)_2 bold(v)_2^T$. 数字 $sigma_1$ 和 $sigma_2$ 的大小将决定图像压缩时对应项是否应忽略. 这里采用的规则是保留大的 $sigma$, 丢弃小的 $sigma$.

在 SVD 中, $bold(u)_i$ 称为左奇异向量 (即 $bold(A) bold(A)^T$ 的单位特征向量), $bold(v)_i$ 称为右奇异向量 (即 $bold(A)^T bold(A)$ 的单位特征向量), 而 $sigma_i$ 是奇异值, 也就是 $bold(A) bold(A)^T$ 和 $bold(A)^T bold(A)$ 共同特征值的算术平方根:

#block(stroke: 0.6pt, inset: (x: 4pt, y: 10pt), width: 100%, above: 22pt)[
  #grid(columns: (auto, 1fr, auto), column-gutter: 1em,
    align(horizon)[#hei[SVD 的选择]],
    align(horizon)[$ bold(A) bold(A)^T bold(u)_i = sigma_i^2 bold(u)_i, quad bold(A)^T bold(A) bold(v)_i = sigma_i^2 bold(v)_i, quad bold(A) bold(v)_i = sigma_i bold(u)_i. $],
    align(horizon)[$(1)$],
  )
]

#hei[例 3]　(嵌入方阵) 中的对称矩阵 $bold(A) bold(A)^T$ 和 $bold(A)^T bold(A)$ 如下:

$ bold(A) bold(A)^T = mat(1, 0; 1, 1) mat(1, 1; 0, 1) = mat(1, 1; 1, 2), $

$ bold(A)^T bold(A) = mat(1, 1; 0, 1) mat(1, 0; 1, 1) = mat(2, 1; 1, 1). $

它们的行列式均为 1, 故特征值 $lambda_1, lambda_2$ 满足 $lambda_1 lambda_2 = 1$; 它们的迹 (对角元素之和) 均为 3:

$ det mat(1 - lambda, 1; 1, 2 - lambda) = lambda^2 - 3 lambda + 1 = 0, $

$ lambda_1 = (3 + sqrt(5))/2 quad "和" quad lambda_2 = (3 - sqrt(5))/2. $

$lambda_1$ 和 $lambda_2$ 的算术平方根分别为 $sigma_1 = (sqrt(5) + 1)/2$ 和 $sigma_2 = (sqrt(5) - 1)/2$ 且有 $sigma_1 sigma_2 = 1$. 距离 $bold(A)$ “最近” 的秩 1 矩阵为 $sigma_1 bold(u)_1 bold(v)_1^T$, 误差仅为 $sigma_2 approx 0.6$, 这也是最小误差. $bold(A) bold(A)^T$ 和 $bold(A)^T bold(A)$ 的标准正交特征向量为

$ bold(u)_1 = 1/sqrt(1 + sigma_1^2) mat(1; sigma_1), quad bold(u)_2 = 1/sqrt(1 + sigma_1^2) mat(sigma_1; -1), $

#eqnum($ bold(v)_1 = 1/sqrt(1 + sigma_1^2) mat(sigma_1; 1), quad bold(v)_2 = 1/sqrt(1 + sigma_1^2) mat(1; -sigma_1) . $, 2)

读者应了解, 现实中上述计算是利用计算机完成的! (肯定不是徒手算的, 作者使用 MATLAB 中的 $"svd"(bold(A))$ 语句来检验计算结果.) 经验证, 矩阵 $bold(A)$ 可由 $sigma_1 bold(u)_1 bold(v)_1^T + sigma_2 bold(u)_2 bold(v)_2^T$ 正确地恢复出来:





#pagebreak()
