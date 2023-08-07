---
title: "键盘快速启动工具 Launchy 的简单使用技巧"
alias: 
  - "键盘快速启动工具 Launchy 的简单使用技巧"
created-date: 2023-04-14T20:13:56+0800
type: Simpread
banner: "https://images2015.cnblogs.com/blog/615552/201701/615552-20170116165813052-979565295.png "
banner_icon: 🔖
tag: 
idx: 38
---

# 键盘快速启动工具 Launchy 的简单使用技巧

> [!example]- [🧷内部链接](<http://localhost:7026/unread/38>) [🌐外部链接](<https://www.cnblogs.com/ant-soldier/p/6290530.html>)    
> URI:: [🧷](<http://localhost:7026/unread/38>) [🌐](<https://www.cnblogs.com/ant-soldier/p/6290530.html>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/38>)

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
>  **Description**:: Launchy图标快速启动工具
%%

> [!md] Metadata  
> **标题**:: [键盘快速启动工具 Launchy 的简单使用技巧](https://www.cnblogs.com/ant-soldier/p/6290530.html)  
> **日期**:: [[2023-04-14]]  

## Annotations


> [!srhl2] [[SR38@键盘快速启动工具 Launchy 的简单使用技巧|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/38#id=1681474435619>) [🌐](<http://localhost:7026/reading/38#id=1681474435619>) #效率/launchy   
> 1. 安装成功后: 打开工具之后, 我们可以编辑热键, 按照我们个人的操作习惯, 设置自己熟悉的热键. 工具默认热键是 ALT+SPACE(空格键)
> ^sran-1681474435619
 
 