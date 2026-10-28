#import "../theme.typ": *

#block(inset: (left: 1em))[
  #grid(columns: (auto, auto), column-gutter: 2.5em, row-gutter: 6pt,
    code[BLOCK 0: BEGIN], [第 0 块开始],
    code[  CELL(0)\<=1;], [把"1"送入 0 号单元],
    code[    LOOP N TIMES;], [循环执行 N 次],
    code[  BLOCK 1: BEGIN], [第 1 块开始],
    code[    CELL(0)\<=3 \* CELL(0);], [0 号单元内容乘"3"，结果仍送入 0 号单元],
    code[  BLOCK 1: END;], [第 1 块结束],
    code[  CELL(1)\<=1;], [把"1"送入 1 号单元],
    code[  LOOP CELL(0) TIMES;], [循环次数在 0 号单元中],
    code[  BLOCK 2: BEGIN], [第 2 块开始],
    code[    CELL(1)\<=2 \* CELL(1);], [1 号单元内容乘"2"，结果仍送入 1 号单元],
    code[  BLOCK 2: END;], [第 2 块结束],
    code[  OUTPUT \<= CELL(1);], [1 号单元内容送入输出单元],
    code[BLOCK 0: END.], [第 0 块结束],
  )
]

#align(center)[#heading(level: 2)[#text(size: 16.5pt)[#hei[BlooP 的约定]]]]

能够看着一个用计算机语言书写的算法，指出它是做什么的，这需要学习。但是，我希望这个算法足够简单，不必仔细研究就能理解。在上述程序中，定义了一个"过程"，它带有一个"输入参数"#marginnote[411]N，它的"输出"就是所要得到的值。

这个过程定义采用所谓"块结构"，这就是说其中某些部分可以被看作一个单元，或"块"。在一块中的所有语句可以被当作一个单元来执行。每一块都有个编号（最外面一层是 BLOCK 0），而且用 BEGIN 和 END 标记开始和结束。在我们这个例子中，BLOCK 1 和 BLOCK 2 每个仅含一个语句——但不久你就会见到更长的块。一个 LOOP 语句总是意味着重复地执行紧随其后的块。正象

#pagebreak(weak: true)