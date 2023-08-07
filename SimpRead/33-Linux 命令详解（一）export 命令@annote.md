---
title: "Linux 命令详解（一）export 命令"
alias: 
  - "Linux 命令详解（一）export 命令"
created-date: 2023-04-10T15:10:04+0800
type: Simpread
banner: "https://images2015.cnblogs.com/blog/1021265/201707/1021265-20170723110839215-975002391.png "
banner_icon: 🔖
tag: 
idx: 33
---

# Linux 命令详解（一）export 命令

> [!example]- [🧷内部链接](<http://localhost:7026/unread/33>) [🌐外部链接](<https://www.cnblogs.com/tinywan/p/7224011.html>)    
> URI:: [🧷](<http://localhost:7026/unread/33>) [🌐](<https://www.cnblogs.com/tinywan/p/7224011.html>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/33>)

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
>  **Description**:: 一、Windows 环境变量 1、在Windows 系统下，很多软件安装都需要配置环境变量，比如 安装 jdk ，如果不配置环境变量，在非软件安装的目录下运行javac 命令，将会报告找不到文件，类似
%%

> [!md] Metadata  
> **标题**:: [Linux 命令详解（一）export 命令](https://www.cnblogs.com/tinywan/p/7224011.html)  
> **日期**:: [[2023-04-10]]  

## Annotations


> [!srhl2] [[SR33@Linux 命令详解（一）export 命令|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/33#id=1681110629806>) [🌐](<http://localhost:7026/reading/33#id=1681110629806>)   
> 在 Windows 系统下，很多软件安装都需要配置环境变量，比如 安装 jdk ，如果不配置环境变量，在非软件安装的目录下运行 javac 命令，将会报告找不到文件，类似的错误。
> ^sran-1681110629806
 
> [!srhl4] [[SR33@Linux 命令详解（一）export 命令|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/33#id=1681110676934>) [🌐](<http://localhost:7026/reading/33#id=1681110676934>)   
> 什么是环境变量？简单说，就是指定一个目录，运行软件的时候，相关的程序将会按照该目录寻找相关文件。 设置变量对于一般人最实用的功能就是： 不用拷贝某些 dll 文件到系统目录中了，而 path 这一系统变量就是系统搜索 dll 文件的一系列路径
> ^sran-1681110676934
 
> [!srhl2] [[SR33@Linux 命令详解（一）export 命令|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/33#id=1681110699494>) [🌐](<http://localhost:7026/reading/33#id=1681110699494>)   
> Linux 系统下，如果你下载并安装应用程序，很有可能在键入它的名称的时候出现 “command  not found” 的提示内容。 如果每次都到安装目录文件夹内，找到可执行文件来进行操作就太繁琐了。 这涉及到环境变量 path 的设置问题，而 Path 的设置也是在 Linux 下定制环境变量的一个组成部分。
> ^sran-1681110699494
 
> [!srhl4] [[SR33@Linux 命令详解（一）export 命令|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/33#id=1681110710150>) [🌐](<http://localhost:7026/reading/33#id=1681110710150>)   
> 环境变量启动过程：
> ^sran-1681110710150
 
> [!srhl4] [[SR33@Linux 命令详解（一）export 命令|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/33#id=1681110712335>) [🌐](<http://localhost:7026/reading/33#id=1681110712335>)   
> ![](https://images2015.cnblogs.com/blog/1021265/201707/1021265-20170723110839215-975002391.png)
> ^sran-1681110712335
 
> [!srhl4] [[SR33@Linux 命令详解（一）export 命令|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/33#id=1681110776758>) [🌐](<http://localhost:7026/reading/33#id=1681110776758>)   
> 在代码中先执行 export，这个相当于告诉程序，执行某某东西时，需要的文件或什么东东在这些目录里
> ^sran-1681110776758
 
> [!srhl2] [[SR33@Linux 命令详解（一）export 命令|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/33#id=1681110767726>) [🌐](<http://localhost:7026/reading/33#id=1681110767726>)   
> **语　　法：**export [-fnp][变量名称]=[变量设置值]
> ^sran-1681110767726
 
> [!srhl4] [[SR33@Linux 命令详解（一）export 命令|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/33#id=1681110820471>) [🌐](<http://localhost:7026/reading/33#id=1681110820471>)   
> **补充说明：**在 shell 中执行程序时，shell 会提供一组环境变量。 export 可新增，修改或删除环境变量，供后续执行的程序使用。export 的效力仅及于该此登陆操作。
> ^sran-1681110820471
 
> [!srhl2] [[SR33@Linux 命令详解（一）export 命令|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/33#id=1681110825967>) [🌐](<http://localhost:7026/reading/33#id=1681110825967>)   
> -f 　代表 [变量名称] 中为函数名称。
> ^sran-1681110825967
 
> [!srhl2] [[SR33@Linux 命令详解（一）export 命令|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/33#id=1681110832375>) [🌐](<http://localhost:7026/reading/33#id=1681110832375>)   
> -n 　删除指定的变量。变量实际上并未删除，只是不会输出到后续指令的执行环境中。
> ^sran-1681110832375
 
> [!srhl2] [[SR33@Linux 命令详解（一）export 命令|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/33#id=1681110836791>) [🌐](<http://localhost:7026/reading/33#id=1681110836791>)   
> -p 　列出所有的 shell 赋予程序的环境变量。
> ^sran-1681110836791
 
 