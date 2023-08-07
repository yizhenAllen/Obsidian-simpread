---
title: "在 vscode 中查看当前项目的工作环境_vscode 查看环境_Clownorange 的博客 - CSDN 博客"
alias: 
  - "在 vscode 中查看当前项目的工作环境_vscode 查看环境_Clownorange 的博客 - CSDN 博客"
created-date: 2023-04-06T11:07:19+0800
type: Simpread
banner: "https://img-blog.csdnimg.cn/afc8ebc131c54a88b278b5d6349823ed.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBAY3ljeV8wOTE4,size_20,color_FFFFFF,t_70,g_se,x_16 "
banner_icon: 🔖
tag: 
idx: 13
---

# 在 vscode 中查看当前项目的工作环境_vscode 查看环境_Clownorange 的博客 - CSDN 博客

> [!example]- [🧷内部链接](<http://localhost:7026/unread/13>) [🌐外部链接](<https://blog.csdn.net/lcnana/article/details/121301177>)    
> URI:: [🧷](<http://localhost:7026/unread/13>) [🌐](<https://blog.csdn.net/lcnana/article/details/121301177>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/13>)

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
>  **Description**:: 1：在vs code选择，查看-》命令面板来打开命令面板或者使用快捷键【ctrl+shift+p】2：再选择Python :Select Interpreter来选择运行环境3：然后我们就可以来选择我们需要的运行环境4：可以使用了参考博客：https://blog.csdn.net/weixin_44613063/article/details/88563752...
%%

> [!md] Metadata  
> **标题**:: [在 vscode 中查看当前项目的工作环境_vscode 查看环境_Clownorange 的博客 - CSDN 博客](https://blog.csdn.net/lcnana/article/details/121301177)  
> **日期**:: [[2023-04-06]]  

## Annotations


> [!srhl2] [[SR13@在 vscode 中查看当前项目的工作环境_vscode 查看环境_Clownorange 的博客 - CSDN 博客|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/13#id=1680750438190>) [🌐](<http://localhost:7026/reading/13#id=1680750438190>)   
> 者使用快捷键【ctrl+shift+p】
> ^sran-1680750438190
 
> [!srhl2] [[SR13@在 vscode 中查看当前项目的工作环境_vscode 查看环境_Clownorange 的博客 - CSDN 博客|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/13#id=1680750442069>) [🌐](<http://localhost:7026/reading/13#id=1680750442069>)   
> 再选择 Python :Select Interpreter 来选择运行环境
> ^sran-1680750442069
 
> [!srhl4] [[SR13@在 vscode 中查看当前项目的工作环境_vscode 查看环境_Clownorange 的博客 - CSDN 博客|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/13#id=1680750447086>) [🌐](<http://localhost:7026/reading/13#id=1680750447086>)   
> ![](https://img-blog.csdnimg.cn/c2ddfc8a1a9341f2a0d90b7f224e892e.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBAY3ljeV8wOTE4,size_20,color_FFFFFF,t_70,g_se,x_16)
> ^sran-1680750447086
 
> [!srhl2] [[SR13@在 vscode 中查看当前项目的工作环境_vscode 查看环境_Clownorange 的博客 - CSDN 博客|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/13#id=1680750448900>) [🌐](<http://localhost:7026/reading/13#id=1680750448900>)   
> 后我们就可以来选择我们需要的运行环境
> ^sran-1680750448900
 
 