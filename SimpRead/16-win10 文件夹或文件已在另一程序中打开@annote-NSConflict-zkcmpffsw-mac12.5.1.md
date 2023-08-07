---
title: "win10 文件夹或文件已在另一程序中打开"
alias: 
  - "win10 文件夹或文件已在另一程序中打开"
created-date: 2023-04-06T20:25:01+0800
type: Simpread
banner: "https://imgsa.baidu.com/exp/w=500/sign=6e100827da00baa1ba2c47bb7711b9b1/d833c895d143ad4b203e830b89025aafa50f06ed.jpg "
banner_icon: 🔖
tag: 
idx: 16
---

# win10 文件夹或文件已在另一程序中打开

> [!example]- [🧷内部链接](<http://localhost:7026/unread/16>) [🌐外部链接](<https://www.cnblogs.com/cuihongyu3503319/p/11004467.html>)    
> URI:: [🧷](<http://localhost:7026/unread/16>) [🌐](<https://www.cnblogs.com/cuihongyu3503319/p/11004467.html>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/16>)

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
>  **Description**:: 我们在对文件或文件夹进行删除、移动、重命名等操作时，系统可能提示“操作无法完成，因为其中的文件夹已在另一程序中打开，请关闭该文件或文件夹，然后重试。”，遇到这种情况我们应该怎么办呢?请看下文。 我们在
%%

> [!md] Metadata  
> **标题**:: [win10 文件夹或文件已在另一程序中打开](https://www.cnblogs.com/cuihongyu3503319/p/11004467.html)  
> **日期**:: [[2023-04-06]]  

## Annotations


> [!srhl2] [[SR16@win10 文件夹或文件已在另一程序中打开|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/16#id=1680783918295>) [🌐](<http://localhost:7026/reading/16#id=1680783918295>)   
> 当我们对文件进行重命名、删除
> ^sran-1680783918295
 
> [!srhl2] [[SR16@win10 文件夹或文件已在另一程序中打开|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/16#id=1680783900185>) [🌐](<http://localhost:7026/reading/16#id=1680783900185>)   
> 进入任务管理器后，在其上方点击【性能】选项卡。
> ^sran-1680783900185
 
 1. 