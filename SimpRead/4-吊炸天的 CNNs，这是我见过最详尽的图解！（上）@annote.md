---
title: "吊炸天的 CNNs，这是我见过最详尽的图解！（上）"
alias: 
  - "吊炸天的 CNNs，这是我见过最详尽的图解！（上）"
created-date: 2023-04-04T11:46:03+0800
type: Simpread
banner: "http://mmbiz.qpic.cn/mmbiz_jpg/oxeBxt7HHkuFSsLtm96oUSF8sym3Q5pFJbpibxicrYbYhXBhEpibWrWOaNaUVuyJSia5F486sPLnbejAL177FsrmcA/0?wx_fmt=jpeg "
banner_icon: 🔖
tag: 
idx: 4
---

# 吊炸天的 CNNs，这是我见过最详尽的图解！（上）

> [!example]- [🧷内部链接](<http://localhost:7026/unread/4>) [🌐外部链接](<https://mp.weixin.qq.com/s/x6NIkzQSgvl0_rfGe7Cjqg>)    
> URI:: [🧷](<http://localhost:7026/unread/4>) [🌐](<https://mp.weixin.qq.com/s/x6NIkzQSgvl0_rfGe7Cjqg>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/4>)

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
>  **Description**:: 学完此篇你还不会CNNs？！…… 不！可！能！
%%

> [!md] Metadata  
> **标题**:: [吊炸天的 CNNs，这是我见过最详尽的图解！（上）](https://mp.weixin.qq.com/s/x6NIkzQSgvl0_rfGe7Cjqg)  
> **日期**:: [[2023-04-04]]  

## Annotations


> [!srhl2] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680579961002>) [🌐](<http://localhost:7026/reading/4#id=1680579961002>)   
> CNNs 做的就是下面 3 件事：
> 
> 1. 读取图片；
> 
> 2. 提取特征；
> 
> 3. 图片分类。
> ^sran-1680579961002
 
> [!srhl4] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580105842>) [🌐](<http://localhost:7026/reading/4#id=1680580105842>)   
> ![](http://mmbiz.qpic.cn/mmbiz_jpg/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEf0FgrIJZXm2If0S7C9TvAUicuSAHdmkeprs1gCRFmZgxWN3RIibWLCnWA/0?wx_fmt=jpeg)
> ^sran-1680580105842
 
> [!srhl2] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580006950>) [🌐](<http://localhost:7026/reading/4#id=1680580006950>)   
> 而每一个像素点，都是由一个 0~255 的数字组成。
>  
> - 📝灰度图每个像素点一个数据，整张图就是个矩阵
> ^sran-1680580006950
 
> [!srhl2] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580158681>) [🌐](<http://localhost:7026/reading/4#id=1680580158681>)   
> 仍以小狗为例，过滤器会在图片上从头到尾 “滑过” 一遍
> 
> ![](http://mmbiz.qpic.cn/mmbiz_gif/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfaTj3rBDlInQawExd1ibJTfxIjjflva85tRJ0nlS937nwDBPdQxpiaDsg/0?wx_fmt=gif)
> ^sran-1680580158681
 
> [!srhl2] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580160160>) [🌐](<http://localhost:7026/reading/4#id=1680580160160>)   
> ![](http://mmbiz.qpic.cn/mmbiz_gif/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfaTj3rBDlInQawExd1ibJTfxIjjflva85tRJ0nlS937nwDBPdQxpiaDsg/0?wx_fmt=gif)
> ^sran-1680580160160
 
> [!srhl2] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580194968>) [🌐](<http://localhost:7026/reading/4#id=1680580194968>)   
> 每滑到一个地方，就将该地方的图像特征提取出来。
>  
> - 📝过滤器就是卷积，提取特征就是卷积结果，卷积后矩阵变小，图片也变小
> ^sran-1680580194968
 
> [!srhl3] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580402922>) [🌐](<http://localhost:7026/reading/4#id=1680580402922>)   
> ![](http://mmbiz.qpic.cn/mmbiz_jpg/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfL1sFEfJrOw1QgWGdIxFQJOic8IktQ4MwmBQJzhSRU9haKF6DFNc1yRA/0?wx_fmt=jpeg)
> ^sran-1680580402922
 
> [!srhl2] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580612856>) [🌐](<http://localhost:7026/reading/4#id=1680580612856>)   
> 每一个过滤器中的数值，都是算法自己学习来的，不需要我们费心去设置。
> ^sran-1680580612856
 
> [!srhl2] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580631192>) [🌐](<http://localhost:7026/reading/4#id=1680580631192>)   
> ① 设置过滤器的大小（用字母 “F” 表示）
> ^sran-1680580631192
 
> [!srhl2] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580639799>) [🌐](<http://localhost:7026/reading/4#id=1680580639799>)   
> 过滤器的尺寸越大，得到的图像细节就越少，最终得到的特征图的尺寸也更小。
> ^sran-1680580639799
 
> [!srhl2] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580642894>) [🌐](<http://localhost:7026/reading/4#id=1680580642894>)   
> ② 设置过滤器滑动的步幅数（用字母 “S” 表示）
> ^sran-1680580642894
 
> [!srhl2] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580650800>) [🌐](<http://localhost:7026/reading/4#id=1680580650800>)   
> 当然，你也可以将步幅设置为 2 或更多，但是通常情况下，我们会使用 S=1 或 S=2。
> ^sran-1680580650800
 
> [!srhl3] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580656541>) [🌐](<http://localhost:7026/reading/4#id=1680580656541>)   
> ③ 设置过滤器的个数（用字母 “K” 表示）
> ^sran-1680580656541
 
> [!srhl3] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580665142>) [🌐](<http://localhost:7026/reading/4#id=1680580665142>)   
> 所以你可以理解为 K=4，如下图：
> 
> ![](http://mmbiz.qpic.cn/mmbiz_png/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfGtR2d0LySXpUyxOVLzAgjZibwMgDOVkSXuviaOT7vRKohqGElQfmPD9w/0?wx_fmt=png)
> ^sran-1680580665142
 
> [!srhl3] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580666905>) [🌐](<http://localhost:7026/reading/4#id=1680580666905>)   
> ![](http://mmbiz.qpic.cn/mmbiz_png/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfGtR2d0LySXpUyxOVLzAgjZibwMgDOVkSXuviaOT7vRKohqGElQfmPD9w/0?wx_fmt=png)
> ^sran-1680580666905
 
> [!srhl3] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580682344>) [🌐](<http://localhost:7026/reading/4#id=1680580682344>)   
> 一张图片，在经过 4 种过滤器的提取后，会得到 4 种不同的特征图片：
> 
> ![](http://mmbiz.qpic.cn/mmbiz_png/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfkjicPyVdoiciawE9rKndg63icY1KtxhszzK7JzYVHgyqSSOibgOz1sMybrA/0?wx_fmt=png)
> ^sran-1680580682344
 
> [!srhl3] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580687969>) [🌐](<http://localhost:7026/reading/4#id=1680580687969>)   
> ![](http://mmbiz.qpic.cn/mmbiz_png/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfkjicPyVdoiciawE9rKndg63icY1KtxhszzK7JzYVHgyqSSOibgOz1sMybrA/0?wx_fmt=png)
> ^sran-1680580687969
 
> [!srhl5] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580695141>) [🌐](<http://localhost:7026/reading/4#id=1680580695141>)   
> “卷积” 输出的结果，是包含 “宽、高、深”3 个维度的：
> 
> ![](http://mmbiz.qpic.cn/mmbiz_png/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfhm0SQEUsx7LLxv0WDic0V0GnZLnS428AKxLGAnL9SrzIg3um66KOufQ/0?wx_fmt=png)
> ^sran-1680580695141
 
> [!srhl5] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580696732>) [🌐](<http://localhost:7026/reading/4#id=1680580696732>)   
> ![](http://mmbiz.qpic.cn/mmbiz_png/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfhm0SQEUsx7LLxv0WDic0V0GnZLnS428AKxLGAnL9SrzIg3um66KOufQ/0?wx_fmt=png)
> ^sran-1680580696732
 
> [!srhl2] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580714656>) [🌐](<http://localhost:7026/reading/4#id=1680580714656>)   
> CNNs 中，所有图片都是包含有 “宽、高、深”。
> ^sran-1680580714656
 
> [!srhl2] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580726131>) [🌐](<http://localhost:7026/reading/4#id=1680580726131>)   
> 经过 “卷积” 层的处理后，图片含有深度，这个“深度”，等于过滤器的个数。
> ^sran-1680580726131
 
> [!srhl4] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580733378>) [🌐](<http://localhost:7026/reading/4#id=1680580733378>)   
> ④ 设置是否补零（用字母 “P” 表示）
> ^sran-1680580733378
 
> [!srhl3] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580775542>) [🌐](<http://localhost:7026/reading/4#id=1680580775542>)   
> 当然，你也可以得到一个和原始图片大小一样的特征图，这就需要采用 “在原始图片外围补零” 的方法：
> 
> ![](http://mmbiz.qpic.cn/mmbiz_jpg/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfuZ0hruVlT9IiaiceBVLfhDq18oZKHPBqLQD8GhX9J4bIAL4zJHvicXLkQ/0?wx_fmt=jpeg)
> ^sran-1680580775542
 
> [!srhl3] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580776754>) [🌐](<http://localhost:7026/reading/4#id=1680580776754>)   
> ![](http://mmbiz.qpic.cn/mmbiz_jpg/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfuZ0hruVlT9IiaiceBVLfhDq18oZKHPBqLQD8GhX9J4bIAL4zJHvicXLkQ/0?wx_fmt=jpeg)
> ^sran-1680580776754
 
> [!srhl3] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580790702>) [🌐](<http://localhost:7026/reading/4#id=1680580790702>)   
> 假设你的过滤器大小为 F，滑动步幅 S=1，想要实现这一目标，补零的个数应为：
> 
> ![](http://mmbiz.qpic.cn/mmbiz_png/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfdicgoqaL03TKnakLhdmRDAvFzoicZrhL1dZvu49V1FFI7blicGia2zL10A/0?wx_fmt=png)
> ^sran-1680580790702
 
> [!srhl3] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580792183>) [🌐](<http://localhost:7026/reading/4#id=1680580792183>)   
> ![](http://mmbiz.qpic.cn/mmbiz_png/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfdicgoqaL03TKnakLhdmRDAvFzoicZrhL1dZvu49V1FFI7blicGia2zL10A/0?wx_fmt=png)
> ^sran-1680580792183
 
> [!srhl4] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580819206>) [🌐](<http://localhost:7026/reading/4#id=1680580819206>)   
> 假设原始图片的大小为 W，当我们设置了
> 
> 过滤器的大小 (F)、滑动的步幅数 (S)、以及补零的圈数 (P)
> 
> 实际上，得到的特征图片大小为：
> 
> ![](http://mmbiz.qpic.cn/mmbiz_png/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfqq3zH6TUfh7f18nJna3n3Sf8bkM0Tjna8ZRrcoYxPASZaQ1oXNZf7w/0?wx_fmt=png)
> ^sran-1680580819206
 
> [!srhl4] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580825952>) [🌐](<http://localhost:7026/reading/4#id=1680580825952>)   
> ![](http://mmbiz.qpic.cn/mmbiz_png/oxeBxt7HHkvdHVLJL5PGm7FsiaOWE8LEfqq3zH6TUfh7f18nJna3n3Sf8bkM0Tjna8ZRrcoYxPASZaQ1oXNZf7w/0?wx_fmt=png)
> ^sran-1680580825952
 
> [!srhl3] [[SR4@吊炸天的 CNNs，这是我见过最详尽的图解！（上）|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/4#id=1680580852418>) [🌐](<http://localhost:7026/reading/4#id=1680580852418>)   
> 所以，当我们设置这些超参数时，需要遵循一个原则，即 “上面公式得到的结果，必须为一个整数”：
> ^sran-1680580852418
 
 