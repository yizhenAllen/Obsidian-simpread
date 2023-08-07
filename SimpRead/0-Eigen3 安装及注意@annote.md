---
title: "Eigen3 安装及注意"
alias: 
  - "Eigen3 安装及注意"
created-date: 2023-04-04T00:31:52+0800
type: Simpread
banner: "https://pic.cnblogs.com/avatar/1385981/20190510200320.png "
banner_icon: 🔖
tag: 
idx: 0
---

# Eigen3 安装及注意

> [!example]- [🧷内部链接](<http://localhost:7026/unread/0>) [🌐外部链接](<https://www.cnblogs.com/lihanwen/p/9928063.html>)    
> URI:: [🧷](<http://localhost:7026/unread/0>) [🌐](<https://www.cnblogs.com/lihanwen/p/9928063.html>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/0>)

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
>  **Description**:: 执行命令： sudo apt-get install libeigen3-dev 安装后执行以下命令 运行命令： sudo cp -r /usr/include/eigen3/Eigen /usr/i
%%

> [!md] Metadata  
> **标题**:: [Eigen3 安装及注意](https://www.cnblogs.com/lihanwen/p/9928063.html)  
> **日期**:: [[2023-04-04]]  
 