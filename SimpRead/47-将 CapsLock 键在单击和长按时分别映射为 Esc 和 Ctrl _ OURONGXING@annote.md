---
title: "将 CapsLock 键在单击和长按时分别映射为 Esc 和 Ctrl _ OURONGXING"
alias: 
  - "将 CapsLock 键在单击和长按时分别映射为 Esc 和 Ctrl _ OURONGXING"
created-date: 2023-04-18T09:56:11+0800
type: Simpread
banner: "https://p.pstatp.com/origin/ff2000008a206961e512 "
banner_icon: 🔖
tag: 
idx: 47
---

# 将 CapsLock 键在单击和长按时分别映射为 Esc 和 Ctrl _ OURONGXING

> [!example]- [🧷内部链接](<http://localhost:7026/unread/47>) [🌐外部链接](<https://orxing.top/post/d3c3145e.html#%E5%89%8D%E8%A8%80>)    
> URI:: [🧷](<http://localhost:7026/unread/47>) [🌐](<https://orxing.top/post/d3c3145e.html#%E5%89%8D%E8%A8%80>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/47>)

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
>  **Description**:: Caps Lock 键可能是我最讨厌的一个键，毫无用处却存在感极强，我们来好好折腾一下
%%

> [!md] Metadata  
> **标题**:: [将 CapsLock 键在单击和长按时分别映射为 Esc 和 Ctrl _ OURONGXING](https://orxing.top/post/d3c3145e.html#%E5%89%8D%E8%A8%80)  
> **日期**:: [[2023-04-18]]  

## Annotations


> [!srhl2] [[SR47@将 CapsLock 键在单击和长按时分别映射为 Esc 和 Ctrl _ OURONGXING|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/47#id=1681782970817>) [🌐](<http://localhost:7026/reading/47#id=1681782970817>)   
> 一般的按键修改都是通过修改注册表来实现，理论上是不能实现单击和长按分别映射成不同的按键
> 
> 不过在我翻遍全网后，发现一位大佬提出了可行的[解决方案](https://github.com/oblitum/Interception)，通过拦截键盘输入，可以实现了 Caps 单击为 Esc，长按为 Ctrl，同时 Esc 修改为 Caps，同时诞生了 Interception 项目
> 
> The Interception API aims to build a portable programming interface that allows one to intercept and control a range of input devices.
> 
> Interception API 旨在构建一种可移植的编程接口，该接口允许用户拦截和控制各种输入设备
> 
> 这个项目开源，可以自己修改或者编译程序，也可以实现一些有意思的功能，作者已经实现实现了 Caps 映射为 Esc 和 Ctrl，所以我们可以直接使用
> ^sran-1681782970817
 
 