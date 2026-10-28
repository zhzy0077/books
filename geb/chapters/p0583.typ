#import "../theme.typ": *

// 第 547 页 (源图 p0583)；页中右侧旁注 "412" 为英文原版页码，不转写；页底 "547" 为原书页码，由 theme 页脚自动生成

有答案的。但我们希望我们的 BlooP 过程不管怎样应当给出一个答案——比如说 0。下面就是一个做减法的 BlooP 过程：

#block(inset: (left: 1em))[
  #grid(columns: (auto, auto), column-gutter: 2.5em, row-gutter: 6pt,
    code[DEFINE PROCEDURE], [],
    code[  "MINUS" \[M\,N\]:], [定义过程名和变量 M、N],
    code[  BLOCK 0: BEGIN], [第 0 块开始],
    code[  IF M\<N\, THEN;], [若 M\<N\,则:],
    code[  QUIT BLOCK 0;], [退出第 0 块],
    code[  LOOP AT MOST M+1 TIMES;], [循环至多 M+1 次:],
    code[  BLOCK 1: BEGIN], [第 1 块开始],
    code[  IF OUTPUT+N=M\, THEN;], [若 OUTPUT+N=M\,则:],
    code[  ABORT LOOP 1;], [中止循环 1],
    code[  OUTPUT \<= OUTPUT+1;], [OUTPUT 的值加 1\,送回],
    code[  BLOCK 1: END;], [第 1 块结束],
    code[BLOCK 0: END.], [第 0 块结束],
  )
]

这里我们利用了 OUTPUT 开始时为 0 这一隐含性质。如果 M 小于 N，那么减法就是不可能的，我们只需直接跳到 BLOCK 0 的末尾，同时答案是 0。这就是 QUIT BLOCK 0 这一行的意思。但如果 M 不小于 N，那么我们就越过这条 QUIT 语句，按顺序执行下一条命令（在这里是个 LOOP 语句）。这就是 IF 语句在 BlooP 中的工作方式。

这样，我们就进入了 LOOP 1。这样称呼它，是因为它要重复执行的块是 BLOCK 1。我们试着把 0 加到 N 上，然后是 1、2、……，直到我们找到那个能导出 M 的数。这时我们对当前循环做 ABORT，即跳到紧跟着标识循环块底的 END 后面的一条语句。在上述例子中，我们跳到了 BLOCK 1: END 的后面，即到达了算法的最后一条语句，而且任务已经完成了。现在 OUTPUT 中放的就是正确答案。

#pagebreak(weak: true)