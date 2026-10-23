#import "../theme.typ": *

#align(center, image("../assets/fig-p330-icon.png", width: 3.2%))

#subsec[挑 战 题]

#ti[33.][证明 $bold(u)$ 为秩 1 的 $2 times 2$ 矩阵 $bold(A) = bold(u) bold(v)^T$ 的一个特征向量. 求出 $bold(A)$ 的两个特征值. 验证 $lambda_1 + lambda_2$ 与迹 $u_1 v_1 + u_2 v_2$ 相一致.]

#ti[34.][设置换矩阵

#dmath[$ bold(P) = mat(delim: "[", 0, 0, 0, 1; 1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0) , $]

由 $det(bold(P) - lambda bold(I)) = 0$ 求出 $bold(P)$ 的特征值. 用该置换矩阵左乘时, 哪些向量未改变? 它们是对应于 $lambda = 1$ 的特征向量. 求出另外三个特征向量.]

#ti[35.][$3 times 3$ 置换矩阵 $bold(P)$ 共有六个, 习题 15 中列出了两个. $bold(P)$ 的行列式可以是哪些数值? 主元可以是哪些数值? 迹可以是哪些数值? 特征值可以是哪四个数值?]

#ti[36.][(海森堡不确定原理) 存在满足 $bold(A) = bold(A)^T$ 和 $bold(B) = -bold(B)^T$ 的无限矩阵 $bold(A), bold(B)$, 使得 $bold(A) bold(B) - bold(B) bold(A) = bold(I)$ 成立, 那么

#dmath[$ bold(x)^T bold(x) = bold(x)^T bold(A) bold(B) bold(x) - bold(x)^T bold(B) bold(A) bold(x) <= 2 norm(bold(A) bold(x)) norm(bold(B) bold(x)) . $]

用施瓦茨不等式 $|bold(u)^T bold(v)| <= norm(bold(u)) norm(bold(v))$ 解释最后一步. 进而海森堡不等式表明 $norm(bold(A) bold(x))/norm(bold(x))$ 与 $norm(bold(B) bold(x))/norm(bold(x))$ 乘积至少为 $1/2$, 因此不可能使得位置误差与动量误差都很小.]

#ti[37.][除了单位矩阵 $bold(I)$ 之外, 求出一个 $2 times 2$ 旋转矩阵 $bold(A)$ 使得 $bold(A)^3 = bold(I)$. 它的特征值 $lambda$ 必满足 $lambda^3 = 1$. 这些特征值可以是 $e^(2 pi i slash 3)$ 和 $e^(-2 pi i slash 3)$. $bold(A)$ 的迹和行列式是多少?]

#ti[38.][(a) 求出如下 $bold(A)$ 的特征值与特征向量, 它们依赖于参数 $c$:

#dmath[$ bold(A) = mat(delim: "[", 0.4, 1 - c; 0.6, c) ; $]

#sub[(b) 当 $c = 1.6$ 时, 证明 $bold(A)$ 只有一条特征向量直线;]
#sub[(c) 当 $c = 0.8$ 时, $bold(A)$ 是马尔可夫矩阵, 那么 $bold(A)^n$ 将趋于哪个矩阵?]]
#subsec[补充材料: MATLAB 中的 eigshow 函数]

MATLAB 有个演示函数 (只需键入 eigshow), 它可用于展示 $2 times 2$ 矩阵的特征值#footnote[译者注: 最新版本的 MATLAB 似乎已不含 eigshow 函数, 可在本书英文版配套网站上找到对应的 M 文件.]. 取 $bold(A) = mat(delim: "[", 0.8, 0.3; 0.2, 0.7)$, 从单位向量 $bold(x) = (1, 0)$ 开始, 轻移鼠标即可令该向量沿着单位圆周绕动

#pagebreak()