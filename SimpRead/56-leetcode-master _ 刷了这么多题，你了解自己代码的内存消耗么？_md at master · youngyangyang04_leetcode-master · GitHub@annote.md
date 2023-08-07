---
title: "leetcode-master _ 刷了这么多题，你了解自己代码的内存消耗么？_md at master · youngyangyang04_leetcode-master · GitHub"
alias: 
  - "leetcode-master _ 刷了这么多题，你了解自己代码的内存消耗么？_md at master · youngyangyang04_leetcode-master · GitHub"
created-date: 2023-04-29T23:04:47+0800
type: Simpread
banner: "https://opengraph.githubassets.com/ee6ab2dfd99b657143d7878f77ec8d9feaf37bffcefa6c07baa57d98974ffca5/youngyangyang04/leetcode-master "
banner_icon: 🔖
tag: 
idx: 56
---

# leetcode-master _ 刷了这么多题，你了解自己代码的内存消耗么？_md at master · youngyangyang04_leetcode-master · GitHub

> [!example]- [🧷内部链接](<http://localhost:7026/unread/56>) [🌐外部链接](<https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E5%88%B7%E4%BA%86%E8%BF%99%E4%B9%88%E5%A4%9A%E9%A2%98%EF%BC%8C%E4%BD%A0%E4%BA%86%E8%A7%A3%E8%87%AA%E5%B7%B1%E4%BB%A3%E7%A0%81%E7%9A%84%E5%86%85%E5%AD%98%E6%B6%88%E8%80%97%E4%B9%88%EF%BC%9F.md>)    
> URI:: [🧷](<http://localhost:7026/unread/56>) [🌐](<https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E5%88%B7%E4%BA%86%E8%BF%99%E4%B9%88%E5%A4%9A%E9%A2%98%EF%BC%8C%E4%BD%A0%E4%BA%86%E8%A7%A3%E8%87%AA%E5%B7%B1%E4%BB%A3%E7%A0%81%E7%9A%84%E5%86%85%E5%AD%98%E6%B6%88%E8%80%97%E4%B9%88%EF%BC%9F.md>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/56>)

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
>  **Description**:: 《代码随想录》LeetCode 刷题攻略：200道经典题目刷题顺序，共60w字的详细图解，视频难点剖析，50余张思维导图，支持C++，Java，Python，Go，JavaScript等多语言版本，从此算法学习不再迷茫！🔥🔥 来看看，你会发现相见恨晚！🚀  - leetcode-master/刷了这么多题，你了解自己代码的内存消耗么？.md at master · youngyangyang...
%%

> [!md] Metadata  
> **标题**:: [leetcode-master _ 刷了这么多题，你了解自己代码的内存消耗么？_md at master · youngyangyang04_leetcode-master · GitHub](https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E5%88%B7%E4%BA%86%E8%BF%99%E4%B9%88%E5%A4%9A%E9%A2%98%EF%BC%8C%E4%BD%A0%E4%BA%86%E8%A7%A3%E8%87%AA%E5%B7%B1%E4%BB%A3%E7%A0%81%E7%9A%84%E5%86%85%E5%AD%98%E6%B6%88%E8%80%97%E4%B9%88%EF%BC%9F.md)  
> **日期**:: [[2023-04-29]]  

## Annotations


> [!srhl2] [[SR56@leetcode-master _ 刷了这么多题，你了解自己代码的内存消耗么？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/56#id=1682780686497>) [🌐](<http://localhost:7026/reading/56#id=1682780686497>) #知识/算法/内存管理   
> 不是所有的硬件平台都能访问任意内存地址上的任意数据，某些硬件平台只能在某些地址处取某些特定类型的数据，否则抛出硬件异常。
> ^sran-1682780686497
 
> [!srhl2] [[SR56@leetcode-master _ 刷了这么多题，你了解自己代码的内存消耗么？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/56#id=1682780726202>) [🌐](<http://localhost:7026/reading/56#id=1682780726202>)   
> 经过内存对齐后，CPU 访问内存的速度大大提升
> ^sran-1682780726202
 
> [!srhl2] [[SR56@leetcode-master _ 刷了这么多题，你了解自己代码的内存消耗么？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/56#id=1682780796984>) [🌐](<http://localhost:7026/reading/56#id=1682780796984>)   
> CPU 读取内存不是一次读取单个字节，而是一块一块的来读取内存，块的大小可以是 2，4，8，16 个字节，具体取多少个字节取决于硬件。
> ^sran-1682780796984
 
> [!srhl2] [[SR56@leetcode-master _ 刷了这么多题，你了解自己代码的内存消耗么？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/56#id=1682780803256>) [🌐](<http://localhost:7026/reading/56#id=1682780803256>)   
> 假设 CPU 把内存划分为 4 字节大小的块，要读取一个 4 字节大小的 int 型数据，来看一下这两种情况下 CPU 的工作量：
> ^sran-1682780803256
 
 