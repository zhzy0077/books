#import "../theme.typ": *

这种“翻译”是怎么做的呢？这涉及一种#em[印符遗传密码]。根据这种密码，一个串中的各对相邻的基——称作“二元组”——表示各种不同的氨基酸。总共有十六种可能的二元组：AA、AC、AG、AT、CA、CC、等等，而氨基酸共有十五种。印符遗传密码如图 87 所示。

按照这个表，二元组 GC 的翻译是“inc”（“插入 C”），AT 的翻译是“swi”（“转移”），等等。这样，一个串显然可以十分直截了当地口授一种酶。例如，串

#block(inset: (left: 2em))[TAGATCCAGTCCACATCGA]

断成二元组，就是

#bookFigure("/geb/assets/p0712/fig.png")[图 87. 印符遗传密码。串中各个二元组按这种对应关系分别给十五种氨基酸（和一个标点符号）编码。]

#pagebreak(weak: true)