---
title: "Launchy 教程"
alias: 
  - "Launchy 教程"
created-date: 2023-04-14T20:12:55+0800
type: Simpread
banner: "http://image59.360doc.com/DownloadImg/2013/03/1411/30923754_1.png "
banner_icon: 🔖
tag: 
idx: 37
---

# Launchy 教程

> [!example]- [🧷内部链接](<http://localhost:7026/unread/37>) [🌐外部链接](<http://www.360doc.com/content/13/0314/11/11502803_271427641.shtml>)    
> URI:: [🧷](<http://localhost:7026/unread/37>) [🌐](<http://www.360doc.com/content/13/0314/11/11502803_271427641.shtml>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/37>)

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
>  **Description**:: Launchy 教程
%%

> [!md] Metadata  
> **标题**:: [Launchy 教程](http://www.360doc.com/content/13/0314/11/11502803_271427641.shtml)  
> **日期**:: [[2023-04-14]]  

## Annotations


> [!srhl2] [[SR37@Launchy 教程|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/37#id=1681474374503>) [🌐](<http://localhost:7026/reading/37#id=1681474374503>) #效率/launchy   
> aunchy 是开源软件，除官方版本之外，还有中文修改版，中文修改版在官方版本的基础上增加了以下两项功能：
> ^sran-1681474374503
 
 