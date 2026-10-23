#import "../theme.typ": *
#show: indexPage


#align(center, hei(size: 18pt)[索#h(1em)引])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  [
    #hei[符号]\
    $(bold(A) - lambda bold(I)) bold(x) = 0$, 300\
    $(bold(A) bold(B))^(-1) = bold(B)^(-1) bold(A)^(-1)$, 89\
    $(bold(A) bold(B)) bold(C) = bold(A)(bold(B) bold(C))$, 75\
    $(bold(A) bold(B))^T = bold(B)^T bold(A)^T$, 117\
    $(bold(A) bold(x))^T bold(y) = bold(x)^T (bold(A)^T bold(y))$, 118\
    $3 times 3$ 行列式, 279\
    $[bold(A) quad bold(b)]$, 159\
    $[bold(A) quad bold(I)]$, 156\
    “−1, 2, −1” 三对角矩阵, 267, 382, 552, 557\
    $bold(A) = bold(B) bold(C) bold(B)^(-1)$, 316\
    $bold(A) = bold(B) bold(J) bold(B)^(-1)$, 441, 442\
    $bold(A) = bold(K) bold(Q)$, 411\
    $bold(A) = bold(L) bold(D) bold(U)$, 107\
    $bold(A) = bold(L) bold(U)$, 106, 121, 394\
    $bold(A) = bold(Q) bold(R)$, 244, 245, 394\
    $bold(A) = bold(Q) bold(S)$, 411\
    $bold(A) = bold(Q) bold(T) bold(Q)^(-1)$, 355\
    $bold(A) = bold(U) bold(Σ) bold(V)^T$, 387, 394\
    $bold(A) = bold(u) bold(v)^T$, 147\
    $bold(A) = bold(X) bold(Λ) bold(X)^(-1)$, 314, 319\
    $bold(A)^+ = bold(V) bold(Σ)^+ bold(U)^T$, 412\
    $bold(A)^k = bold(X) bold(Λ)^k bold(X)^(-1)$, 316, 319\
    $bold(A)^T bold(A)$, 119, 208, 217, 387\
    $bold(A)^T bold(A) hat(bold(x)) = bold(A)^T bold(b)$, 224\
    $bold(A)^T bold(C) bold(A)$, 376, 481, 489\
    $bold(A)^T bold(C) bold(A) bold(u) = bold(f)$, 489\
    $C(bold(A))$, 135\
    $C(bold(A)^T)$, 174\
    $bold(C)^n$, 450, 465\
    $det(bold(A) - lambda bold(I))$, 301\
    $det(bold(A) - lambda bold(I)) = 0$, 300, 301\
    $e^(bold(A) t)$, 336, 338, 346
  ],
  [
    $e^(bold(A) t) = bold(X) e^(bold(Λ) t) bold(X)^(-1)$, 337\
    $bold(i), bold(j), bold(k)$, 14, 175, 288\
    $"Inf"$, 230\
    $L^1$, 592\
    $ell^1$, 551\
    $ell^infinity$, 551\
    $"mod" p$, 527, 528\
    $N(0, 1)$, 588\
    $N(bold(A))$, 142\
    $N(bold(A)^T)$, 187\
    $"NaN"$, 230\
    $bold(P)^2 = bold(P)$, 217\
    $bold(P) = bold(A)(bold(A)^T bold(A))^(-1) bold(A)^T$, 216\
    $bold(P) bold(A) = bold(L) bold(U)$, 121\
    $P$ 值, 402\
    $bold(Q)^T bold(Q) = bold(I)$, 239\
    QR 方法, 560, 562, 563\
    $bold(R) = "rref"(bold(A))$, 145\
    $bold(R)^n$, 131, 450\
    $bold(S) + bold(T)$, 141\
    $bold(S) = bold(A)^T bold(A)$, 365, 388\
    $bold(S) = bold(A)^T bold(C) bold(A)$, 376\
    $bold(S) = bold(L) bold(D) bold(L)^T$, 354\
    $bold(S) = bold(Q) bold(Λ) bold(Q)^T$, 350, 352, 366\
    $bold(S) inter bold(T)$, 139\
    $bold(S) union bold(T)$, 141\
    $bold(u) times bold(v)$, 287\
    $bold(V)^perp$, 203, 209\
    $bold(V) + bold(W)$, 186\
    $bold(V) inter bold(W)$, 186\
    $bold(x)^+ = bold(A)^+ bold(b)$, 414\
    $bold(Z)$, 131, 132, 144, 145, 179
  ],
)



#pagebreak()