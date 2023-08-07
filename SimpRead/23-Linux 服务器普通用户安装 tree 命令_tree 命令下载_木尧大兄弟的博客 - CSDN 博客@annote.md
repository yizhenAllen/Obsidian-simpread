---
title: "Linux 服务器普通用户安装 tree 命令_tree 命令下载_木尧大兄弟的博客 - CSDN 博客"
alias: 
  - "Linux 服务器普通用户安装 tree 命令_tree 命令下载_木尧大兄弟的博客 - CSDN 博客"
created-date: 2023-04-08T21:35:22+0800
type: Simpread
banner: "https://img-blog.csdnimg.cn/2eac1d5075854321abfef0048ce1fefc.png "
banner_icon: 🔖
tag: 
idx: 23
---

# Linux 服务器普通用户安装 tree 命令_tree 命令下载_木尧大兄弟的博客 - CSDN 博客

> [!example]- [🧷内部链接](<http://localhost:7026/unread/23>) [🌐外部链接](<https://blog.csdn.net/muyao987/article/details/127300627>)    
> URI:: [🧷](<http://localhost:7026/unread/23>) [🌐](<https://blog.csdn.net/muyao987/article/details/127300627>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/23>)

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
>  **Description**:: 分到一台 Ubuntu 新服务器，需要装一下 tree 命令，特此记录。
%%

> [!md] Metadata  
> **标题**:: [Linux 服务器普通用户安装 tree 命令_tree 命令下载_木尧大兄弟的博客 - CSDN 博客](https://blog.csdn.net/muyao987/article/details/127300627)  
> **日期**:: [[2023-04-08]]  

## Annotations


> [!srhl2] [[SR23@Linux 服务器普通用户安装 tree 命令_tree 命令下载_木尧大兄弟的博客 - CSDN 博客|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/23#id=1680960921160>) [🌐](<http://localhost:7026/reading/23#id=1680960921160>) #优秀 #ubuntu #命令 #环境变量   
> 分到一台 [Ubuntu](https://so.csdn.net/so/search?q=Ubuntu&spm=1001.2101.3001.7020) 新服务器，需要装一下 tree 命令，特此记录。
> ^sran-1680960921160
 
 