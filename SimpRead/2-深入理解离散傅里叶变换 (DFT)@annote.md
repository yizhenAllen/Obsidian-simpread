---
title: "深入理解离散傅里叶变换 (DFT)"
alias: 
  - "深入理解离散傅里叶变换 (DFT)"
created-date: 2023-04-04T02:05:00+0800
type: Simpread
banner: "https://picx.zhimg.com/v2-4632fe161ba406e40d4e362e5c9914f1_720w.jpg?source=172ae18b "
banner_icon: 🔖
tag: 
idx: 2
---

# 深入理解离散傅里叶变换 (DFT)

> [!example]- [🧷内部链接](<http://localhost:7026/unread/2>) [🌐外部链接](<https://zhuanlan.zhihu.com/p/71582795>)    
> URI:: [🧷](<http://localhost:7026/unread/2>) [🌐](<https://zhuanlan.zhihu.com/p/71582795>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/2>)

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
>  **Description**:: 前面写过一篇傅里叶变换的文章： furious：傅里叶变换学习心得但是在工程应用中，得益于数字技术的应用，绝大多数傅里叶变换的应用都是采用离散傅里叶变换（DFT），更确切的说，是它的快速算法FFT。这篇文章再来写…
%%

> [!md] Metadata  
> **标题**:: [深入理解离散傅里叶变换 (DFT)](https://zhuanlan.zhihu.com/p/71582795)  
> **日期**:: [[2023-04-04]]  

## Annotations


> [!srhl6] [[SR2@深入理解离散傅里叶变换 (DFT)|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/2#id=1680547209072>) [🌐](<http://localhost:7026/reading/2#id=1680547209072>) #测试   
> 分量。当 N 是偶数的时
>  
> - 📝这就只是个测试

> ^sran-1680547209072
 
> [!srhl2] [[SR2@深入理解离散傅里叶变换 (DFT)|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/2#id=1680547155141>) [🌐](<http://localhost:7026/reading/2#id=1680547155141>)   
> 再从 x[n]x[n] 出发（假设 N 是偶数），
> ^sran-1680547155141
 
 