---
title: "windows10 关闭窗口快捷键（个人经验）"
alias: 
  - "windows10 关闭窗口快捷键（个人经验）"
created-date: 2023-04-14T01:47:38+0800
type: Simpread
tag: 
idx: 36
---

# windows10 关闭窗口快捷键（个人经验）

> [!example]- [🧷内部链接](<http://localhost:7026/unread/36>) [🌐外部链接](<https://zhuanlan.zhihu.com/p/353564447>)    
> URI:: [🧷](<http://localhost:7026/unread/36>) [🌐](<https://zhuanlan.zhihu.com/p/353564447>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/36>)

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
>  **Description**:: 最新！ 鼠标中键！ 无敌我只能说！ Windows10用鼠标中键关闭窗口 - ASD的文章 - 知乎 https://zhuanlan.zhihu.com/p/5400627865.29更新现在才发现Esc有多强大 尽管说它关不了普通的窗口，但在下面三种都无效的时候…
%%

> [!md] Metadata  
> **标题**:: [windows10 关闭窗口快捷键（个人经验）](https://zhuanlan.zhihu.com/p/353564447)  
> **日期**:: [[2023-04-14]]  

## Annotations


> [!srhl4] [[SR36@windows10 关闭窗口快捷键（个人经验）|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/36#id=1681408057370>) [🌐](<http://localhost:7026/reading/36#id=1681408057370>) #效率 #快捷键 #还行   
> 发现有三种方式：
> 
> 1.Ctrl+W
> 
> 2.Alt+F4
> 
> 3.Alt + 空格 + C
> 
> 总结各方式可以关闭的窗口：
> 
> Ctrl+W：
> 
> 浏览器标签、windows 本地窗口、（mindmaster 可以将关闭一个标签的快捷键设置成这个）
> 
> Alt+F4：
> 
> 常规关闭方式了，能关闭很多的程序窗口（比 Ctrl+W 强）
> 
> 和 Ctrl+W 不同的地方，它会把浏览器整个窗口关掉
> 
> 然后就是 Alt 空格 C：
> 
> 巨推，能关掉的甚至比 Alt+F4 还多，而且比它好按多了，离 Ctrl 又近，又。。。
> 
> 除了（目前来看）微信的小程序上面的快捷键都没用，还有它的图片只能用 Alt+F4 关掉
> 
> 总结：
> 
> Esc
> 
> Ctrl+W
> 
> Alt + 空格 + C
> 
> Alt+F4
> ^sran-1681408057370
 
 