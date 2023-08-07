---
title: "关于 windows 提升效率那些事 - Longlone's Blog"
alias: 
  - "关于 windows 提升效率那些事 - Longlone's Blog"
created-date: 2023-04-14T23:55:28+0800
type: Simpread
banner: "https://tuchuang-1300339532.cos.ap-chengdu.myqcloud.com/img/20210622161151.png "
banner_icon: 🔖
tag: 
idx: 41
---

# 关于 windows 提升效率那些事 - Longlone's Blog

> [!example]- [🧷内部链接](<http://localhost:7026/unread/41>) [🌐外部链接](<https://longlone.top/%E6%9D%82%E9%A1%B9/%E9%85%8D%E7%BD%AE/%E5%85%B3%E4%BA%8Ewindows%E6%8F%90%E5%8D%87%E6%95%88%E7%8E%87%E9%82%A3%E4%BA%9B%E4%BA%8B/>)    
> URI:: [🧷](<http://localhost:7026/unread/41>) [🌐](<https://longlone.top/%E6%9D%82%E9%A1%B9/%E9%85%8D%E7%BD%AE/%E5%85%B3%E4%BA%8Ewindows%E6%8F%90%E5%8D%87%E6%95%88%E7%8E%87%E9%82%A3%E4%BA%9B%E4%BA%8B/>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/41>)

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
>  **Description**:: Longlone's Blog about daily and security.
%%

> [!md] Metadata  
> **标题**:: [关于 windows 提升效率那些事 - Longlone's Blog](https://longlone.top/%E6%9D%82%E9%A1%B9/%E9%85%8D%E7%BD%AE/%E5%85%B3%E4%BA%8Ewindows%E6%8F%90%E5%8D%87%E6%95%88%E7%8E%87%E9%82%A3%E4%BA%9B%E4%BA%8B/)  
> **日期**:: [[2023-04-14]]  

## Annotations


> [!srhl2] [[SR41@关于 windows 提升效率那些事 - Longlone's Blog|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/41#id=1681487727604>) [🌐](<http://localhost:7026/reading/41#id=1681487727604>) #效率/vim #优秀   
> Caps Lock 的作用是锁定输入为大写字母，这个键位对我来说没什么用，完全可以使用 Shift 代替。  
>   
> 所以这里可以考虑将 Caps Lock 利用起来，在单击和长按时分别映射为 Esc 和 Ctrl，这样我们就几乎没必要再去按 ESC(左上角) 和 Ctrl(左下角) 了。
> ^sran-1681487727604
 
 