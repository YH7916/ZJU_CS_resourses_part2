#import "ReportTemplate/phylab.typ": phylab

#show: phylab.with(
  name: "示波器的使用",
  instructor: "郭红丽",
  desk-id: "6",
  class: "计科2404",
  author: "李宇晗", 
  author-id: "3240106155",
  date: datetime(year: 2025, month: 12, day: 22),
  week: "第13周",
  am-pm: "上午",
)

= 预习报告（10分）
（注：将已经写好的“物理实验预习报告”内容拷贝过来）

== 实验综述（5分）

=== 实验目的
- 测量棱镜的折射率并研究其色散规律。

=== 实验原理

*1. 反射法测量三棱镜顶角*

原理在“分光计的调整与使用”实验中已经介绍。

三棱镜顶角：
$ angle A = (|angle "左"_I - angle "右"_I| + |angle "左"_"II" - angle "右"_"II"|) / 4 $

*2. 最小偏向角测量原理*

不放三棱镜时用望远镜观察入射光线，读取读数窗口数据为 $theta_(10), theta_(20)$。

改变三棱镜位置，使入射光线（平行光管射出的平行光）在光学面射入，在另一光学面射出。望远镜从毛玻璃面底边出发，沿逆时针方向旋转，找到清晰的汞单色光，说明已经找到了折射光路。此时转动载物平台，至汞单色光在某一位置突然向反向移动，此处即为该单色光最小偏向角的位置。记录下此时的分光计读数 $theta_1, theta_2$。

则最小偏向角为：
$ delta_min = 1/2 (|theta_1 - theta_(10)| + |theta_2 - theta_(20)|) $

#v(0.5cm)

*3. 折射率测量原理*

// 图片占位符
#figure(
  image("/assets/棱镜.png",width: 40%),
  caption: [棱镜光路示意图（请插入图片：棱镜）],
) <fig-prism>

如上图，光线入射后在光学面分别发生折射，最终折射出。

有 $delta = (i-r) + (i' - r')$。当 $i=i'$ 时有 $r'=r$，故
$ delta_min = 2(i-r) $

又 $r+r' = 2r = angle A$，因此
$ r = 1/2 angle A $

最终有
$ i = 1/2 (angle A + delta_min) $

因此折射率
$ n = sin i / sin r = sin((angle A + delta_min)/2) / sin(angle A / 2) $


== 实验重点（3分）
首先需要掌握分光计 “粗调 + 细调” 流程，实现望远镜、平行光管共轴且接收或出射平行光，其次要理解棱脊分光法测顶角、最小偏向角测量的原理与操作，精准捕捉谱线反向转折点，最后还要学会利用双游标读数消除系统误差，掌握折射率公式的应用与数据处理。

== 实验难点（2分）

1. 分光计调整难度：需精准对齐望远镜、平行光管光轴，且与中心轴垂直，步骤繁琐易偏差。
2. 最小偏向角定位难：谱线反向转折点极细微，载物台转速度难把控，易错过定位不准。
3. 读数与误差控制难：需精准对齐谱线，双游标读数易读错，系统误差需严格规避。

#pagebreak()

= 原始数据（20分）
（将有老师签名的“自备数据记录草稿纸”的扫描或手机拍摄图粘贴在下方，完整保留姓名，学号，教师签字和日期。）
#image("/assets/8c96a1a7c75ab7aa1c6d29278cc1378e.jpg",width: 70%),

#pagebreak()

= 结果与分析（60分）
== 数据处理与结果（30分）
（列出数据表格、选择适合的数据处理方法、写出测量或计算结果。）\

由于部分刻度盘的读数跨越了零刻度线，我对数据进行了调整。\

测三棱镜顶角：

#figure(
  table(
    columns: 6,
    align: center + horizon,
    stroke: 0.5pt,
    table.cell(rowspan: 2)[*实验\ 次数*],
    table.cell(colspan: 2)[*左*],
    table.cell(colspan: 2)[*右*],
    table.cell(rowspan: 2)[$angle A = 1/4(|angle_"左I" - angle_"右I"| \ + |angle_"左II" - angle_"右II"|)$],
    
    [I 窗], [II 窗], [I 窗], [II 窗],
    
    [1], [$276^degree 55'$], [$96^degree 55'$], [$156^degree 52'$], [$336^degree 52'$], [$59^degree 59'$],
    [2], [$270^degree 30'$], [$90^degree 30'$], [$150^degree 31'$], [$330^degree 31'$], [$59^degree 58'$],
    [3], [$253^degree 01'$], [$83^degree 02'$], [$143^degree 01'$], [$323^degree 00'$], [$59^degree 59'$],
  ),
)

测量结果为：
$ overline(angle A) = 1/3 sum_(i=1)^3 angle A_i = 59^degree 59' $

#v(0.5cm)

三棱镜对绿光的最小偏向角：

#figure(
  table(
    columns: 8,
    align: center + horizon,
    stroke: 0.5pt,
    [*实验\ 次数*],
    [$theta_(min "I")$],
    [$theta_(min "II")$],
    [$theta_(0 "I")$],
    [$theta_(0 "II")$],
    [$|theta_(min "I") \ - theta_(0 "I")|$],
    [$|theta_(min "II") \ - theta_(0 "II")|$],
    [$delta_min$],
    
    [1],
    [$235^degree 20'$],
    [$55^degree 20'$],
    [$181^degree 20'$],
    [$01^degree 21'$],
    [$54^degree 00'$],
    [$53^degree 59'$],
    [$54^degree 00'$],
    
    [2],
    [$214^degree 27'$],
    [$34^degree 28'$],
    [$160^degree 30'$],
    [$340^degree 30'$],
    [$53^degree 57'$],
    [$53^degree 58'$],
    [$53^degree 58'$],
    
    [3],
    [$188^degree 05'$],
    [$08^degree 05'$],
    [$134^degree 15'$],
    [$314^degree 16'$],
    [$53^degree 50'$],
    [$53^degree 49'$],
    [$53^degree 50'$],
    
    [4],
    [$182^degree 55'$],
    [$03^degree 57'$],
    [$129^degree 04'$],
    [$309^degree 04'$],
    [$53^degree 51'$],
    [$54^degree 53'$],
    [$54^degree 22'$],
    
    [5],
    [$166^degree 40'$],
    [$346^degree 39'$],
    [$112^degree 50'$],
    [$292^degree 50'$],
    [$53^degree 50'$],
    [$53^degree 49'$],
    [$53^degree 50'$],
    
    [6],
    [$148^degree 47'$],
    [$328^degree 48'$],
    [$94^degree 59'$],
    [$275^degree 00'$],
    [$53^degree 48'$],
    [$53^degree 48'$],
    [$53^degree 48'$],
  ),
)

测量结果为：
$ overline(delta_min) = 1/6 sum_(i=1)^6 delta_(min i) = 53^degree 58' $

#figure(
  table(
    columns: 8,
    align: center + horizon,
    stroke: 0.5pt,
    [*实验*],
    [$theta_(min "I")$],
    [$theta_(min "II")$],
    [$theta_(0 "I")$],
    [$theta_(0 "II")$],
    [$|theta_(min "I") \ - theta_(0 "I")|$],
    [$|theta_(min "II") \ - theta_(0 "II")|$],
    [$delta_min$],
    
    [紫光],
    [$249^degree 29'$],
    [$69^degree 29'$],
    [$193^degree 09'$],
    [$13^degree 09'$],
    [$56^degree 20'$],
    [$56^degree 20'$],
    [$56^degree 20'$],
    
    [黄光],
    [$236^degree 30'$],
    [$56^degree 30'$],
    [$183^degree 00'$],
    [$03^degree 00'$],
    [$53^degree 30'$],
    [$53^degree 30'$],
    [$53^degree 30'$],
    
    [蓝光],
    [$237^degree 39'$],
    [$57^degree 39'$],
    [$182^degree 59'$],
    [$03^degree 00'$],
    [$54^degree 40'$],
    [$54^degree 39'$],
    [$54^degree 40'$],
  ),
)

#v(0.5cm)

*1. 对于绿光偏向角数据处理：*

根据测量数据，绿光最小偏向角的平均值 $overline(delta_min) = 53^degree 58'$。
各次测量值与平均值的偏差（单位：分）分别为：$+2, 0, -8, +24, -8, -10$。
将偏差换算为度进行计算：

$
  U_(A "绿") = sqrt(1/(6(6-1)) sum_(i=1)^6 (delta_(min i) - overline(delta)_min)^2)
  = sqrt(808("分"^2) / 30) approx 5.19' = 5.19/60 degree approx 0.09^degree
$

$ U_(B "绿") = 1/sqrt(3) times 1'/60 = 0.010^degree $

$ therefore U_"绿" = sqrt(U_(A "绿")^2 + U_(B "绿")^2) = sqrt(0.0865^2 + 0.00962^2) approx 0.0870^degree approx 5'13'' $

$ therefore delta_"绿" = 53^degree 58' plus.minus 5'13'' $

#v(0.8cm)

*对于绿光折射率数据处理：*

各自测量量下的绿光折射率由公式 $n = sin((A+delta_min)/2) / sin(A/2)$ 计算得出（取 $A = 59^degree 59'$）：

1. $delta_1 = 54^degree 00' => n_1 = 1.6776$
2. $delta_2 = 53^degree 58' => n_2 = 1.6773$
3. $delta_3 = 53^degree 50' => n_3 = 1.6760$
4. $delta_4 = 54^degree 22' => n_4 = 1.6811$
5. $delta_5 = 53^degree 50' => n_5 = 1.6760$
6. $delta_6 = 53^degree 48' => n_6 = 1.6757$

$ overline(n_"绿") = 1/6 sum_(i=1)^6 n_i = 1.6773 $

$ u_n = sqrt(1/(6(6-1)) sum_(i=1)^6 (n_i - overline(n))^2) = 8.25 times 10^(-4) approx 0.0008 $

$ therefore n_"绿" = 1.6773 plus.minus 0.0008 $

#v(0.8cm)

*3. 列出不同单色光 $delta$ 与 $n$ 随 $lambda$ 变化关系表格：*

根据各单色光的最小偏向角测量数据，代入折射率公式计算结果如下表所示：

#figure(
  table(
    columns: 5,
    align: center,
    stroke: (top: 1pt, bottom: 1pt, rest: none),
    // 模拟三线表效果
    table.hline(stroke: 0.5pt),
    [光色], [波长 $lambda$ /nm], [顶角 $angle A$], [$delta_min$], [折射率 $n$],
    table.hline(stroke: 0.5pt),
    [黄光], [577.1], [$59^degree 59'$], [$53^degree 30'$], [1.6728],
    [绿光], [546.1], [$59^degree 59'$], [$53^degree 58'$], [1.6773],
    [蓝光], [435.8], [$59^degree 59'$], [$54^degree 40'$], [1.6838],
    [紫光], [404.7], [$59^degree 59'$], [$56^degree 20'$], [1.6994],
    table.hline(stroke: 1pt),
  ),
)

绘制色散曲线（$n-lambda$ 曲线），并用色散经验公式拟合得到下图：

[柯西拟合曲线（请插入图片：柯西拟合曲线）]

#pagebreak()

== 误差分析（20分）

本次实验的误差主要来源于以下几个方面：
+ 载物台难以完全调平，使光路与理论光路产生了一定偏差，对最终结果带来影响；
+ 在寻找最小偏向角的过程中，光线在转折点附近移动很缓慢，人的主观性对最小偏向角位置的选取存在影响；
+ 在刻度盘上读数时，判断游标与刻度线对齐时存在主观性，产生读数误差。

== 实验探讨（10分）
通过这次实验，我深入掌握了分光计的调试方法、三棱镜的顶角和最小偏向角的测量技巧，以及折射率的计算过程。在实验中，精确调平分光计并找到最小偏向角的转折点至关重要，操作时需要细心与耐心。这让我意识到，物理实验的准确性依赖于规范的操作和严谨的态度，主观判断可能会带来误差，因此需要通过多次测量来减小偏差。此外，通过绘制色散曲线，我更加直观地理解了折射率与波长之间的关系，进一步加深了对光学原理的理解，同时提升了数据处理和分析的能力。

= 思考题（10分）
（解答教材或讲义或老师布置的思考题，请先写题干，再作答。）

1. *测量时如何识别最小偏向角 $delta_min$ 的位置？*
  
  在实验过程中，通过缓慢转动分光计的载物台来改变入射角，同时在望远镜中观察光谱线的移动情况。当载物台向某一方向转动时，谱线会向偏向角减小的方向移动。继续转动载物台，会观察到谱线的移动速度逐渐减慢，直至在某一位置由“前行”变为“停滞”，随后开始向相反方向移动。这个谱线移动方向发生逆转的“折返点”，即为最小偏向角的位置。此时应微调载物台，确保谱线精确处于即将折返的临界位置进行测量。

2. *设计一种测量三棱镜折射率的方法。*
  
  垂直入射法也是一种简便有效的测量手段。该方法同样需预先测定棱镜顶角 $A$。首先，调节三棱镜方位，利用自准直原理使单色平行光垂直入射至棱镜的第一光学面，此时光线在第一面的入射角与折射角均为 $0$，这也意味着光线在棱镜内部射向第二光学面的入射角在几何上严格等于顶角 $A$。随后，保持棱镜不动，转动望远镜捕获从第二光学面射出的光谱线，并读取此时的出射角 $i'$。最终，根据折射定律推导出的公式 $n = \sin(i') / \sin(A)$，代入测得的数据即可求得折射率。