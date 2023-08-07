---
title: "leetcode-master _ 关于空间复杂度，可能有几个疑问？_md at master · youngyangyang04_leetcode-master · GitHub"
alias: 
  - "leetcode-master _ 关于空间复杂度，可能有几个疑问？_md at master · youngyangyang04_leetcode-master · GitHub"
created-date: 2023-04-29T22:24:15+0800
type: Simpread
banner: "https://opengraph.githubassets.com/e33d68483984a3d2b0bfca2e5365be44cdc62b972cd2a18e382fff7543067874/youngyangyang04/leetcode-master "
banner_icon: 🔖
tag: 
idx: 54
---

# leetcode-master _ 关于空间复杂度，可能有几个疑问？_md at master · youngyangyang04_leetcode-master · GitHub

> [!example]- [🧷内部链接](<http://localhost:7026/unread/54>) [🌐外部链接](<https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E5%85%B3%E4%BA%8E%E7%A9%BA%E9%97%B4%E5%A4%8D%E6%9D%82%E5%BA%A6%EF%BC%8C%E5%8F%AF%E8%83%BD%E6%9C%89%E5%87%A0%E4%B8%AA%E7%96%91%E9%97%AE%EF%BC%9F.md>)    
> URI:: [🧷](<http://localhost:7026/unread/54>) [🌐](<https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E5%85%B3%E4%BA%8E%E7%A9%BA%E9%97%B4%E5%A4%8D%E6%9D%82%E5%BA%A6%EF%BC%8C%E5%8F%AF%E8%83%BD%E6%9C%89%E5%87%A0%E4%B8%AA%E7%96%91%E9%97%AE%EF%BC%9F.md>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/54>)

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
>  **Description**:: 《代码随想录》LeetCode 刷题攻略：200道经典题目刷题顺序，共60w字的详细图解，视频难点剖析，50余张思维导图，支持C++，Java，Python，Go，JavaScript等多语言版本，从此算法学习不再迷茫！🔥🔥 来看看，你会发现相见恨晚！🚀  - leetcode-master/关于空间复杂度，可能有几个疑问？.md at master · youngyangyang04/le...
%%

> [!md] Metadata  
> **标题**:: [leetcode-master _ 关于空间复杂度，可能有几个疑问？_md at master · youngyangyang04_leetcode-master · GitHub](https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E5%85%B3%E4%BA%8E%E7%A9%BA%E9%97%B4%E5%A4%8D%E6%9D%82%E5%BA%A6%EF%BC%8C%E5%8F%AF%E8%83%BD%E6%9C%89%E5%87%A0%E4%B8%AA%E7%96%91%E9%97%AE%EF%BC%9F.md)  
> **日期**:: [[2023-04-29]]  

## Annotations


> [!srhl2] [[SR54@leetcode-master _ 关于空间复杂度，可能有几个疑问？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/54#id=1682778254300>) [🌐](<http://localhost:7026/reading/54#id=1682778254300>) #知识/算法/空间复杂度   
> 空间复杂度 (Space Complexity) 记作 S(n) 依然使用大 O 来表示。利用程序的空间复杂度，可以对程序运行中需要多少内存有个预先估计。
> ^sran-1682778254300
 
> [!srhl3] [[SR54@leetcode-master _ 关于空间复杂度，可能有几个疑问？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/54#id=1682778323764>) [🌐](<http://localhost:7026/reading/54#id=1682778323764>)   
> 这里强调一下**空间复杂度是考虑程序运行时占用内存的大小，而不是可执行文件的大小。**
> ^sran-1682778323764
 
> [!srhl3] [[SR54@leetcode-master _ 关于空间复杂度，可能有几个疑问？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/54#id=1682778421656>) [🌐](<http://localhost:7026/reading/54#id=1682778421656>)   
> ```  
> int j = 0;  
> for (int i = 0; i < n; i++) {  
> j++;  
> }  
> ```
> ^sran-1682778421656
 
> [!srhl3] [[SR54@leetcode-master _ 关于空间复杂度，可能有几个疑问？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/54#id=1682778427324>) [🌐](<http://localhost:7026/reading/54#id=1682778427324>)   
> 第一段代码可以看出，随着 n 的变化，所需开辟的内存空间并不会随着 n 的变化而变化。即此算法空间复杂度为一个常量，所以表示为大 O(1)。
> ^sran-1682778427324
 
> [!srhl5] [[SR54@leetcode-master _ 关于空间复杂度，可能有几个疑问？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/54#id=1682778436771>) [🌐](<http://localhost:7026/reading/54#id=1682778436771>)   
> 当消耗空间和输入参数 n 保持线性增长，这样的空间复杂度为 O(n)，来看一下这段 C++ 代码
> ^sran-1682778436771
 
> [!srhl5] [[SR54@leetcode-master _ 关于空间复杂度，可能有几个疑问？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/54#id=1682778440624>) [🌐](<http://localhost:7026/reading/54#id=1682778440624>)   
> ```  
> int* a = new int(n);  
> for (int i = 0; i < n; i++) {  
> a[i] = i;  
> }  
> ```
> ^sran-1682778440624
 
> [!srhl3] [[SR54@leetcode-master _ 关于空间复杂度，可能有几个疑问？_md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/54#id=1682778464874>) [🌐](<http://localhost:7026/reading/54#id=1682778464874>)   
> 空间复杂度是 logn 的情况确实有些特殊，其实是在**递归的时候，会出现空间复杂度为 logn 的情况**。
> ^sran-1682778464874
 
 