#import "../theme.typ": *

并把它倒过来写在原串的上方。我们来具体看看，让上述的酶作用在下面的串上（这个酶恰好也喜欢从 A 出发）：

#align(center)[CAAAGAGAATCCTCTTTGAT]

有许多地方能当作起点，比方说，我们选取左边第二个 A。酶拴在它上面，然后实施步骤 1：寻找右边最近的嘧啶。好，这意味着找 C 或 T。第一个是位于该串中央附近的那个 T，那就是我们到达的地方。然后，步骤 2：复制状态，好，把 A 倒过来放在我们的 T 上面。不过这并没有完，复制状态会继续保持有效，直到从其中退出——或者直到酶做完为止。这意味着复制过程继续进行，于是酶所通过的每一个基上面都放上了一个补基。步骤 3 是说找到我们的 T 右边的一个嘌呤。那就是从右端数在第三个位置上的 G。随着我们移到这个 G 上，我们一路上都必须"复制"——即创造一个补串。得到的东西是：

#align(center)[VGGVGAVAVC]

#align(center)[CAAAGAGAATCCTCTTTGAT]

最后一步是切断这个串，这就得到两段。

#align(center)[VGGVGAVAVC]

#align(center)[CAAAGAGAATCCTCTTTG]

和

#align(center)[AT。]

这一束指令做完了。不过，我们得到了一个双串。凡是发生这种事情，我们一律把两个互补的串彼此分开（这是一般原则），所以事实上我们的最终产品是三个串组成的集合：

#align(center)[AT、CAAAGAGAGGA、CAAAGAGAATCCTCTTTG。]

应当注意到，颠倒的符号串已翻过来正面朝上了，于是左和右也颠倒。

现在，我们已经见过可以施行在串上的各种印符操作中的大

#pagebreak(weak: true)