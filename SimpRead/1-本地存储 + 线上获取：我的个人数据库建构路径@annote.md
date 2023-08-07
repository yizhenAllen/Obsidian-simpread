---
title: "本地存储 + 线上获取：我的个人数据库建构路径"
alias: 
  - "本地存储 + 线上获取：我的个人数据库建构路径"
created-date: 2023-04-04T01:21:07+0800
type: Simpread
banner: "https://cdn.sspai.com/2021/11/17/365ff29b5ab274691d99b1417912aade.png "
banner_icon: 🔖
tag: 
idx: 1
---

# 本地存储 + 线上获取：我的个人数据库建构路径

> [!example]- [🧷内部链接](<http://localhost:7026/unread/1>) [🌐外部链接](<https://sspai.com/post/69972>)    
> URI:: [🧷](<http://localhost:7026/unread/1>) [🌐](<https://sspai.com/post/69972>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/1>)

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
>  **Description**:: 这是个信息轰炸的时代，除了必要的信息过滤手段外，每个人都应该构建属于自己的个人知识库。
%%

> [!md] Metadata  
> **标题**:: [本地存储 + 线上获取：我的个人数据库建构路径](https://sspai.com/post/69972)  
> **日期**:: [[2023-04-04]]  
 