---
title: "Voice activity detection in the wild： A data-driven approach using teacher-student training _ Papers With Code"
alias: 
  - "Voice activity detection in the wild： A data-driven approach using teacher-student training _ Papers With Code"
created-date: 2023-04-09T20:39:54+0800
type: Simpread
banner: "https://raw.githubusercontent.com/richermans/datadriven-GPVAD/master/figs/data_driven_framework.png "
banner_icon: 🔖
tag: 
idx: 30
---

# Voice activity detection in the wild： A data-driven approach using teacher-student training _ Papers With Code

> [!example]- [🧷内部链接](<http://localhost:7026/unread/30>) [🌐外部链接](<https://cs.paperswithcode.com/paper/voice-activity-detection-in-the-wild-a-data>)    
> URI:: [🧷](<http://localhost:7026/unread/30>) [🌐](<https://cs.paperswithcode.com/paper/voice-activity-detection-in-the-wild-a-data>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/30>)

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
>  **Description**:: Implemented in one code library.
%%

> [!md] Metadata  
> **标题**:: [Voice activity detection in the wild： A data-driven approach using teacher-student training _ Papers With Code](https://cs.paperswithcode.com/paper/voice-activity-detection-in-the-wild-a-data)  
> **日期**:: [[2023-04-09]]  

## Annotations


> [!srhl2] [[SR30@Voice activity detection in the wild： A data-driven approach using teacher-student training _ Papers With Code|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/30#id=1681043999827>) [🌐](<http://localhost:7026/reading/30#id=1681043999827>)   
> Traditional supervised VAD systems obtain frame-level labels from an ASR pipeline
> ^sran-1681043999827
 
> [!srhl2] [[SR30@Voice activity detection in the wild： A data-driven approach using teacher-student training _ Papers With Code|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/30#id=1681044108371>) [🌐](<http://localhost:7026/reading/30#id=1681044108371>)   
> This work proposes a data-driven teacher-student approach for VAD, which utilizes vast and unconstrained audio data for training
> ^sran-1681044108371
 
 