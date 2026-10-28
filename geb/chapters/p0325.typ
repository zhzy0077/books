#import "../theme.typ": *

// 第 325 页 (书页 289)

#par(first-line-indent: 0em)[起来,要走的路线显然会是先推出串 #strong[∀ a:a=a], 而然后用特称。那么,下面这个 #strong[∀ a:a=a] 的“推导”怎么样……有什么问题吗?你能把修补好吗?]

#block(inset: (left: 2em))[
  #grid(columns: (16em, auto), row-gutter: 10pt,
    [(1) #strong[∀ a:(a+0)=a]], [公理 2],
    [(2) #strong[∀ a:a=(a+0)]], [对称],
    [(3) #strong[∀ a:a=a]], [传递（第 2,1 行）])
]

我用这个小小的练习来指出一个简单的事实:在变换熟悉的符号（诸如“=”）时,不要跳得太快。你必须遵循规则,而不是你关于符号的被动意义的知识。当然,后一种知识在指引一个推导该走什么路线时是极有价值的。

#align(center)[#heading(level: 2)[#text(size: 16.5pt)[#hei[为什么对特称和概括要加限制]]]]

现在让我们来看为什么对特称和概括二者都有加限制的必要性。下面有两个推导,两者当中都有一个限制被违反了。看看由此产生的灾难性后果:

#block(inset: (left: 2em))[
  #grid(columns: (16em, auto), row-gutter: 10pt,
    [(1) \[], [推入],
    [(2) #strong[a=0]], [前提],
    [(3) #strong[∀ a:a=0]], [概括（错了!）],
    [(4) #strong[Sa=0]], [特称],
    [(5) \]], [弹出],
    [(6) #strong[\<a=0→Sa=0\>]], [幻想规则],
    [(7) #strong[∀ a:\<a=0→Sa=0\>]], [概括],
    [(8) #strong[\<0=0→S0=0\>]], [特称],
    [(9) #strong[0=0]], [以前的定理],
    [(10) #strong[S0=0]], [分离（第 9,8 行）])
]

#par(first-line-indent: 0em)[这是第一个灾难。另一个灾难是由于用错了特称而产生的。]

#block(inset: (left: 2em))[
  #grid(columns: (16em, auto), row-gutter: 10pt,
    [(1) #strong[∀ a:a=a]], [以前的定理])
]

#pagebreak(weak: true)
