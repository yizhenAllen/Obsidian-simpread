---
title: "DomainAdversarialVoiceActivityDetection/experiments.md at master · hbredin/DomainAdversarialVoiceActivityDetection"
alias: 
  - "DomainAdversarialVoiceActivityDetection/experiments.md at master · hbredin/DomainAdversarialVoiceActivityDetection"
created-date: 2023-04-10T16:03:54+0800
type: Simpread
tag: 
idx: 34
---

# DomainAdversarialVoiceActivityDetection/experiments.md at master · hbredin/DomainAdversarialVoiceActivityDetection

> [!example]- [🧷内部链接](<http://localhost:7026/unread/34>) [🌐外部链接](<https://github.com/hbredin/DomainAdversarialVoiceActivityDetection/blob/master/docs/experiments.md>)    
> URI:: [🧷](<http://localhost:7026/unread/34>) [🌐](<https://github.com/hbredin/DomainAdversarialVoiceActivityDetection/blob/master/docs/experiments.md>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/34>)

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
> **标题**:: [DomainAdversarialVoiceActivityDetection/experiments.md at master · hbredin/DomainAdversarialVoiceActivityDetection](https://github.com/hbredin/DomainAdversarialVoiceActivityDetection/blob/master/docs/experiments.md)  
> **日期**:: [[2023-04-10]]  
 