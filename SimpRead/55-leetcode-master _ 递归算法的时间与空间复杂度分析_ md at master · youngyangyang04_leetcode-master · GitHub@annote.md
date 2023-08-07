---
title: "leetcode-master _ 递归算法的时间与空间复杂度分析_ md at master · youngyangyang04_leetcode-master · GitHub"
alias: 
  - "leetcode-master _ 递归算法的时间与空间复杂度分析_ md at master · youngyangyang04_leetcode-master · GitHub"
created-date: 2023-04-29T22:29:17+0800
type: Simpread
banner: "https://opengraph.githubassets.com/ee6ab2dfd99b657143d7878f77ec8d9feaf37bffcefa6c07baa57d98974ffca5/youngyangyang04/leetcode-master "
banner_icon: 🔖
tag: 
idx: 55
---

# leetcode-master _ 递归算法的时间与空间复杂度分析_ md at master · youngyangyang04_leetcode-master · GitHub

> [!example]- [🧷内部链接](<http://localhost:7026/unread/55>) [🌐外部链接](<https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E9%80%92%E5%BD%92%E7%AE%97%E6%B3%95%E7%9A%84%E6%97%B6%E9%97%B4%E4%B8%8E%E7%A9%BA%E9%97%B4%E5%A4%8D%E6%9D%82%E5%BA%A6%E5%88%86%E6%9E%90.md>)    
> URI:: [🧷](<http://localhost:7026/unread/55>) [🌐](<https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E9%80%92%E5%BD%92%E7%AE%97%E6%B3%95%E7%9A%84%E6%97%B6%E9%97%B4%E4%B8%8E%E7%A9%BA%E9%97%B4%E5%A4%8D%E6%9D%82%E5%BA%A6%E5%88%86%E6%9E%90.md>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/55>)

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
>  **Description**:: 《代码随想录》LeetCode 刷题攻略：200道经典题目刷题顺序，共60w字的详细图解，视频难点剖析，50余张思维导图，支持C++，Java，Python，Go，JavaScript等多语言版本，从此算法学习不再迷茫！🔥🔥 来看看，你会发现相见恨晚！🚀  - leetcode-master/递归算法的时间与空间复杂度分析.md at master · youngyangyang04/lee...
%%

> [!md] Metadata  
> **标题**:: [leetcode-master _ 递归算法的时间与空间复杂度分析_ md at master · youngyangyang04_leetcode-master · GitHub](https://github.com/youngyangyang04/leetcode-master/blob/master/problems/%E5%89%8D%E5%BA%8F/%E9%80%92%E5%BD%92%E7%AE%97%E6%B3%95%E7%9A%84%E6%97%B6%E9%97%B4%E4%B8%8E%E7%A9%BA%E9%97%B4%E5%A4%8D%E6%9D%82%E5%BA%A6%E5%88%86%E6%9E%90.md)  
> **日期**:: [[2023-04-29]]  

## Annotations


> [!srhl5] [[SR55@leetcode-master _ 递归算法的时间与空间复杂度分析_ md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/55#id=1682778557522>) [🌐](<http://localhost:7026/reading/55#id=1682778557522>) #知识/算法/空间复杂度   
> ```  
> int fibonacci(int i) {  
> if(i <= 0) return 0;  
> if(i == 1) return 1;  
> return fibonacci(i-1) + fibonacci(i-2);  
> }  
> ```
> ^sran-1682778557522
 
> [!srhl3] [[SR55@leetcode-master _ 递归算法的时间与空间复杂度分析_ md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/55#id=1682778614685>) [🌐](<http://localhost:7026/reading/55#id=1682778614685>)   
> 递归算法的时间复杂度本质上是要看: **递归的次数 * 每次递归的时间复杂度**。
> ^sran-1682778614685
 
> [!srhl2] [[SR55@leetcode-master _ 递归算法的时间与空间复杂度分析_ md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/55#id=1682778867801>) [🌐](<http://localhost:7026/reading/55#id=1682778867801>)   
> 在这棵二叉树中每一个节点都是一次递归，那么这棵树有多少个节点呢？
> ^sran-1682778867801
 
> [!srhl2] [[SR55@leetcode-master _ 递归算法的时间与空间复杂度分析_ md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/55#id=1682778856357>) [🌐](<http://localhost:7026/reading/55#id=1682778856357>)   
> 一棵深度（按根节点深度为 1）为 k 的二叉树最多可以有 2^k - 1 个节点
> ^sran-1682778856357
 
> [!srhl4] [[SR55@leetcode-master _ 递归算法的时间与空间复杂度分析_ md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/55#id=1682779124410>) [🌐](<http://localhost:7026/reading/55#id=1682779124410>)   
> ```  
> // 版本二  
> int fibonacci(int first, int second, int n) {  
> if (n <= 0) {  
> return 0;  
> }  
> if (n < 3) {  
> return 1;  
> }  
> else if (n == 3) {  
> return first + second;  
> }  
> else {  
> return fibonacci(second, first + second, n - 1);  
> }  
> }  
> ```
> ^sran-1682779124410
 
> [!srhl2] [[SR55@leetcode-master _ 递归算法的时间与空间复杂度分析_ md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/55#id=1682779127612>) [🌐](<http://localhost:7026/reading/55#id=1682779127612>)   
> 因为每次递归的时候 n 减 1，即只是递归了 n 次，所以时间复杂度是 O(n)。
> 
> 同理递归的深度依然是 n，每次递归所需的空间也是常数，所以空间复杂度依然是 O(n)。
> ^sran-1682779127612
 
> [!srhl3] [[SR55@leetcode-master _ 递归算法的时间与空间复杂度分析_ md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/55#id=1682779252651>) [🌐](<http://localhost:7026/reading/55#id=1682779252651>)   
> 再看看如何求其空间复杂度呢，这里给大家提供一个公式：**递归算法的空间复杂度 = 每次递归的空间复杂度 * 递归深度**
> ^sran-1682779252651
 
> [!srhl2] [[SR55@leetcode-master _ 递归算法的时间与空间复杂度分析_ md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/55#id=1682779690322>) [🌐](<http://localhost:7026/reading/55#id=1682779690322>)   
> 使用递归算法并不一定是在性能上是最优的，但递归确实简化的代码层面的复杂度。
> ^sran-1682779690322
 
> [!srhl3] [[SR55@leetcode-master _ 递归算法的时间与空间复杂度分析_ md at master · youngyangyang04_leetcode-master · GitHub|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/55#id=1682779904560>) [🌐](<http://localhost:7026/reading/55#id=1682779904560>)   
> 二分查找的时间复杂度是 O(logn)，那么递归二分查找的空间复杂度是多少呢？
> ^sran-1682779904560
 
 