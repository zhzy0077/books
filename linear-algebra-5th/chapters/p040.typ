#import "../theme.typ": *
#ti[11.][若 $bold(v)·bold(w)$ 为负数, 则向量 $bold(v)$ 与 $bold(w)$ 的夹角是什么样的? 画出一个三维向量 $bold(v)$ (用一个箭头表示), 并分析如何找到满足 $bold(v)·bold(w) < 0$ 的全体向量 $bold(w)$.]

#ti[12.][已知向量 $bold(v) = (1,1)$ 和 $bold(w) = (1,5)$, 请求出数 $c$ 使得 $bold(w) - c bold(v)$ 与 $bold(v)$ 垂直. 若 $bold(v)$ 与 $bold(w)$ 为任意非零向量, 请找到满足上述要求的数 $c$ 的计算公式.]

#ti[13.][求与向量 $(1,0,1)$ 垂直, 且互相垂直的非零向量 $bold(v)$ 与 $bold(w)$.]

#ti[14.][求与向量 $(1,1,1,1)$ 垂直, 且两两互相垂直的非零向量 $bold(u), bold(v), bold(w)$.]

#ti[15.][$x = 2$ 与 $y = 8$ 的几何平均数为 $sqrt(x y) = 4$, 算术平均数为 #ifrac(1, 2) $(x+y) = underline(quad quad)$, 后者要稍大. 类似的结论也出现在例 6 关于向量 $bold(v) = (sqrt(2), sqrt(8))$ 与 $bold(w) = (sqrt(8), sqrt(2))$ 的施瓦茨不等式中, 请计算 $bold(v)$ 与 $bold(w)$ 的夹角余弦 $cos theta$.]

#ti[16.][#hei[9 维向量] $bold(v) = (1,1,dots.c,1)$ #hei[的长度是多少?] 请计算与 $bold(v)$ 同向的单位向量 $bold(u)$, 并计算与 $bold(v)$ 垂直的单位向量 $bold(w)$.]

#ti[17.][设向量 $(1,0,-1)$ 与坐标轴上的三个单位向量 $bold(i), bold(j), bold(k)$ 的夹角分别为 $alpha, beta, theta$, 请计算三个夹角的余弦并验证公式 $cos^2 alpha + cos^2 beta + cos^2 theta = 1$.]

#exerciseNote[习题 18—28 是关于三角形中边长和角度的一些主要结论的.]

#ti[18.][以向量 $bold(v) = (4,2)$ 与 $bold(w) = (-1,2)$ 为邻边的平行四边形是一个矩形, 请验证只在#hei[直角三角形]中成立的毕达哥拉斯定理:]

#dingliC[$ (bold(v) "的长度")^2 + (bold(w) "的长度")^2 = (bold(v) + bold(w) "的长度")^2 . $]

#ti[19.][(点积的运算律) 下列等式简单而实用:]

#sub[(1) $bold(v)·bold(w) = bold(w)·bold(v)$;]

#sub[(2) $bold(u)·(bold(v)+bold(w)) = bold(u)·bold(v) + bold(u)·bold(w)$;]

#sub[(3) $(c bold(v))·bold(w) = c (bold(v)·bold(w))$.]

#sub[令 $bold(u) = bold(v) + bold(w)$, 请利用 (2) 式证明]

#dmath[$ norm(bold(v)+bold(w))^2 = bold(v)·bold(v) + 2 bold(v)·bold(w) + bold(w)·bold(w) . $]

#ti[20.][“余弦定理”来自点积 $(bold(v)-bold(w))·(bold(v)-bold(w)) = bold(v)·bold(v) - 2 bold(v)·bold(w) + bold(w)·bold(w)$:]

#eqLd[#hei[余弦定理]][$ norm(bold(v)-bold(w))^2 = norm(bold(v))^2 - 2 norm(bold(v)) norm(bold(w)) cos theta + norm(bold(w))^2 . $]

#sub[请画出以 $bold(v), bold(w), bold(v)-bold(w)$ 为边的三角形并判断哪一个角是 $theta$.]

#ti[21.][#hei[三角不等式]给出了结论:]

#dmath([$ (bold(v)+bold(w)) "的长度" lt.eq (bold(v) "的长度") + (bold(w) "的长度") , $], continuation: true)

#sub[习题 19 给出了等式]

#dmath[$ norm(bold(v)+bold(w))^2 = norm(bold(v))^2 + 2 bold(v)·bold(w) + norm(bold(w))^2 . $]



#pagebreak()
