#import "../theme.typ": *

该误差 $bold(e)$ 应垂直于 $bold(a) = (1, 2, 2)$, 即 $bold(e)^T bold(a) = 4/9 - 2/9 - 2/9 = 0$.

观察由 $bold(b), bold(p)$ 和 $bold(e)$ 构成的直角三角形. 向量 $bold(b)$ 拆分成两部分——沿着 $bold(a)$ 所在直线方向的部分是 $bold(p)$, 与其垂直的部分是 $bold(e)$. 这两条边 $bold(p)$ 和 $bold(e)$ 的长度分别为

#dmath[$ norm(bold(p)) = norm(bold(b)) cos theta, quad norm(bold(e)) = norm(bold(b)) sin theta, $]

其中 $theta$ 为 $bold(a), bold(b)$ 的夹角 (这里假设 $theta$ 不超过 $90 degree$). 三角函数结果与点积相一致:

#eqnum($ bold(p) = (bold(a)^T bold(b))/(bold(a)^T bold(a)) bold(a) "的长度为" norm(bold(p)) = (norm(bold(a)) norm(bold(b)) cos theta)/(norm(bold(a))^2) norm(bold(a)) = norm(bold(b)) cos theta . $, 3)

比起计算 $cos theta$ 和 $bold(b)$ 的长度, 计算点积简单许多. 在例 1 中, $cos theta = 5/(3 sqrt(3))$ 与 $norm(bold(b)) = sqrt(3)$ 包含平方根, 而投影 $bold(p) = (5 bold(a))/9$ 不含平方根. 所以用 $(bold(a)^T bold(b))/(bold(a)^T bold(a))$ 表示 $5/9$ 更好.

接下来计算投影矩阵. 在 $bold(p)$ 的求解公式中, 是哪个矩阵左乘 $bold(b)$? 如果将数值 $hat(x)$ 写在 $bold(a)$ 的右侧, 那么这个矩阵会更加容易看出来:

#dingliC[投影矩阵 $bold(P)$ #h(2em) $bold(p) = bold(a) hat(x) = (bold(a) bold(a)^T)/(bold(a)^T bold(a)) bold(b) = bold(P b)$, 此时 $bold(P) = (bold(a) bold(a)^T)/(bold(a)^T bold(a))$.]

注意, $bold(P)$ 中先是列左乘一行! 其中列是 $bold(a)$, 行是 $bold(a)^T$, 然后除以数值 $bold(a)^T bold(a)$. 投影矩阵 $bold(P)$ 是 $m times m$ 的, 但秩为 1. 现在是向过 $bold(a)$ 的直线这个 1 维子空间投影. 该直线就是 $bold(P)$ 的列空间.

#hei[例 2]  向过 $bold(a) = mat(1; 2; 2)$ 的直线投影, 求出对应的投影矩阵 $bold(P) = (bold(a) bold(a)^T)/(bold(a)^T bold(a))$.

#hei[解]  先用列 $bold(a)$ 左乘行 $bold(a)^T$, 再除以 $bold(a)^T bold(a) = 9$:

#dmath[$ "投影矩阵" quad bold(P) = (bold(a) bold(a)^T)/(bold(a)^T bold(a)) = 1/9 mat(1; 2; 2) [1 quad 2 quad 2] = 1/9 mat(1, 2, 2; 2, 4, 4; 2, 4, 4) . $]

该矩阵将任意向量 $bold(b)$ 都投影到 $bold(a)$ 方向上.

用例 1 中的 $bold(b) = (1, 1, 1)$ 验证 $bold(p) = bold(P b)$:

#dmath[$ bold(p) = bold(P b) = 1/9 mat(1, 2, 2; 2, 4, 4; 2, 4, 4) mat(1; 1; 1) = 1/9 mat(5; 10; 10) , $]

这是正确的. 即便向量 $bold(a)$ 翻倍了, 矩阵 $bold(P)$ 依旧不变! 此时仍是投影到相同的直线上. 矩阵 $bold(P)$ 乘方后, 所得 $bold(P)^2$ 等于 $bold(P)$, 因为到同一直线的第二次投影并不改变之前的投影向量. 此外, $bold(P)$ 的主对角线元素合计为 $1/9 (1 + 4 + 4) = 1$.



#pagebreak()