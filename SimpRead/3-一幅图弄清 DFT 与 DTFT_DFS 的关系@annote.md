---
title: "一幅图弄清 DFT 与 DTFT_DFS 的关系"
alias: 
  - "一幅图弄清 DFT 与 DTFT_DFS 的关系"
created-date: 2023-04-04T11:44:35+0800
type: Simpread
banner: "https://pic002.cnblogs.com/images/2012/470909/2012112420445389.jpg "
banner_icon: 🔖
tag: 
idx: 3
---

# 一幅图弄清 DFT 与 DTFT_DFS 的关系

> [!example]- [🧷内部链接](<http://localhost:7026/unread/3>) [🌐外部链接](<https://www.cnblogs.com/BitArt/archive/2012/11/24/2786390.html>)    
> URI:: [🧷](<http://localhost:7026/unread/3>) [🌐](<https://www.cnblogs.com/BitArt/archive/2012/11/24/2786390.html>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/3>)

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
>  **Description**:: 通过卷积的性质来理解DTFT,DFS,DFT，FFT之间的联系
%%

> [!md] Metadata  
> **标题**:: [一幅图弄清 DFT 与 DTFT_DFS 的关系](https://www.cnblogs.com/BitArt/archive/2012/11/24/2786390.html)  
> **日期**:: [[2023-04-04]]  

## Annotations


> [!srhl2] [[SR3@一幅图弄清 DFT 与 DTFT_DFS 的关系|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/3#id=1680579873842>) [🌐](<http://localhost:7026/reading/3#id=1680579873842>)   
> 下面，就用这两条性质来说明 DFT，DTFT，DFS，FFT 之间的联系：
> ^sran-1680579873842
 
 