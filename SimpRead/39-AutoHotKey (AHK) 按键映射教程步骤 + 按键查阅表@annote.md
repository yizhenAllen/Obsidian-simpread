---
title: "AutoHotKey (AHK) 按键映射教程步骤 + 按键查阅表"
alias: 
  - "AutoHotKey (AHK) 按键映射教程步骤 + 按键查阅表"
created-date: 2023-04-14T21:29:13+0800
type: Simpread
banner: "https://pic4.zhimg.com/v2-e3cfd1d6cedcd49cb95ab0875424143b_r.jpg "
banner_icon: 🔖
tag: 
idx: 39
---

# AutoHotKey (AHK) 按键映射教程步骤 + 按键查阅表

> [!example]- [🧷内部链接](<http://localhost:7026/unread/39>) [🌐外部链接](<https://zhuanlan.zhihu.com/p/348680863>)    
> URI:: [🧷](<http://localhost:7026/unread/39>) [🌐](<https://zhuanlan.zhihu.com/p/348680863>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/39>)

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
>  **Description**:: 前段时间笔记本的delete按键失灵，怎么按都没反应，删除不了目标。后来通过AutoHotKey按键映射功能解决了当时的燃眉之急。按键映射后：按下Home按键（可人为指定），实现按下delete按键（可人为指定）的操作。 Aut…
%%

> [!md] Metadata  
> **标题**:: [AutoHotKey (AHK) 按键映射教程步骤 + 按键查阅表](https://zhuanlan.zhihu.com/p/348680863)  
> **日期**:: [[2023-04-14]]  

## Annotations


> [!srhl2] [[SR39@AutoHotKey (AHK) 按键映射教程步骤 + 按键查阅表|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/39#id=1681478952368>) [🌐](<http://localhost:7026/reading/39#id=1681478952368>) #效率/autohotkey   
> _前段时间笔记本的 delete 按键失灵，怎么按都没反应，删除不了目标。后来通过 AutoHotKey 按键映射功能解决了当时的燃眉之急。按键映射后：按下 Home 按键（可人为指定），实现按下 delete 按键（可人为指定）的操作。_
> 
> _AutoHotKey 简单好用，下面是整理的按键映射的简单使用教程。_
> ^sran-1681478952368
 
 