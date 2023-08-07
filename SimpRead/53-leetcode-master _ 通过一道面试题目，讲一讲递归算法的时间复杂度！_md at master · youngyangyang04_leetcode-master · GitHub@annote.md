---
title: "leetcode-master _ 通过一道面试题目，讲一讲递归算法的时间复杂度！_md at master · youngyangyang04_leetcode-master · GitHub"
alias: 
  - "leetcode-master _ 通过一道面试题目，讲一讲递归算法的时间复杂度！_md at master · youngyangyang04_leetcode-master · GitHub"
created-date: 2023-04-29T21:26:45+0800
type: Simpread
banner: "https://opengraph.githubassets.com/e33d68483984a3d2b0bfca2e5365be44cdc62b972cd2a18e382fff7543067874/youngyangyang04/leetcode-master "
banner_icon: 🔖
tag: 
idx: 53
---

# leetcode-master _ 通过一道面试题目，讲一讲递归算法的时间复杂度！_md at master · youngyangyang04_leetcode-master · GitHub

> [!example]- [🧷内部链接](<http://localhost:7026/unread/53>) [🌐外部链接](<https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E9%80%9A%E8%BF%87%E4%B8%80%E9%81%93%E9%9D%A2%E8%AF%95%E9%A2%98%E7%9B%AE%EF%BC%8C%E8%AE%B2%E4%B8%80%E8%AE%B2%E9%80%92%E5%BD%92%E7%AE%97%E6%B3%95%E7%9A%84%E6%97%B6%E9%97%B4%E5%A4%8D%E6%9D%82%E5%BA%A6%EF%BC%81.md>)    
> URI:: [🧷](<http://localhost:7026/unread/53>) [🌐](<https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E9%80%9A%E8%BF%87%E4%B8%80%E9%81%93%E9%9D%A2%E8%AF%95%E9%A2%98%E7%9B%AE%EF%BC%8C%E8%AE%B2%E4%B8%80%E8%AE%B2%E9%80%92%E5%BD%92%E7%AE%97%E6%B3%95%E7%9A%84%E6%97%B6%E9%97%B4%E5%A4%8D%E6%9D%82%E5%BA%A6%EF%BC%81.md>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/53>)

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
>  **Description**:: 《代码随想录》LeetCode 刷题攻略：200道经典题目刷题顺序，共60w字的详细图解，视频难点剖析，50余张思维导图，支持C++，Java，Python，Go，JavaScript等多语言版本，从此算法学习不再迷茫！🔥🔥 来看看，你会发现相见恨晚！🚀  - leetcode-master/通过一道面试题目，讲一讲递归算法的时间复杂度！.md at master · youngyangya...
%%

> [!md] Metadata  
> **标题**:: [leetcode-master _ 通过一道面试题目，讲一讲递归算法的时间复杂度！_md at master · youngyangyang04_leetcode-master · GitHub](https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E9%80%9A%E8%BF%87%E4%B8%80%E9%81%93%E9%9D%A2%E8%AF%95%E9%A2%98%E7%9B%AE%EF%BC%8C%E8%AE%B2%E4%B8%80%E8%AE%B2%E9%80%92%E5%BD%92%E7%AE%97%E6%B3%95%E7%9A%84%E6%97%B6%E9%97%B4%E5%A4%8D%E6%9D%82%E5%BA%A6%EF%BC%81.md)  
> **日期**:: [[2023-04-29]]  

## Annotations


> [!srhl2] [[SR53@leetcode-master _ 通过一道面试题目，讲一讲递归算法的时间复杂度！_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/53#id=1682774803848>) [🌐](<http://localhost:7026/reading/53#id=1682774803848>) #知识/算法/递归   
> 同样使用递归算法，有的同学会写出了 O(n) 的代码，有的同学就写出了 O(logn) 的代码
> ^sran-1682774803848
 
> [!srhl2] [[SR53@leetcode-master _ 通过一道面试题目，讲一讲递归算法的时间复杂度！_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/53#id=1682777738883>) [🌐](<http://localhost:7026/reading/53#id=1682777738883>)   
> 一些同学可能一看到递归就想到了 O(log n)，其实并不是这样，递归算法的时间复杂度本质上是要看: **递归的次数 * 每次递归中的操作次数**。
> ^sran-1682777738883
 
> [!srhl3] [[SR53@leetcode-master _ 通过一道面试题目，讲一讲递归算法的时间复杂度！_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/53#id=1682778696069>) [🌐](<http://localhost:7026/reading/53#id=1682778696069>)   
> 这棵树上每一个节点就代表着一次递归并进行了一次相乘操作
> ^sran-1682778696069
 
> [!srhl2] [[SR53@leetcode-master _ 通过一道面试题目，讲一讲递归算法的时间复杂度！_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/53#id=1682778004388>) [🌐](<http://localhost:7026/reading/53#id=1682778004388>)   
> 可以看出这道题目非常简单，但是又很考究算法的功底，特别是对递归的理解，这也是我面试别人的时候用过的一道题，所以整个情景我才写的如此逼真，哈哈。
> ^sran-1682778004388
 
 