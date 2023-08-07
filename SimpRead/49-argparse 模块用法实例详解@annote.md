---
title: "argparse 模块用法实例详解"
alias: 
  - "argparse 模块用法实例详解"
created-date: 2023-04-25T21:21:29+0800
type: Simpread
tag: 
idx: 49
---

# argparse 模块用法实例详解

> [!example]- [🧷内部链接](<http://localhost:7026/unread/49>) [🌐外部链接](<https://zhuanlan.zhihu.com/p/56922793>)    
> URI:: [🧷](<http://localhost:7026/unread/49>) [🌐](<https://zhuanlan.zhihu.com/p/56922793>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/49>)

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
>  **Description**:: argsparse是python的命令行解析的标准模块，内置于python，不需要安装。这个库可以让我们直接在命令行中就可以向程序中传入参数并让程序运行。 港真的，今天是我第一次学习argsparse。因为用不到，自然也就没有学…
%%

> [!md] Metadata  
> **标题**:: [argparse 模块用法实例详解](https://zhuanlan.zhihu.com/p/56922793)  
> **日期**:: [[2023-04-25]]  

## Annotations


> [!srhl2] [[SR49@argparse 模块用法实例详解|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/49#id=1682428888338>) [🌐](<http://localhost:7026/reading/49#id=1682428888338>) #知识/python编程/argparse模块   
> argsparse 是 python 的命令行解析的标准模块，内置于 python，不需要安装。这个库可以让我们直接在命令行中就可以向程序中传入参数并让程序运行。
> ^sran-1682428888338
 
> [!srhl3] [[SR49@argparse 模块用法实例详解|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/49#id=1682428988279>) [🌐](<http://localhost:7026/reading/49#id=1682428988279>)   
> 传入一个参数
> ^sran-1682428988279
 
> [!srhl5] [[SR49@argparse 模块用法实例详解|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/49#id=1682429037110>) [🌐](<http://localhost:7026/reading/49#id=1682429037110>)   
> ```  
> import argparse  
>   
> parser = argparse.ArgumentParser(description='命令行中传入一个数字')  
> #type是要传入的参数的数据类型 help是该参数的提示信息  
> parser.add_argument('integers', type=str, help='传入的数字')  
>   
> args = parser.parse_args()  
>   
> #获得传入的参数  
> print(args)  
> ```
> ^sran-1682429037110
 
 