---
title: "python 对文件的指定行写入 append"
alias: 
  - "python 对文件的指定行写入 append"
created-date: 2023-05-03T23:06:03+0800
type: Simpread
tag: 
idx: 59
---

# python 对文件的指定行写入 append

> [!example]- [🧷内部链接](<http://localhost:7026/unread/59>) [🌐外部链接](<https://www.cnblogs.com/guolongnv/articles/8886778.html>)    
> URI:: [🧷](<http://localhost:7026/unread/59>) [🌐](<https://www.cnblogs.com/guolongnv/articles/8886778.html>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/59>)

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
>  **Description**:: https://blog.csdn.net/sinat_21302587/article/details/53501354 常常在操作文件时我们只想在某一行的插入信息，可以先将文件读入列表中，利用列表的下标插入文本，之后再重新写入文件。 但是弊端是，如果文件量太大列表的性能可能不是很高。 pytho
%%

> [!md] Metadata  
> **标题**:: [python 对文件的指定行写入 append](https://www.cnblogs.com/guolongnv/articles/8886778.html)  
> **日期**:: [[2023-05-03]]  

## Annotations


> [!srhl2] [[SR59@python 对文件的指定行写入 append|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/59#id=1683126363075>) [🌐](<http://localhost:7026/reading/59#id=1683126363075>) #知识/python编程/txt处理   
> 常常在操作文件时我们只想在某一行的插入信息，可以先将文件读入列表中
> ^sran-1683126363075
 
 