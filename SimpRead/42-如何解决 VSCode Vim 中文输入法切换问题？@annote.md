---
title: "如何解决 VSCode Vim 中文输入法切换问题？"
alias: 
  - "如何解决 VSCode Vim 中文输入法切换问题？"
created-date: 2023-04-15T01:12:03+0800
type: Simpread
banner: "https://pica.zhimg.com/v2-6762fdf7acb6c8fe1307118e70e30484_l.jpg?source=1940ef5c "
banner_icon: 🔖
tag: 
idx: 42
---

# 如何解决 VSCode Vim 中文输入法切换问题？

> [!example]- [🧷内部链接](<http://localhost:7026/unread/42>) [🌐外部链接](<https://www.zhihu.com/question/303850876/answer/1421313587>)    
> URI:: [🧷](<http://localhost:7026/unread/42>) [🌐](<https://www.zhihu.com/question/303850876/answer/1421313587>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/42>)

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
>  **Description**:: 这个问题折磨了我有好几年了....各种可行的方法都尝试了，算是对网友的回答做一个总结目录对于 windowAut…
%%

> [!md] Metadata  
> **标题**:: [如何解决 VSCode Vim 中文输入法切换问题？](https://www.zhihu.com/question/303850876/answer/1421313587)  
> **日期**:: [[2023-04-15]]  

## Annotations


> [!srhl2] [[SR42@如何解决 VSCode Vim 中文输入法切换问题？|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/42#id=1681492321866>) [🌐](<http://localhost:7026/reading/42#id=1681492321866>) #效率/vim #质量/优秀   
> 1. 使用搜狗输入法，且搜狗输入法默认为英文状态
> 
> ![](https://pic1.zhimg.com/v2-785aa981aefe00d3b9bed1c3e8f462c1_r.jpg?source=1940ef5c)
> 
> 2. 参照下面的图片修改一个快捷键为 Ctrl+F8
> 
> 原理很简单: **如图，**搜狗输入法管理器中**设置** "Ctrl F8"（原本的 ctrl + , 太容易跟其他软件快捷键冲突了...） 每次切换到搜狗输入法，都会变为 "中文" 状态，这个时候再按一下 Shift 键，就可以切到英文啦
> ^sran-1681492321866
 
 