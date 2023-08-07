---
title: "obsidian 插件之 dataview 入门 - 经验分享 - Obsidian 中文论坛"
alias: 
  - "obsidian 插件之 dataview 入门 - 经验分享 - Obsidian 中文论坛"
created-date: 2023-05-02T23:02:04+0800
type: Simpread
banner: "https://forum-zh.obsidian.md/uploads/default/original/1X/d61dd1fe9074e883ed0b7d6f87adc75e86270597.jpeg "
banner_icon: 🔖
tag: 
idx: 58
---

# obsidian 插件之 dataview 入门 - 经验分享 - Obsidian 中文论坛

> [!example]- [🧷内部链接](<http://localhost:7026/unread/58>) [🌐外部链接](<https://forum-zh.obsidian.md/t/topic/195/13>)    
> URI:: [🧷](<http://localhost:7026/unread/58>) [🌐](<https://forum-zh.obsidian.md/t/topic/195/13>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/58>)

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
>  **Description**:: 写在前面  Dataview可谓是ob用户的必备的插件了，当你积累了10+篇自己的笔记，可以用它来生成目录。  在此之前，我想对造轮子说两句（因为dataview是造轮子的利器）。  写笔记也好，做什么东西也好，我认为很忌讳的一点是过度设计，废了很大的功夫想要在一切开始之前造一个完美的轮子，结果造完之后极大可能你的记笔记热情已经没有了。  所以我不建议你等待，等待任何笔记流程的设计。不是有了完美工作流之后你才能开始工作，而是做着做着就根据自己的场景和需要慢慢铺就了适合你的工作流。  这也是渐进式笔记的概念。ob当时带着双链和关系图谱出现，本意就是让使用者渐进式的搭建自己的知识库。  渐进式的观点还能很好的改善完美主义。（刚看完《如何成为不完美主义》的一点小启发。）  这也就是我为什么说等你积累到10篇以上，会需要这篇文章。如果你才开始记笔记，请先放下一切问题，先记起来。  言归正传，来看看dataview的使用场景。   使用场景 假设你现在积累了一众笔记，这些笔记之间除了双链还有一些关联，现在你想要一个目录，可以一目了然的聚合这些笔记。  以下是一些场景：    生成包含同样关键字...
%%

> [!md] Metadata  
> **标题**:: [obsidian 插件之 dataview 入门 - 经验分享 - Obsidian 中文论坛](https://forum-zh.obsidian.md/t/topic/195/13)  
> **日期**:: [[2023-05-02]]  

## Annotations


> [!srhl2] [[SR58@obsidian 插件之 dataview 入门 - 经验分享 - Obsidian 中文论坛|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/58#id=1683039723130>) [🌐](<http://localhost:7026/reading/58#id=1683039723130>) #软件使用/obsidian/dataview #质量/优秀   
> Dataview 可谓是 ob 用户的必备的插件了，当你积累了 10 + 篇自己的笔记，可以用它来生成目录。
> ^sran-1683039723130
 
 