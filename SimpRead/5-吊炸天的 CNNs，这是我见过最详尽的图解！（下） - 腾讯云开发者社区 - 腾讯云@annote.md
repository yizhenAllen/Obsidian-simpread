---
title: "吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云"
alias: 
  - "吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云"
created-date: 2023-04-04T12:06:21+0800
type: Simpread
banner: "https://ask.qcloudimg.com/http-save/yehe-2129619/6mkizv48g3.jpeg?imageView2/2/w/2560/h/7000 "
banner_icon: 🔖
tag: 
idx: 5
---

# 吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云

> [!example]- [🧷内部链接](<http://localhost:7026/unread/5>) [🌐外部链接](<https://cloud.tencent.com/developer/article/1150219>)    
> URI:: [🧷](<http://localhost:7026/unread/5>) [🌐](<https://cloud.tencent.com/developer/article/1150219>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/5>)

%%
> [!example]+ **Comments**  
> ```dataview
> TABLE 
>     WITHOUT ID
>     link(Source, dateformat(date(Source), "yyyy-MM-dd")) as Date___, 
>     regexreplace(rows.Comments,"^@@\[\[.+?\]\]\s","") as "Comments"
> FROM "journals"
> WHERE  contains(cmnt, this.file.name)
> FLATTEN cmnt as Comments
> WHERE contains(Comments, this.file.name)
> GROUP BY file.link as Source
> SORT rows.file.day desc
> ```
>  **Description**:: 吊炸天的 CNNs，这是我见过最详尽的图解！在提取特征的过程中，我们采用的是 “过滤器中的数值，与原始图片中的相应数值，相乘、相加” 的方法，例如： 在对特征图片进行 “池化” 处理时，与 “卷积” 类似，需要我们设置 2 个超参数： 因为 “卷积” 层的过滤器，其功能是提取图片的特征，因而，我们使用不同的过滤器，可以提取不同的图片细节。
%%

> [!md] Metadata  
> **标题**:: [吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云](https://cloud.tencent.com/developer/article/1150219)  
> **日期**:: [[2023-04-04]]  

## Annotations


> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680581180212>) [🌐](<http://localhost:7026/reading/5#id=1680581180212>)   
> 在 “卷积” 处理的后面，我们常常引入一个 “非线性” 的计算，来使得数据更加接近真实世界。
> 
> 这个 “非线性” 计算，就是 **ReLU 函数**，它的图像形态犹如一条折线：
> ^sran-1680581180212
 
> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680585674238>) [🌐](<http://localhost:7026/reading/5#id=1680585674238>)   
> 具体到图片计算，ReLU 相当于将 “特征图片” 中，像素值小于 0 的部分，全部变为 0。
> ^sran-1680585674238
 
> [!srhl3] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680585701135>) [🌐](<http://localhost:7026/reading/5#id=1680585701135>)   
> ![](https://ask.qcloudimg.com/http-save/yehe-2129619/w8lecq3l2x.jpeg)
> ^sran-1680585701135
 
> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680585712649>) [🌐](<http://localhost:7026/reading/5#id=1680585712649>)   
> 如果你的特征图片的尺寸很大的话，你还可以进一步添加 “池化” 的操作。
> ^sran-1680585712649
 
> [!srhl3] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680585717873>) [🌐](<http://localhost:7026/reading/5#id=1680585717873>)   
> 所谓 “池化”，就是在保留图片主要信息的前提下，将图片的尺寸缩小。
> ^sran-1680585717873
 
> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680585857102>) [🌐](<http://localhost:7026/reading/5#id=1680585857102>)   
> 诸如 “**最大**池化”、“**平均**池化”、“**求和**池化” 等等，它们的运算原理基本一致。
> ^sran-1680585857102
 
> [!srhl5] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680585899677>) [🌐](<http://localhost:7026/reading/5#id=1680585899677>)   
> 在对特征图片进行 “池化” 处理时，与 “卷积” 类似，需要我们设置 2 个超参数：
> 
> **过滤器大小（F）**和 **滑动的步幅数（S）**
> 
> 这里，假设我们设置 F=2，S=2，那么，“最大池化” 为：
> 
> 在每 2*2（即 4 个）像素区域内，保留像素值最大的那一个，其余 3 个像素值抛弃。
> ^sran-1680585899677
 
> [!srhl3] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680585905363>) [🌐](<http://localhost:7026/reading/5#id=1680585905363>)   
> ![](https://ask.qcloudimg.com/http-save/yehe-2129619/intpnqvu3e.png)
> ^sran-1680585905363
 
> [!srhl4] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680585940583>) [🌐](<http://localhost:7026/reading/5#id=1680585940583>)   
> 回顾 step2 的整个流程：
> 
> **输入图片 → 卷积 → ReLU → 池化（可选）**
> ^sran-1680585940583
 
> [!srhl4] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680585942793>) [🌐](<http://localhost:7026/reading/5#id=1680585942793>)   
> ![](https://ask.qcloudimg.com/http-save/yehe-2129619/4pzen3ot1z.jpeg)
> ^sran-1680585942793
 
> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680585951381>) [🌐](<http://localhost:7026/reading/5#id=1680585951381>)   
> 有的时候，我们会进行多次卷积和池化，所以，更一般的形式：
> 
> ![](https://ask.qcloudimg.com/http-save/yehe-2129619/9ryry8ocau.png?imageView2/2/w/2560/h/7000)
> ^sran-1680585951381
 
> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586128148>) [🌐](<http://localhost:7026/reading/5#id=1680586128148>)   
> ★ 也可以构建 2 层 “卷积 + ReLU + 池化”：
> 
> 输入图片 → 卷积 → ReLU → 池化 → 卷积 → ReLU → 池化
> ^sran-1680586128148
 
> [!srhl5] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586036218>) [🌐](<http://localhost:7026/reading/5#id=1680586036218>)   
> **温馨提示：**
> 
> ① “池化”层使用的过滤器，与 “卷积” 层使用的过滤器有所不同：
> 
> ★ “池化” 层的过滤器，其内部没有数值
> 
> ![](https://ask.qcloudimg.com/http-save/yehe-2129619/p3ohs2cf32.png?imageView2/2/w/2560/h/7000)
> 
> 因为 “池化” 层的过滤器，其功能只是将图片缩小，故其内部没有参数。
> 
> ★ 在 “池化” 层中，仅有 1 个过滤器；而在 “卷积” 层中，可以设置多个过滤器
> 
> ![](https://ask.qcloudimg.com/http-save/yehe-2129619/m509gr6t5t.png?imageView2/2/w/2560/h/7000)
> ^sran-1680586036218
 
> [!srhl4] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586096671>) [🌐](<http://localhost:7026/reading/5#id=1680586096671>)   
> 而 “池化” 层的过滤器，仅仅是为了缩小图片的尺寸，因而，使用一种过滤器，就可以达到这一目标，无需设置多个。
> ^sran-1680586096671
 
> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586265757>) [🌐](<http://localhost:7026/reading/5#id=1680586265757>)   
> 当你给计算机很多组、很多组（x,y）时，它会自己去学习寻找 x 与 y 之间的关系，这个 “关系”，就是θ。
> ^sran-1680586265757
 
> [!srhl3] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586301064>) [🌐](<http://localhost:7026/reading/5#id=1680586301064>)   
> 为了方便大家理解，假设我们从第 2 步中，得到了 2 张 2*2 的图片，如果把它们的像素值 “展开”，得到的效果为：
> ^sran-1680586301064
 
> [!srhl3] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586302297>) [🌐](<http://localhost:7026/reading/5#id=1680586302297>)   
> ![](https://ask.qcloudimg.com/http-save/yehe-2129619/4zb2u2r5sw.jpeg)
>  
> - 📝不同的滤波器得到不同的特征，最后拉直就是把特征合到一起
> ^sran-1680586302297
 
> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586383109>) [🌐](<http://localhost:7026/reading/5#id=1680586383109>)   
> “全连接神经网络”
> ^sran-1680586383109
 
> [!srhl4] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586392981>) [🌐](<http://localhost:7026/reading/5#id=1680586392981>)   
> ![](https://ask.qcloudimg.com/http-save/yehe-2129619/82hwsj1bk9.png)
> ^sran-1680586392981
 
> [!srhl3] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586396666>) [🌐](<http://localhost:7026/reading/5#id=1680586396666>)   
> 所谓 “全连接”，是指下一层的每一个神经元（即图中的 “□”），与上一层的神经元全部相连
> ^sran-1680586396666
 
> [!srhl3] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586402141>) [🌐](<http://localhost:7026/reading/5#id=1680586402141>)   
> ![](https://ask.qcloudimg.com/http-save/yehe-2129619/kul5s7gwhu.jpeg)
> ^sran-1680586402141
 
> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586549825>) [🌐](<http://localhost:7026/reading/5#id=1680586549825>)   
> 我们将 CNNs 的所有流程，整合起来，即：
> ^sran-1680586549825
 
> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586551486>) [🌐](<http://localhost:7026/reading/5#id=1680586551486>)   
> ![](https://ask.qcloudimg.com/http-save/yehe-2129619/1v4cxd4olh.jpeg)
> ^sran-1680586551486
 
> [!srhl3] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586575695>) [🌐](<http://localhost:7026/reading/5#id=1680586575695>)   
> ![](https://ask.qcloudimg.com/http-save/yehe-2129619/fbys7t3d9y.jpeg)
> ^sran-1680586575695
 
> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680600458752>) [🌐](<http://localhost:7026/reading/5#id=1680600458752>)   
> 而在处理彩色图片时，我们的过滤器，其深度增加为 3
> ^sran-1680600458752
 
> [!srhl3] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586655706>) [🌐](<http://localhost:7026/reading/5#id=1680586655706>)   
> 假设我们有一张宽、高、深为 4*4*3 的彩色图片。
> 
> 并且，我们在 “卷积层”，设置了 2 个过滤器，如下图：
> ^sran-1680586655706
 
> [!srhl3] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586656872>) [🌐](<http://localhost:7026/reading/5#id=1680586656872>)   
> ![](https://ask.qcloudimg.com/http-save/yehe-2129619/f9hohq8nhh.jpeg)
>  
> - 📝层数永远等于卷积过滤器的个数！如果输入的是3通道(例如RGB)，1个卷积过滤器分别对3个通道做操作之后得到3个结果，3个结果再处理(比如相加)得到一个结果，最后得到深度为1
> ^sran-1680586656872
 
> [!srhl3] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680587087741>) [🌐](<http://localhost:7026/reading/5#id=1680587087741>)   
> 而后面所有的流程，“ReLU → 池化 → 像素值展开 → 全连接 → 输出结果”，彩色图片的处理与灰度图一样，所以，具体的细节可以参考上面学过的内容。
> ^sran-1680587087741
 
> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586827177>) [🌐](<http://localhost:7026/reading/5#id=1680586827177>)   
> **温馨提示：**
> 
> ① 经过 “卷积” 后，输出的特征图片，其**深度**等于使用的**过滤器个数**。
> ^sran-1680586827177
 
> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586860103>) [🌐](<http://localhost:7026/reading/5#id=1680586860103>)   
> 有多个 “卷积” 层时，都要遵循 “彩色案例” 中的步骤，即“在做‘卷积’处理时，如果上一层图片是多层，那么，本层过滤器在遍历完多层图片后，需要将结果值相加“
> ^sran-1680586860103
 
> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586886850>) [🌐](<http://localhost:7026/reading/5#id=1680586886850>)   
> **在构建模型时，需要我们设置的超参数有：**
> 
> ★ 卷积层： 过滤器的大小（F）、滑动的步幅数（S），以及过滤器的个数（K）
> 
> 如果你期望输出的图片，与输入的图片尺寸一致，你还可以在原始图片的外围补零，补零的圈数 P=（F-1）/2
> 
> ★ 池化层：过滤器的大小（F）
> 
> **在算法运行时，计算机会自己学习的参数有：**
> 
> ★ 卷积层： 过滤器中的具体数值。
> 
> ★ 全连接层： 神经元的参数 θ
> ^sran-1680586886850
 
> [!srhl2] [[SR5@吊炸天的 CNNs，这是我见过最详尽的图解！（下） - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/5#id=1680586888037>) [🌐](<http://localhost:7026/reading/5#id=1680586888037>) #CNN #优秀   
> ![](https://ask.qcloudimg.com/http-save/yehe-2129619/kxnwrxpmlk.png)
> ^sran-1680586888037
 
 