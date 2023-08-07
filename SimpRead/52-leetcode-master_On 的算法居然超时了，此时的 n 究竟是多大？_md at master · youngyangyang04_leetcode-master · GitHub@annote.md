---
title: "leetcode-master_On 的算法居然超时了，此时的 n 究竟是多大？_md at master · youngyangyang04_leetcode-master · GitHub"
alias: 
  - "leetcode-master_On 的算法居然超时了，此时的 n 究竟是多大？_md at master · youngyangyang04_leetcode-master · GitHub"
created-date: 2023-04-29T21:04:30+0800
type: Simpread
banner: "https://opengraph.githubassets.com/e33d68483984a3d2b0bfca2e5365be44cdc62b972cd2a18e382fff7543067874/youngyangyang04/leetcode-master "
banner_icon: 🔖
tag: 
idx: 52
---

# leetcode-master_On 的算法居然超时了，此时的 n 究竟是多大？_md at master · youngyangyang04_leetcode-master · GitHub

> [!example]- [🧷内部链接](<http://localhost:7026/unread/52>) [🌐外部链接](<https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/On%E7%9A%84%E7%AE%97%E6%B3%95%E5%B1%85%E7%84%B6%E8%B6%85%E6%97%B6%E4%BA%86%EF%BC%8C%E6%AD%A4%E6%97%B6%E7%9A%84n%E7%A9%B6%E7%AB%9F%E6%98%AF%E5%A4%9A%E5%A4%A7%EF%BC%9F.md>)    
> URI:: [🧷](<http://localhost:7026/unread/52>) [🌐](<https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/On%E7%9A%84%E7%AE%97%E6%B3%95%E5%B1%85%E7%84%B6%E8%B6%85%E6%97%B6%E4%BA%86%EF%BC%8C%E6%AD%A4%E6%97%B6%E7%9A%84n%E7%A9%B6%E7%AB%9F%E6%98%AF%E5%A4%9A%E5%A4%A7%EF%BC%9F.md>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/52>)

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
>  **Description**:: 《代码随想录》LeetCode 刷题攻略：200道经典题目刷题顺序，共60w字的详细图解，视频难点剖析，50余张思维导图，支持C++，Java，Python，Go，JavaScript等多语言版本，从此算法学习不再迷茫！🔥🔥 来看看，你会发现相见恨晚！🚀  - leetcode-master/On的算法居然超时了，此时的n究竟是多大？.md at master · youngyangyang...
%%

> [!md] Metadata  
> **标题**:: [leetcode-master_On 的算法居然超时了，此时的 n 究竟是多大？_md at master · youngyangyang04_leetcode-master · GitHub](https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/On%E7%9A%84%E7%AE%97%E6%B3%95%E5%B1%85%E7%84%B6%E8%B6%85%E6%97%B6%E4%BA%86%EF%BC%8C%E6%AD%A4%E6%97%B6%E7%9A%84n%E7%A9%B6%E7%AB%9F%E6%98%AF%E5%A4%9A%E5%A4%A7%EF%BC%9F.md)  
> **日期**:: [[2023-04-29]]  

## Annotations


> [!srhl2] [[SR52@leetcode-master_On 的算法居然超时了，此时的 n 究竟是多大？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/52#id=1682773469082>) [🌐](<http://localhost:7026/reading/52#id=1682773469082>)   
> 所以 1GHz = 10 亿 Hz，表示 CPU 可以一秒脉冲 10 亿次（有 10 亿个时钟周期），这里不要简单理解一个时钟周期就是一次 CPU 运算。
> ^sran-1682773469082
 
> [!srhl2] [[SR52@leetcode-master_On 的算法居然超时了，此时的 n 究竟是多大？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/52#id=1682773676541>) [🌐](<http://localhost:7026/reading/52#id=1682773676541>)   
> ![](https://camo.githubusercontent.com/3fd70e2de3a73048749293b0bdb088679c8435c2ea8c55d3d607d25320db17c7/68747470733a2f2f636f64652d7468696e6b696e672d313235333835353039332e66696c652e6d7971636c6f75642e636f6d2f706963732f32303230303732393230303031383436302d32303233303331303132343331353039332e706e67)
> ^sran-1682773676541
 
> [!srhl2] [[SR52@leetcode-master_On 的算法居然超时了，此时的 n 究竟是多大？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/52#id=1682773682850>) [🌐](<http://localhost:7026/reading/52#id=1682773682850>)   
> ![](https://camo.githubusercontent.com/6ffd19091cf0b256c7bdcd038f3da961c9a7c5746a5079574bb58f92635bd510/68747470733a2f2f636f64652d7468696e6b696e672d313235333835353039332e66696c652e6d7971636c6f75642e636f6d2f706963732f323032303037323931393539303937302d32303233303331303132343331383533322e706e67)
> ^sran-1682773682850
 
> [!srhl3] [[SR52@leetcode-master_On 的算法居然超时了，此时的 n 究竟是多大？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/52#id=1682773704326>) [🌐](<http://localhost:7026/reading/52#id=1682773704326>)   
> ![](https://camo.githubusercontent.com/f933ba5aaba59c76fb1a1845564aed5b3bad0fa149479ebfb4273e840b483798/68747470733a2f2f636f64652d7468696e6b696e672d313235333835353039332e66696c652e6d7971636c6f75642e636f6d2f706963732f32303230313230383233313535393137352d32303233303331303132343332353135322e706e67)
> ^sran-1682773704326
 
 