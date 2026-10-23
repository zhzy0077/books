#import "../theme.typ": *

的长度得 $bold(u) = bold(v)/norm(bold(v))$ 与 $bold(U) = bold(w)/norm(bold(w))$, 然后对单位向量 $bold(u)$ 与 $bold(U)$ 计算点积可得 $cos theta$.

#dingli[
  #grid(columns: (auto, 1fr, auto), column-gutter: 14pt, align: horizon,
    [#hei[余弦公式]],
    align(center)[若 $bold(v)$ 与 $bold(w)$ 为非零向量, 则 $ (bold(v) dot bold(w))/(norm(bold(v)) norm(bold(w))) = cos theta .$],
    [(5)],
  )
]

无论夹角 $theta$ 为何值, $bold(v)/norm(bold(v))$ 与 $bold(w)/norm(bold(w))$ 的点积不可能超过 1. 这就是点积形式的“#hei[施瓦茨] (Schwarz) 不等式” $|bold(v) dot bold(w)| <= norm(bold(v)) norm(bold(w))$——更准确的名称是柯西-施瓦茨-布尼亚科夫斯基 (Cauchy-Schwarz-Buniakowsky) 不等式, 这三位数学家分别来自法国、德国和俄国 (可能还有其他国家数学家的贡献——这是数学中最重要的不等式).

因为 $|cos theta|$ 不可能超过 1, 所以利用余弦公式可以推导出两个重要的不等式:

#dingli[
  #grid(columns: (auto, 1fr), column-gutter: 2.2em, row-gutter: 10pt, align: horizon,
    [#hei[施瓦茨不等式]], [$ |bold(v) dot bold(w)| <= norm(bold(v)) norm(bold(w)) ,$],
    [#hei[三角不等式]], [$ norm(bold(v) + bold(w)) <= norm(bold(v)) + norm(bold(w)) .$],
  )
]

#hei[例 5]  计算向量 $bold(v) = vec(delim: "[", 2, 1)$ 与 $bold(w) = vec(delim: "[", 1, 2)$ 的夹角余弦 $cos theta$ 并验证上述不等式.

#hei[解]  由已知可得, 两个向量的点积为 $bold(v) dot bold(w) = 4$, 向量 $bold(v)$ 与 $bold(w)$ 的长度都是 $sqrt(5)$, 故向量夹角 $theta$ 的余弦值为 $4/5$, 即

#dmath([$ cos theta = (bold(v) dot bold(w))/(norm(bold(v)) norm(bold(w))) = 4/(sqrt(5) sqrt(5)) = 4/5. $], centered: true)

$bold(v) dot bold(w) = 4$ 显然小于 $norm(bold(v)) norm(bold(w)) = 5$, 即施瓦茨不等式成立. 向量 $bold(v) + bold(w) = (3,3)$, 则 $bold(v) + bold(w), bold(v), bold(w)$ 的长度满足 $sqrt(18) < sqrt(5) + sqrt(5)$ (两边平方得 $18 < 20$), 即三角不等式成立.

#hei[例 6]  向量 $bold(v) = (a,b)$ 与 $bold(w) = (b,a)$ 的点积为 $2 a b$, 两个向量的长度都是 $sqrt(a^2 + b^2)$. 由施瓦茨不等式 $bold(v) dot bold(w) <= norm(bold(v)) norm(bold(w))$ 可得 $2 a b <= a^2 + b^2$.

如果将上述利用记号 $x = a^2$ 与 $y = b^2$ 改写, 就得到一个更著名的结论: “几何平均数” $sqrt(x y)$ 不大于“算术平均数” $1/2 (x + y)$:

#let stackTag(top, bot) = box(baseline: 28%)[#align(right)[#text(size: 13pt)[#top\ #bot]]]
#dmath([
  #stackTag("几何", "平均数") $<=$ #stackTag("算术", "平均数")
  #h(1.5em) $a b <= (a^2 + b^2)/2$
  #h(1em) 变为
  #h(1em) $sqrt(x y) <= (x + y)/2.$
], centered: true)

#flushParagraph[例 5 中 $a = 2, b = 1$, 对应有 $x = 4, y = 1$, 此时 $x, y$ 的几何平均数 $sqrt(x y) = 2$ 小于算术平均数 $1/2 (1 + 4) = 2.5$.]

#pagebreak()
