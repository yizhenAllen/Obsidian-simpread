---
title: "Python 异常处理"
alias: 
  - "Python 异常处理"
created-date: 2023-04-09T19:05:29+0800
type: Simpread
tag: 
idx: 26
---

# Python 异常处理

> [!example]- [🧷内部链接](<http://localhost:7026/unread/26>) [🌐外部链接](<https://www.runoob.com/python/python-exceptions.html>)    
> URI:: [🧷](<http://localhost:7026/unread/26>) [🌐](<https://www.runoob.com/python/python-exceptions.html>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/26>)

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
> **标题**:: [Python 异常处理](https://www.runoob.com/python/python-exceptions.html)  
> **日期**:: [[2023-04-09]]  

## Annotations


> [!srhl2] [[SR26@Python 异常处理|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/26#id=1681038426486>) [🌐](<http://localhost:7026/reading/26#id=1681038426486>)   
> Exception 常规错误的基类
> ^sran-1681038426486
 
> [!srhl3] [[SR26@Python 异常处理|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/26#id=1681038328438>) [🌐](<http://localhost:7026/reading/26#id=1681038328438>)   
> try 的工作原理是，当开始一个 try 语句后，python 就在当前程序的上下文中作标记，这样当异常出现时就可以回到这里，try 子句先执行，接下来会发生什么依赖于执行时是否出现异常。
> ^sran-1681038328438
 
> [!srhl2] [[SR26@Python 异常处理|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/26#id=1681038673334>) [🌐](<http://localhost:7026/reading/26#id=1681038673334>)   
> 如果当 try 后的语句执行时发生异常，python 就跳回到 try 并执行第一个匹配该异常的 except 子句，异常处理完毕，控制流就通过整个 try 语句（除非在处理异常时又引发新的异常）。
> ^sran-1681038673334
 
> [!srhl2] [[SR26@Python 异常处理|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/26#id=1681038675918>) [🌐](<http://localhost:7026/reading/26#id=1681038675918>)   
> 如果在 try 后的语句里发生了异常，却没有匹配的 except 子句，异常将被递交到上层的 try，或者到程序的最上层（这样将结束程序，并打印默认的出错信息）。
> ^sran-1681038675918
 
 