---
title: "vim 分屏功能"
alias: 
  - "vim 分屏功能"
created-date: 2023-04-18T14:24:09+0800
type: Simpread
tag: 
idx: 48
---

# vim 分屏功能

> [!example]- [🧷内部链接](<http://localhost:7026/unread/48>) [🌐外部链接](<https://www.cnblogs.com/jiangzhaowei/p/7592481.html>)    
> URI:: [🧷](<http://localhost:7026/unread/48>) [🌐](<https://www.cnblogs.com/jiangzhaowei/p/7592481.html>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/48>)

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
>  **Description**:: 分屏启动Vim 注释:&#160;n是数字，表示分成几个屏。 关闭分屏 分屏 移动光标 Vi中的光标键是h, j, k, l，要在各个屏间切换，只需要先按一下Ctrl+W 移动分屏 这个功能还是使用了
%%

> [!md] Metadata  
> **标题**:: [vim 分屏功能](https://www.cnblogs.com/jiangzhaowei/p/7592481.html)  
> **日期**:: [[2023-04-18]]  

## Annotations


> [!srhl2] [[SR48@vim 分屏功能|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/48#id=1681799047943>) [🌐](<http://localhost:7026/reading/48#id=1681799047943>) #质量/优秀   
> #### 分屏启动 Vim
> 
>   
> 2.  使用大写的 O 参数来垂直分屏。  
>     
>     ```
>     vim -On file1 file2 ...  
>     
>     ```
>     
>       
>     
>   
> 4.  使用小写的 o 参数来水平分屏。  
>     
>     ```
>     vim -on file1 file2 ...  
>     
>     ```
>     
>       
>     
>   
> 
> **注释:** n 是数字，表示分成几个屏。
> ^sran-1681799047943
 
 