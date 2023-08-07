---
title: "科技爱好者周刊（第 248 期）：不要夸大 ChatGPT"
alias: 
  - "科技爱好者周刊（第 248 期）：不要夸大 ChatGPT"
created-date: 2023-04-05T23:48:34+0800
type: Simpread
banner: "https://cdn.beekka.com/blogimg/asset/202303/bg2023032108.webp "
banner_icon: 🔖
tag: 
idx: 11
---

# 科技爱好者周刊（第 248 期）：不要夸大 ChatGPT

> [!example]- [🧷内部链接](<http://localhost:7026/unread/11>) [🌐外部链接](<http://www.ruanyifeng.com/blog/2023/03/weekly-issue-248.html>)    
> URI:: [🧷](<http://localhost:7026/unread/11>) [🌐](<http://www.ruanyifeng.com/blog/2023/03/weekly-issue-248.html>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/11>)

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
>  **Description**:: 
%%

> [!md] Metadata  
> **标题**:: [科技爱好者周刊（第 248 期）：不要夸大 ChatGPT](http://www.ruanyifeng.com/blog/2023/03/weekly-issue-248.html)  
> **日期**:: [[2023-04-05]]  
 