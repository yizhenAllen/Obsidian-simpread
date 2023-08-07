---
title: "卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云"
alias: 
  - "卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云"
created-date: 2023-04-04T13:45:53+0800
type: Simpread
banner: "https://ask.qcloudimg.com/http-save/yehe-2769421/5aa5a7530d31478824f4f0cb5c724f94.jpeg?imageView2/2/w/2560/h/7000 "
banner_icon: 🔖
tag: 
idx: 6
---

# 卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云

> [!example]- [🧷内部链接](<http://localhost:7026/unread/6>) [🌐外部链接](<https://cloud.tencent.com/developer/article/1860520>)    
> URI:: [🧷](<http://localhost:7026/unread/6>) [🌐](<https://cloud.tencent.com/developer/article/1860520>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/6>)

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
>  **Description**:: CNN 常用于图像识别，在深度学习中我们不可能直接将图片输入进去，向量是机器学习的通行证，我们将图片转换为像素矩阵再送进去，对于黑白的图片，每一个点只有一个像素值...
%%

> [!md] Metadata  
> **标题**:: [卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云](https://cloud.tencent.com/developer/article/1860520)  
> **日期**:: [[2023-04-04]]  

## Annotations


> [!srhl2] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587151626>) [🌐](<http://localhost:7026/reading/6#id=1680587151626>)   
> CNN 一共分为输入，卷积，池化，拉直，softmax，输出
> ^sran-1680587151626
 
> [!srhl2] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587184567>) [🌐](<http://localhost:7026/reading/6#id=1680587184567>)   
> 用 kernel(filter) 来与像素矩阵局部做乘积
> ^sran-1680587184567
 
> [!srhl2] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587235748>) [🌐](<http://localhost:7026/reading/6#id=1680587235748>)   
> 接下来引入一个参数（Stride），代表我们每一次滤波器在像素矩阵上移动的步幅，步幅共分为水平步幅和垂直步幅，下图为水平步幅为 2，垂直步幅为 3 的设置
> ^sran-1680587235748
 
> [!srhl2] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587239807>) [🌐](<http://localhost:7026/reading/6#id=1680587239807>)   
> ![](https://ask.qcloudimg.com/http-save/yehe-2769421/4b8820eea28b343261001cae3eca3f79.jpeg?imageView2/2/w/2560/h/7000)
> ^sran-1680587239807
 
> [!srhl2] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587339243>) [🌐](<http://localhost:7026/reading/6#id=1680587339243>)   
> ((input shape - filter shape) / stride ) + 1
> ^sran-1680587339243
 
> [!srhl4] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587344790>) [🌐](<http://localhost:7026/reading/6#id=1680587344790>)   
> 记住在深度学习中务必要掌握每一层的输入输出。
> ^sran-1680587344790
 
> [!srhl2] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587372902>) [🌐](<http://localhost:7026/reading/6#id=1680587372902>)   
> 假如 stride 改为 3，那么 ((32 - 4) / 3) + 1 不是整数，所以这样的设定是错误的，那么，我们可以通过 padding 的方式填充 input shape，用 0 去填充，这里 padding 设为 1，如下图，填充意味着输入的宽和高都会进行增加 2 * 1，那么接下来的 out shape 就是 ((32 + 2 * 1 - 4)/3) + 1，即为 11 * 11
> ^sran-1680587372902
 
> [!srhl5] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587398838>) [🌐](<http://localhost:7026/reading/6#id=1680587398838>)   
> 通道（channel），或为深度（depth）的介绍
> ^sran-1680587398838
 
> [!srhl2] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587499443>) [🌐](<http://localhost:7026/reading/6#id=1680587499443>)   
> filter 的输入通道或者说是深度应该和输入的一致
> ^sran-1680587499443
 
> [!srhl3] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587534710>) [🌐](<http://localhost:7026/reading/6#id=1680587534710>)   
> 举例来说，一张照片 32 * 32 * 3，filter 可以设置为 3 * 3 * 3，我们刚开始理解了一维的互关运算，三维无非就是 filter 拿出每一层和输入的每一层做运算
> ^sran-1680587534710
 
> [!srhl2] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587641754>) [🌐](<http://localhost:7026/reading/6#id=1680587641754>)   
> 1. 卷积的意义是什么呢？
> ^sran-1680587641754
 
> [!srhl6] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587677041>) [🌐](<http://localhost:7026/reading/6#id=1680587677041>)   
> 当完成几个卷积层后（卷积 + 激活函数 + 池化）：
> 
> 可以看出，一开始提取一些比较基础简单的特征，比如边角，后面会越来越关注某个局部比如头部甚至是整体
> ^sran-1680587677041
 
> [!srhl6] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587678598>) [🌐](<http://localhost:7026/reading/6#id=1680587678598>)   
> ![](https://ask.qcloudimg.com/http-save/yehe-2769421/5802758827b13477f3adbdd31842cd01.jpeg)
> ^sran-1680587678598
 
> [!srhl3] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587743352>) [🌐](<http://localhost:7026/reading/6#id=1680587743352>)   
> **3.filter 矩阵里的权重参数是怎么来的？**
> 
> 首先会初始化权重参数，然后通过梯度下降不断降低 loss 来获得最好的权重参数
> ^sran-1680587743352
 
> [!srhl2] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680587757983>) [🌐](<http://localhost:7026/reading/6#id=1680587757983>)   
> filter 的数量（output channels）通常可以设置为 2 的指数次
> ^sran-1680587757983
 
> [!srhl2] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680588013825>) [🌐](<http://localhost:7026/reading/6#id=1680588013825>)   
> 卷积好之后会用 RELU 进行激活
> ^sran-1680588013825
 
> [!srhl2] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680588041249>) [🌐](<http://localhost:7026/reading/6#id=1680588041249>)   
> 那么，池化的意义是什么？池化又可以被成为向下取样（DownSample）
> ^sran-1680588041249
 
> [!srhl2] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680588090733>) [🌐](<http://localhost:7026/reading/6#id=1680588090733>)   
> 进行卷积池化这样一组操作多次之后再全部拉直送入全连接网络，最后输出 10 个值，然后优化它们与真实标签的交叉熵损失，接下来用 PyTorch 和 TensorFlow 实操一下
> ^sran-1680588090733
 
> [!srhl3] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680588184100>) [🌐](<http://localhost:7026/reading/6#id=1680588184100>)   
> 画精确度和 loss 的图很有必要
> ^sran-1680588184100
 
> [!srhl2] [[SR6@卷积神经网络（CNN）详解 - 腾讯云开发者社区 - 腾讯云|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/6#id=1680588275262>) [🌐](<http://localhost:7026/reading/6#id=1680588275262>) #CNN #一般   
> We don't minimize total loss to find the best function.
> ^sran-1680588275262
 
 