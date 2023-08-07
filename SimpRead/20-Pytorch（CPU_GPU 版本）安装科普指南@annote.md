---
title: "Pytorch（CPU_GPU 版本）安装科普指南"
alias: 
  - "Pytorch（CPU_GPU 版本）安装科普指南"
created-date: 2023-04-08T10:16:09+0800
type: Simpread
banner: "https://picx.zhimg.com/v2-bd0e4840745bb238c130b931d13b9b43_720w.jpg?source=172ae18b "
banner_icon: 🔖
tag: 
idx: 20
---

# Pytorch（CPU_GPU 版本）安装科普指南

> [!example]- [🧷内部链接](<http://localhost:7026/unread/20>) [🌐外部链接](<https://zhuanlan.zhihu.com/p/228477967>)    
> URI:: [🧷](<http://localhost:7026/unread/20>) [🌐](<https://zhuanlan.zhihu.com/p/228477967>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/20>)

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
>  **Description**:: 这里需要针对pytorch安装说明一个问题，大家安装过的应该都深受其苦，因为torch的官方服务器应该是设置在海外，使用不科学上网的情况下下载是很慢的，正常来说linux服务器下问题会少一点，但也是会遇到下载慢、卡…
%%

> [!md] Metadata  
> **标题**:: [Pytorch（CPU_GPU 版本）安装科普指南](https://zhuanlan.zhihu.com/p/228477967)  
> **日期**:: [[2023-04-08]]  

## Annotations


> [!srhl2] [[SR20@Pytorch（CPU_GPU 版本）安装科普指南|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/20#id=1680920243773>) [🌐](<http://localhost:7026/reading/20#id=1680920243773>) #优秀 #CUDA #CUCNN   
> 这里需要针对 pytorch 安装说明一个问题，大家安装过的应该都深受其苦，因为 torch 的官方服务器应该是设置在海外，使用不科学上网的情况下下载是很慢的，正常来说 linux 服务器下问题会少一点，但也是会遇到下载慢、卡死的现象，windows 下更是问题百出，解决思路如下：
> ^sran-1680920243773
 
 