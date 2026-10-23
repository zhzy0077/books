#import "../theme.typ": *

#hei[26.]　对于下列矩阵 $bold(A)$, 画出房子 $bold(A) bold(H)$ 的草图而不使用计算机:

$ mat(delim: "[", 1, 0; 0, 0.1), quad mat(delim: "[", 0.5, 0.5; 0.5, 0.5), quad mat(delim: "[", 0.5, 0.5; -0.5, 0.5), quad mat(delim: "[", 1, 1; 1, 0). $

#hei[27.]　以下代码先创建含 50 个角度值的向量, 再绘制一个单位圆, 接着用变换 $T(bold(v)) = bold(A) bold(v)$ 将单位圆变换为椭圆:

```matlab
A = [2 1; 1 2];   % 可以修改 A
theta = [0:2*pi/50:2*pi];
circle = [cos(theta); sin(theta)];
ellipse = A * circle;
axis([-4 4 -4 4]); axis('square')
plot(circle(1,:), circle(2,:), ellipse(1,:), ellipse(2,:))
```

变换 $T$ 可将任意圆变换为椭圆.

#hei[28.]　对习题 27 中的圆添加两只眼睛和一个微笑从而构成一张人脸图形. (可将一只眼睛设为深色, 另一只眼睛设为浅色, 则当人脸图形关于 $y$ 轴反射时就能够被分辨出来.) 用矩阵 $bold(A)$ 左乘各点对应的向量来获得新的人脸图形.

#hei[29.]　请问矩阵 $bold(A)$ 的行列式 $det bold(A) = a d - b c$ 满足什么条件能够确保输出的房子 $bold(A) bold(H)$

(a) 压缩成一条直线?

(b) 保持端点按照顺时针排列 (即没有被反射)?

(c) 与原始房子有相同的面积?

#hei[30.]　为什么从 $bold(R)^2$ 到 $bold(R)^2$ 的每个线性变换 $T$ 都将正方形变成平行四边形? 同样地, 长方形也变成平行四边形 (若 $T$ 不可逆, 则所得图形会退化到一条直线上).

#pagebreak()
