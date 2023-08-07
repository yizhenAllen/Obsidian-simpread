---
title: "leetcode-master _ 关于时间复杂度，你不知道的都在这里！_md at master · youngyangyang04_leetcode-master · GitHub"
alias: 
  - "leetcode-master _ 关于时间复杂度，你不知道的都在这里！_md at master · youngyangyang04_leetcode-master · GitHub"
created-date: 2023-04-29T20:48:38+0800
type: Simpread
banner: "https://opengraph.githubassets.com/731fb20488bb6a4bd27eedd316f74f3898f15aff88efbbb6a3c8b75741222007/youngyangyang04/leetcode-master "
banner_icon: 🔖
tag: 
idx: 51
---

# leetcode-master _ 关于时间复杂度，你不知道的都在这里！_md at master · youngyangyang04_leetcode-master · GitHub

> [!example]- [🧷内部链接](<http://localhost:7026/unread/51>) [🌐外部链接](<https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E5%85%B3%E4%BA%8E%E6%97%B6%E9%97%B4%E5%A4%8D%E6%9D%82%E5%BA%A6%EF%BC%8C%E4%BD%A0%E4%B8%8D%E7%9F%A5%E9%81%93%E7%9A%84%E9%83%BD%E5%9C%A8%E8%BF%99%E9%87%8C%EF%BC%81.md>)    
> URI:: [🧷](<http://localhost:7026/unread/51>) [🌐](<https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E5%85%B3%E4%BA%8E%E6%97%B6%E9%97%B4%E5%A4%8D%E6%9D%82%E5%BA%A6%EF%BC%8C%E4%BD%A0%E4%B8%8D%E7%9F%A5%E9%81%93%E7%9A%84%E9%83%BD%E5%9C%A8%E8%BF%99%E9%87%8C%EF%BC%81.md>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/51>)

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
>  **Description**:: 《代码随想录》LeetCode 刷题攻略：200道经典题目刷题顺序，共60w字的详细图解，视频难点剖析，50余张思维导图，支持C++，Java，Python，Go，JavaScript等多语言版本，从此算法学习不再迷茫！🔥🔥 来看看，你会发现相见恨晚！🚀  - leetcode-master/关于时间复杂度，你不知道的都在这里！.md at master · youngyangyang04/...
%%

> [!md] Metadata  
> **标题**:: [leetcode-master _ 关于时间复杂度，你不知道的都在这里！_md at master · youngyangyang04_leetcode-master · GitHub](https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E5%85%B3%E4%BA%8E%E6%97%B6%E9%97%B4%E5%A4%8D%E6%9D%82%E5%BA%A6%EF%BC%8C%E4%BD%A0%E4%B8%8D%E7%9F%A5%E9%81%93%E7%9A%84%E9%83%BD%E5%9C%A8%E8%BF%99%E9%87%8C%EF%BC%81.md)  
> **日期**:: [[2023-04-29]]  

## Annotations


> [!srhl3] [[SR51@leetcode-master _ 关于时间复杂度，你不知道的都在这里！_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/51#id=1682772529835>) [🌐](<http://localhost:7026/reading/51#id=1682772529835>) #知识/算法/大O   
> 算法导论给出的解释：**大 O 用来表示上界的**，当用它作为算法的最坏情况运行时间的上界，就是对任意数据输入的运行时间的上界。
> ^sran-1682772529835
 
> [!srhl3] [[SR51@leetcode-master _ 关于时间复杂度，你不知道的都在这里！_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/51#id=1682772535655>) [🌐](<http://localhost:7026/reading/51#id=1682772535655>)   
> 同样的同理再看一下快速排序，都知道快速排序是 O(nlogn)，但是当数据已经有序情况下，快速排序的时间复杂度是 O(n^2) 的，**所以严格从大 O 的定义来讲，快速排序的时间复杂度应该是 O(n^2)**。
> ^sran-1682772535655
 
> [!srhl5] [[SR51@leetcode-master _ 关于时间复杂度，你不知道的都在这里！_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/51#id=1682772540599>) [🌐](<http://localhost:7026/reading/51#id=1682772540599>)   
> ![](https://camo.githubusercontent.com/92ebcf1c7ee1ae0f4f7c1161d000fb1f16d72f717e35884e2d40e5d6a3b0d67b/68747470733a2f2f636f64652d7468696e6b696e672d313235333835353039332e66696c652e6d7971636c6f75642e636f6d2f706963732f32303230303732383138353734353631312d32303233303331303132333834343330362e706e67)
> ^sran-1682772540599
 
> [!srhl2] [[SR51@leetcode-master _ 关于时间复杂度，你不知道的都在这里！_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/51#id=1682772552226>) [🌐](<http://localhost:7026/reading/51#id=1682772552226>)   
> 这里就又涉及到大 O 的定义，**因为大 O 就是数据量级突破一个点且数据量级非常大的情况下所表现出的时间复杂度，这个数据量也就是常数项系数已经不起决定性作用的数据量**。
> ^sran-1682772552226
 
> [!srhl5] [[SR51@leetcode-master _ 关于时间复杂度，你不知道的都在这里！_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/51#id=1682772517671>) [🌐](<http://localhost:7026/reading/51#id=1682772517671>)   
> O(1) 常数阶 < O(logn) 对数阶 < O(n) 线性阶 < O(nlogn) 线性对数阶 < O(n^2) 平方阶 < O(n^3) 立方阶 < O(2^n) 指数阶
> ^sran-1682772517671
 
> [!srhl3] [[SR51@leetcode-master _ 关于时间复杂度，你不知道的都在这里！_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/51#id=1682772557800>) [🌐](<http://localhost:7026/reading/51#id=1682772557800>)   
> 但是也要注意大常数，如果这个常数非常大，例如 10^7 ，10^9 ，那么常数就是不得不考虑的因素了。
> ^sran-1682772557800
 
> [!srhl5] [[SR51@leetcode-master _ 关于时间复杂度，你不知道的都在这里！_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/51#id=1682773177964>) [🌐](<http://localhost:7026/reading/51#id=1682773177964>)   
> 找出 n 个字符串中相同的两个字符串（假设这里只有两个相同的字符串）。
> 
> 如果是暴力枚举的话，时间复杂度是多少呢，是 O(n^2) 么？
> ^sran-1682773177964
 
> [!srhl2] [[SR51@leetcode-master _ 关于时间复杂度，你不知道的都在这里！_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/51#id=1682773162458>) [🌐](<http://localhost:7026/reading/51#id=1682773162458>)   
> 这里一些同学会忽略了字符串比较的时间消耗，这里并不像 int 型数字做比较那么简单
> ^sran-1682773162458
 
> [!srhl2] [[SR51@leetcode-master _ 关于时间复杂度，你不知道的都在这里！_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/51#id=1682773174704>) [🌐](<http://localhost:7026/reading/51#id=1682773174704>)   
> 字符串比较依然要消耗 m 次操作（m 也就是字母串的长度），所以时间复杂度是 O(m × n × n)
> ^sran-1682773174704
 
> [!srhl5] [[SR51@leetcode-master _ 关于时间复杂度，你不知道的都在这里！_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/51#id=1682773213139>) [🌐](<http://localhost:7026/reading/51#id=1682773213139>)   
> 先排对 n 个字符串按字典序来排序，排序后 n 个字符串就是有序的，意味着两个相同的字符串就是挨在一起，然后在遍历一遍 n 个字符串，这样就找到两个相同的字符串了。
> ^sran-1682773213139
 
 