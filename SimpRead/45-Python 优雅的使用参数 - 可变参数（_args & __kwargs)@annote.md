---
title: "Python 优雅的使用参数 - 可变参数（_args & __kwargs)"
alias: 
  - "Python 优雅的使用参数 - 可变参数（_args & __kwargs)"
created-date: 2023-04-17T20:26:54+0800
type: Simpread
tag: 
idx: 45
---

# Python 优雅的使用参数 - 可变参数（_args & __kwargs)

> [!example]- [🧷内部链接](<http://localhost:7026/unread/45>) [🌐外部链接](<https://n3xtchen.github.io/n3xtchen/python/2014/08/08/python-args-and-kwargs>)    
> URI:: [🧷](<http://localhost:7026/unread/45>) [🌐](<https://n3xtchen.github.io/n3xtchen/python/2014/08/08/python-args-and-kwargs>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/45>)

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
>  **Description**:: 08 August 2014
%%

> [!md] Metadata  
> **标题**:: [Python 优雅的使用参数 - 可变参数（_args & __kwargs)](https://n3xtchen.github.io/n3xtchen/python/2014/08/08/python-args-and-kwargs)  
> **日期**:: [[2023-04-17]]  

## Annotations


> [!srhl3] [[SR45@Python 优雅的使用参数 - 可变参数（_args & __kwargs)|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/45#id=1681734412722>) [🌐](<http://localhost:7026/reading/45#id=1681734412722>)   
> 在我看来，几乎 80% 的使用可变参数列表的场景，都可以使用数组和字典来解决。但是使用可变参数列表的函数可以提供一种数组和字典无法提供的东西：**优雅**。
> ^sran-1681734412722
 
> [!srhl5] [[SR45@Python 优雅的使用参数 - 可变参数（_args & __kwargs)|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/45#id=1681734507349>) [🌐](<http://localhost:7026/reading/45#id=1681734507349>) #编程/可变参数   
> ```  
> def argsFunc(a, *args):  
> print a  
> print args  
>   
> >>> argsFunc(1, 2, 3, 4)  
> (2, 3, 4)  
> ```
>  
> - 📝可以看到, arg把输入的参数视为元组tupple
> ^sran-1681734507349
 
> [!srhl2] [[SR45@Python 优雅的使用参数 - 可变参数（_args & __kwargs)|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/45#id=1681734703375>) [🌐](<http://localhost:7026/reading/45#id=1681734703375>)   
> 剩余的参数以元组的形式存储在 args
> ^sran-1681734703375
 
> [!srhl2] [[SR45@Python 优雅的使用参数 - 可变参数（_args & __kwargs)|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/45#id=1681734713598>) [🌐](<http://localhost:7026/reading/45#id=1681734713598>)   
> 另一个种不定参数形式
> ^sran-1681734713598
 
> [!srhl4] [[SR45@Python 优雅的使用参数 - 可变参数（_args & __kwargs)|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/45#id=1681734777718>) [🌐](<http://localhost:7026/reading/45#id=1681734777718>)   
> 参数在函数内部将被存放在以形式名为标识符的 `dictionary` 中，这时调用函数的方法则需要采用 `arg1=value1,arg2=value2` 这样的形式。
>  
> - 📝**args将输入保存为字典 
> ^sran-1681734777718
 
 