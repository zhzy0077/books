#import "../theme.typ": *

// 第 551 页 (源图 p0587)；页底 "551" 为原书页码，由 theme 页脚自动生成

可以用 BlooP 测试来验证的性质的标准名称是“原始递归谓词”。这样，函数 $2^(3^n)$ 就是个原始递归函数，而命题“n 是个素数”则是个原始递归谓词。

凭直觉就能看出哥德巴赫性质是原始递归的。为了使其明确化，这里有一个用 BlooP 写的过程定义，来显示如何测试这一性质是否存在：

#block(inset: (left: 1em))[
  #grid(columns: (auto, auto), column-gutter: 2.5em, row-gutter: 6pt,
    code[DEFINE PROCEDURE], [],
    code["GOLDBACH?"\[N\]:], [定义过程名和变量 N],
    code[BLOCK 0: BEGIN], [第 0 块开始],
    code[  CELL(0) \<= 2;], [CELL(0) 置成 2],
    code[  LOOP AT MOST N TIMES:], [循环至多 N 次],
    code[  BLOCK 1: BEGIN], [第 1 块开始],
    code[    IF {PRIME?\[CELL(0)\]], [若 CELL(0) 和 N—],
    code[], [CELL(0)],
    code[AND RPIME?\[MINUS\[N\,CELL(0)\]\]\}，], [均为素数，],
    code[    THEN:], [则：],
    code[    BLOCK 2: BEGIN], [第 2 块开始],
    code[      OUTPUT \<= YES;], [把 OUTPUT 置成 YES],
    code[      QUIT BLOCK 0;], [退出第 0 块],
    code[    BLOCK 2: END;], [第 2 块结束],
    code[  CELL(0) \<= CELL(0)+1;], [CELL(0) 加 1],
    code[  BLOCK 1: END;], [第 1 块结束],
    code[BLOCK 0: END.], [第 0 块结束],
  )
]

和通常一样，我们先假设 NO，直到证明 YES 为止。而且我们是靠一股蛮劲在其和为 N 的数对之中进行搜索。如果两个数均为素数，我们就退出最外层的块，否则我们就返回去再试，直至穷尽全部可能性为止。

#pagebreak(weak: true)