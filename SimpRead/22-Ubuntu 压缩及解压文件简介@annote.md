---
title: "Ubuntu 压缩及解压文件简介"
alias: 
  - "Ubuntu 压缩及解压文件简介"
created-date: 2023-04-08T16:21:50+0800
type: Simpread
banner: "https://picx.zhimg.com/v2-0528c3ad69dfe7d8567e5f4bc99bcc5b_720w.jpg?source=172ae18b "
banner_icon: 🔖
tag: 
idx: 22
---

# Ubuntu 压缩及解压文件简介

> [!example]- [🧷内部链接](<http://localhost:7026/unread/22>) [🌐外部链接](<https://zhuanlan.zhihu.com/p/143846450>)    
> URI:: [🧷](<http://localhost:7026/unread/22>) [🌐](<https://zhuanlan.zhihu.com/p/143846450>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/22>)

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
>  **Description**:: 使用Ubuntu的过程中，无论用来干什么，都会有文件上的交流，必不可免的就是压缩文件，Ubuntu系统中自带了部分格式的压缩软件，但是win系统习惯的rar格式文件解压需要下载相关软件，现整理如下： 1.文件格式及解压…
%%

> [!md] Metadata  
> **标题**:: [Ubuntu 压缩及解压文件简介](https://zhuanlan.zhihu.com/p/143846450)  
> **日期**:: [[2023-04-08]]  

## Annotations


> [!srhl2] [[SR22@Ubuntu 压缩及解压文件简介|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/22#id=1680942109634>) [🌐](<http://localhost:7026/reading/22#id=1680942109634>) #ubuntu #解压 #命令 #高亮优秀   
> .tar.gz 文件、 .tgz 文件
> 
> ```
> tar -zxvf filename.tar.gz               # 解压  
> tar -zcvf filename.tar.gz dirname       # 将dirname和其下所有文件（夹）压缩  
> tar -C dirname -zxvf filename.tar.gz    # 解压到目标路径dirname
> ```
> ^sran-1680942109634
 
 