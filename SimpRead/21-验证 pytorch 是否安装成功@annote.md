---
title: "验证 pytorch 是否安装成功"
alias: 
  - "验证 pytorch 是否安装成功"
created-date: 2023-04-08T10:48:37+0800
type: Simpread
tag: 
idx: 21
---

# 验证 pytorch 是否安装成功

> [!example]- [🧷内部链接](<http://localhost:7026/unread/21>) [🌐外部链接](<https://www.cnblogs.com/Tou-ming/p/16134242.html>)    
> URI:: [🧷](<http://localhost:7026/unread/21>) [🌐](<https://www.cnblogs.com/Tou-ming/p/16134242.html>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/21>)

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
>  **Description**:: import torch #查看torch版本 print(torch.version) #查看cuda版本 print(torch.version.cuda) #GPU是否可用 print(torc
%%

> [!md] Metadata  
> **标题**:: [验证 pytorch 是否安装成功](https://www.cnblogs.com/Tou-ming/p/16134242.html)  
> **日期**:: [[2023-04-08]]  

## Annotations


> [!srhl2] [[SR21@验证 pytorch 是否安装成功|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/21#id=1680922116468>) [🌐](<http://localhost:7026/reading/21#id=1680922116468>) #torch #优秀   
> import torch
> 
> ###### #查看 torch 版本
> ^sran-1680922116468
 
 