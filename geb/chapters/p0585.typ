#import "../theme.typ": *

// 第 549 页 (源图 p0585)；页底 "549" 为原书页码，由 theme 页脚自动生成

一个算法里。这个算法要测试一个函数的自变量是否是素数。

#block(inset: (left: 1em))[
  #grid(columns: (auto, auto), column-gutter: 2.5em, row-gutter: 6pt,
    code[DEFINE PROCEDURE], [],
    code[“PRIME ?” \[N\]:], [定义过程名和变量 N],
    code[BLOCK 0: BEGIN], [第 0 块开始],
    code[  IF N = 0\, THEN;], [若 N = 0\,则;],
    code[  QUIT BLOCK 0;], [退出第 0 块],
    code[  CELL(0) \<= 2;], [把 CELL(0) 置成 2],
    code[  LOOP AT MOST], [循环至多 N-2 次],
    code[  MINUS\[N\,2\] TIMES;], [],
    code[  BLOCK 1: BEGIN], [第 1 块开始],
    code[    IF REMAINDER], [若 N 除以 CELL(0) 余 0\,则;],
    code[    \[N\,CELL(0)\] = 0.], [],
    code[    THEN;], [],
    code[    QUIT BLOCK 0;], [退出第 0 块],
    code[    CELL(0) \<= CELL(0)+1;], [CELL(0) 的值加 1],
    code[  BLOCK 1: END;], [第 1 块结束],
    code[  OUTPUT \<= YES;], [把 OUTPUT 置成 YES],
    code[BLOCK 0: END.], [第 0 块结束],
  )
]

注意，我在这个算法中调用了两个过程：MINUS 和 REMAINDER。（假设后者已经事先定义了，你可以自己完成这个定义，REMAINDER\[N\,R\] 的作用是求 N 除以 R 所得的余数。）这个素数测试过程的工作方式是逐个检查 N 可能有的因子；从 2 开始直到 N-1 为止。如果其中某一个能整除 N（即余数为 0），则跳到过程尾部，由于此时 OUTPUT 仍然保有其缺省值，故答案为 NO。仅当 N 没有整数因子时，它才能通过整个 LOOP 1，那时我们会遇到语句 OUTPUT \<= YES，执行了这个语句后，过程就结束了。

#pagebreak(weak: true)
