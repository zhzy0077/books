#import "../theme.typ": *

#dmath[$ bold(A) = mat(1,2,3; -1,0,-3; 0,-2,3) = mat(1/sqrt(2), 1/sqrt(6), 1/sqrt(3); -1/sqrt(2), 1/sqrt(6), 1/sqrt(3); 0, -2/sqrt(6), 1/sqrt(3)) mat(sqrt(2), sqrt(2), sqrt(18); 0, sqrt(6), -sqrt(6); 0, 0, sqrt(3)) = bold(Q) bold(R). $]

仔细观察矩阵 $bold(Q)$ 与 $bold(R)$. 向量 $bold(A), bold(B), bold(C)$ 的长度 $sqrt(2), sqrt(6), sqrt(3)$ 就是 $bold(R)$ 的主对角线元素. $bold(Q)$ 的列向量是标准正交的. 由于出现了平方根, 分解式 $bold(Q) bold(R)$ 可能看起来比 $bold(L) bold(U)$ 更难. 两种分解式都是线性代数计算问题的绝对核心.

任意具有线性无关列向量组的 $m times n$ 矩阵 $bold(A)$ 均有分解式 $bold(A) = bold(Q) bold(R)$, 其中 $m times n$ 矩阵 $bold(Q)$ 各列标准正交, 方阵 $bold(R)$ 是上三角形矩阵, 且其对角元素均为正数. 千万不能忘记为什么这个分解式对于最小二乘法有用:

#dmath[$ bold(A)^T bold(A) = (bold(Q) bold(R))^T bold(Q) bold(R) = bold(R)^T bold(Q)^T bold(Q) bold(R) = bold(R)^T bold(R). $]

于是最小二乘方程 $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$ 简化为 $bold(R)^T bold(R) hat(bold(x)) = bold(R)^T bold(Q)^T bold(b)$. 最终可得 $bold(R) hat(bold(x)) = bold(Q)^T bold(b)$, 便于进一步求解:

#dingliC[
  #grid(columns: (auto, 1fr, auto), column-gutter: 12pt,
    align(horizon, hei[最小二乘法]),
    $ bold(R)^T bold(R) hat(bold(x)) = bold(R)^T bold(Q)^T bold(b), quad bold(R) hat(bold(x)) = bold(Q)^T bold(b), quad hat(bold(x)) = bold(R)^(-1) bold(Q)^T bold(b) . $,
    align(bottom)[$(10)$],
  )
]

利用回代, 很快就能解出 $bold(R) hat(bold(x)) = bold(Q)^T bold(b)$, 从而不必求解 $bold(A) bold(x) = bold(b)$ 这个不可解方程组. 对于 $m times n$ 矩阵 $bold(A)$, 格拉姆-施密特方法的计算量为 $m n^2$ 次乘法, 用于构造满足 $bold(A) = bold(Q) bold(R)$ 的正交矩阵 $bold(Q)$ 和三角形矩阵 $bold(R)$.

以下伪代码的原理为 (11) 式:

#dingliC[
  #raw("for j=1:n              % 改进的格拉姆-施密特方法
    v=A(:,j);          % v 取初始矩阵 A 的第 j 列
    for i=1:j-1        % Q 中 q1,q2,...,q(j-1) 已确定
        R(i,j)=Q(:,i)'*v;   % 计算 R(i,j)=q_i^T a_j, 即 q_i^T v
        v=v-R(i,j)*Q(:,i);  % 减去投影 (q_i^T v)q_i
    end                % 现在 v 垂直于 q1,q2,...,q(j-1)
    R(j,j)=norm(v);    % 对角元素 R(i,j) 为 v 的长度
    Q(:,j)=v/R(j,j);   % v 除以长度, 得到下一个 q_j
end                    % 利用 “for j=1:n” 循环生成所有 q_j", lang: "matlab", block: true)
]

其中, 第 4,5 行很重要, 它们表示 $bold(v) = bold(a)_j$ 减去其在每个 $bold(q)_i$ ($i < j$) 方向上的投影; 代码最后表示标准化 $bold(v)$ (即除以 $r_(j j) = ||bold(v)||$) 以得到单位向量 $bold(q)_j$.

#grid(columns: (1fr, auto), column-gutter: 12pt,
  align(center)[$ r_(k j) = sum_(i=1)^m q_(i k) v_(i j), quad v_(i j) = v_(i j) - q_(i k) r_(k j), quad r_(j j) = (sum_(i=1)^m v_(i j)^2)^(1/2), quad q_(i j) = v_(i j)/r_(j j) . $],
  align(bottom)[$(11)$],
)

#pagebreak()