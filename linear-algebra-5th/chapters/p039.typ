#import "../theme.typ": *

#v(6pt)
#align(center)[#image("../assets/fig-p050-icon.png", width: 3.2%)]

#xiti("习题集 1.2")[

#hei[1. 计算点积 $bold(u) dot bold(v), bold(u) dot bold(w), bold(u) dot (bold(v) + bold(w))$ 与 $bold(w) dot bold(v)$, 其中]

$
  bold(u) = mat(delim: "[", -0.6; 0.8), quad bold(v) = mat(delim: "[", 4;3), quad bold(w) = mat(delim: "[", 1;2).
$

#hei[2. 计算习题 1 中各向量的长度 $norm(bold(u)), norm(bold(v))$ 与 $norm(bold(w))$, 并验证施瓦茨不等式 $|bold(u) dot bold(v)| <= norm(bold(u)) norm(bold(v))$ 与 $|bold(v) dot bold(w)| <= norm(bold(v)) norm(bold(w))$.]

#hei[3. 分别计算与习题 1 中向量 $bold(v), bold(w)$ 同向的单位向量, 并计算二者夹角 $theta$ 的余弦. 再求出与向量 $bold(w)$ 夹角分别为 0°, 90° 和 180° 的向量 $bold(a), bold(b), bold(c)$.]

#hei[4. 对任意单位向量 $bold(v)$ 与 $bold(w)$, 计算以下各组向量的点积 (写出具体数值):]

#align(center)[(a) $bold(v), -bold(v)$; #h(2em) (b) $bold(v) + bold(w), bold(v) - bold(w)$; #h(2em) (c) $bold(v) - 2 bold(w), bold(v) + 2 bold(w)$.]

#hei[5. 已知 $bold(v) = (1,3), bold(w) = (2,1,2)$, 分别计算与它们同向的单位向量 $bold(u)_1, bold(u)_2$ 以及与它们垂直的单位向量 $bold(U)_1, bold(U)_2$.]

#hei[6.] (a) 请写出与向量 $bold(v) = (2,-1)$ 垂直的所有向量 $bold(w) = (w_1, w_2)$;

#h(1.5em) (b) 与向量 $bold(V) = (1,1,1)$ 垂直的全体向量位于三维空间中的\_\_\_\_;

#h(1.5em) (c) 同时与向量 $(1,1,1)$ 和 $(1,2,3)$ 垂直的全体向量位于\_\_\_\_.

#hei[7. 计算下列各组向量之间的夹角 $theta$ (利用余弦):]

#align(center)[
  (a) $bold(v) = mat(delim: "[", 1;sqrt(3)), bold(w) = mat(delim: "[", 1;0)$;
  #h(2em) (b) $bold(v) = mat(delim: "[", 2;2;-1), bold(w) = mat(delim: "[", 2;-1;2)$;
]

#align(center)[
  (c) $bold(v) = mat(delim: "[", 1;sqrt(3)), bold(w) = mat(delim: "[", -1;sqrt(3))$;
  #h(2em) (d) $bold(v) = mat(delim: "[", 3;1), bold(w) = mat(delim: "[", -1;-2)$.
]

#hei[8. 判断正误 (如果正确请给出理由, 如果错误请找到一个反例):]

#h(1.5em) (a) 若 $bold(u) = (1,1,1)$ 同时与 $bold(v)$ 和 $bold(w)$ 垂直, 则 $bold(v)$ 与 $bold(w)$ 平行;

#h(1.5em) (b) 若 $bold(u)$ 同时与 $bold(v)$ 和 $bold(w)$ 垂直, 则 $bold(u)$ 也垂直于 $bold(v) + 2 bold(w)$;

#h(1.5em) (c) 若 $bold(u)$ 与 $bold(v)$ 是互相垂直的单位向量, 则 $norm(bold(u) - bold(v)) = sqrt(2)$.

#hei[9. 从原点 $(0,0)$ 到点 $(v_1, v_2)$ 和 $(w_1, w_2)$ 的向量斜率分别为 $v_2/v_1$ 和 $w_2/w_1$. 设斜率的乘积 $(v_2 w_2)/(v_1 w_1)$ 为 $-1$, 请证明对应的两个向量点积 $bold(v) dot bold(w) = 0$ 且互相垂直.] (例如, 直线 $y = 4x$ 垂直于直线 $y = -1/4 x$.)

#hei[10. 画出从原点 $(0,0)$ 分别到点 $bold(v) = (1,2)$ 和 $bold(w) = (-2,1)$ 的向量, 将二者的斜率相乘, 结果意味着点积 $bold(v) dot bold(w) = 0$ 且这两个向量 \_\_\_\_.]

]



#pagebreak()
