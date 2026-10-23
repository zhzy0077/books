#import "../theme.typ": *

#hei[8.1 B]　设 $T$ 为非线性变换, 若对输出空间中的每一个向量 $bold(b)$, 其恰来自输入空间中的一个输入向量 $bold(x)$, 即 $T(bold(x)) = bold(b)$ 总是恰好有一个解, 则 $T$ 可逆. 下述关于实数 $x$ 的变换 $T_i$, 哪些是可逆的? 当其可逆时, $T_i^(-1)$ 是什么? 它们都不是线性变换, 甚至 $T_3$ 也不是. 当求解关于 $x$ 的方程 $T_i(x) = b$ 时, 即是在求 $T_i$ 的逆:

#dmath[$ T_1(x) = x^2, quad T_2(x) = x^3, quad T_3(x) = x + 9, quad T_4(x) = e^x, quad T_5(x) = 1/x quad (x != 0). $]

#hei[解]　$T_1$ 不可逆: $x^2 = 1$ 有两个解, 而 $x^2 = -1$ 没有解.

$T_4$ 不可逆, 因为 $e^x = -1$ 没有解. (如果输出空间变为正实数集, 则 $e^x = b$ 的逆为 $x = ln b$.)

$T_2, T_3, T_5$ 是可逆的: $x^3 = b$ 和 $x + 9 = b$ 和 $1/x = b$ 都只有一个解 $x$, 其中

#dmath[$ x = T_2^(-1)(b) = b^(1/3), quad x = T_3^(-1)(b) = b - 9, quad x = T_5^(-1)(b) = 1/b. $]

注意, $T_5^2$ 为恒等变换, 而 $T_3^2(x) = x + 18$. $T_2^2(x)$ 和 $T_4^2(x)$ 是什么?

#align(center, image("../assets/fig-p444-icon.png", width: 3.2%))

#xiti[习题集 8.1][

#hei[1.]　一个线性变换必须保持零向量不变, 即线性变换 $T$ 满足 $T(bold(0)) = bold(0)$. 可以选择 $bold(w) =$ \_\_\_\_ 并利用 $T(bold(v) + bold(w)) = T(bold(v)) + T(bold(w))$ 进行证明 (请完成证明过程). 也可以选择 $c =$ \_\_\_\_ 并利用 $T(c bold(v)) = c T(bold(v))$ 来证明这个结论.

#hei[2.]　从线性变换定义中性质 (b) 可得 $T(c bold(v)) = c T(bold(v))$ 且 $T(d bold(w)) = d T(bold(w))$. 然后利用加法, 由性质 (a) 可得 $T($ \_\_\_\_ $) = ($ \_\_\_\_ $)$. 同理分析 $T(c bold(v) + d bold(w) + e bold(u))$.

#hei[3.]　当输入是 $bold(v) = (v_1, v_2)$ 时, 请问以下哪些变换是非线性的?

(a) $T(bold(v)) = (v_2, v_1)$; #h(1.5em) (b) $T(bold(v)) = (v_1, v_1)$; #h(1.5em) (c) $T(bold(v)) = (0, v_1)$;

(d) $T(bold(v)) = (0, 1)$; #h(1.5em) (e) $T(bold(v)) = v_1 - v_2$; #h(1.5em) (f) $T(bold(v)) = v_1 v_2$.

#hei[4.]　若 $S$ 与 $T$ 是线性变换, 请问 $T(S(bold(v)))$ 是线性的还是二次的?

(a) (特例) 若 $S(bold(v)) = bold(v)$ 且 $T(bold(v)) = bold(v)$, 请问 $T(S(bold(v)))$ 等于 $bold(v)$ 还是 $bold(v)^2$?

(b) (一般情形) 将 $S(bold(v)_1 + bold(v)_2) = S(bold(v)_1) + S(bold(v)_2)$ 与 $T(bold(v)_1 + bold(v)_2) = T(bold(v)_1) + T(bold(v)_2)$ 相结合可得

#dmath[$ T(S(bold(v)_1 + bold(v)_2)) = T("____") = "____" + "____". $]

#hei[5.]　对 $bold(v) = (v_1, v_2)$, 假设变换 $T$ 满足除 $T(0, v_2) = (0, 0)$ 之外 $T(bold(v)) = bold(v)$. 请证明该变换满足 $T(c bold(v)) = c T(bold(v))$ 但不满足 $T(bold(v) + bold(w)) = T(bold(v)) + T(bold(w))$.

#hei[6.]　请问以下变换 $T$ 哪些满足 $T(bold(v) + bold(w)) = T(bold(v)) + T(bold(w))$? 哪些满足 $T(c bold(v)) = c T(bold(v))$?

(a) $T(bold(v)) = bold(v)/norm(bold(v))$; #h(1.5em) (b) $T(bold(v)) = v_1 + v_2 + v_3$;

(c) $T(bold(v)) = (v_1, 2v_2, 3v_3)$; #h(2em) (d) $T(bold(v))$ 为 $bold(v)$ 的最大分量.

]

#pagebreak()