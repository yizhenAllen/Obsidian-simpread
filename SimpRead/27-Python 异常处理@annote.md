---
title: "Python 异常处理"
alias: 
  - "Python 异常处理"
created-date: 2023-04-09T19:07:23+0800
type: Simpread
tag: 
idx: 27
---

# Python 异常处理

> [!example]- [🧷内部链接](<http://localhost:7026/unread/27>) [🌐外部链接](<https://www.runoob.com/python/python-xml.html>)    
> URI:: [🧷](<http://localhost:7026/unread/27>) [🌐](<https://www.runoob.com/python/python-xml.html>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/27>)

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
>  **Description**:: Python 异常处理  python提供了两个非常重要的功能来处理python程序在运行中出现的异常和错误。你可以使用该功能来调试python程序。  异常处理: 本站Python教程会具体介绍。  断言(Assertions):本站Python教程会具体介绍。    python标准异常    异常名称 描述   BaseException 所有异常的基类 SystemExit解释器请求退出 KeyboardInterrupt 用户..
%%

> [!md] Metadata  
> **标题**:: [Python 异常处理](https://www.runoob.com/python/python-xml.html)  
> **日期**:: [[2023-04-09]]  
 