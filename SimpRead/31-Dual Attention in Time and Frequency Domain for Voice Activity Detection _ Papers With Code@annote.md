---
title: "Dual Attention in Time and Frequency Domain for Voice Activity Detection _ Papers With Code"
alias: 
  - "Dual Attention in Time and Frequency Domain for Voice Activity Detection _ Papers With Code"
created-date: 2023-04-09T20:46:56+0800
type: Simpread
banner: "https://production-media.paperswithcode.com/thumbnails/paper/2003.12266.jpg "
banner_icon: 🔖
tag: 
idx: 31
---

# Dual Attention in Time and Frequency Domain for Voice Activity Detection _ Papers With Code

> [!example]- [🧷内部链接](<http://localhost:7026/unread/31>) [🌐外部链接](<https://paperswithcode.com/paper/dual-attention-in-time-and-frequency-domain>)    
> URI:: [🧷](<http://localhost:7026/unread/31>) [🌐](<https://paperswithcode.com/paper/dual-attention-in-time-and-frequency-domain>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/31>)

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
>  **Description**:: 1 code implementation in PyTorch. Voice activity detection (VAD) is a challenging task in low signal-......
%%

> [!md] Metadata  
> **标题**:: [Dual Attention in Time and Frequency Domain for Voice Activity Detection _ Papers With Code](https://paperswithcode.com/paper/dual-attention-in-time-and-frequency-domain)  
> **日期**:: [[2023-04-09]]  

## Annotations


> [!srhl2] [[SR31@Dual Attention in Time and Frequency Domain for Voice Activity Detection _ Papers With Code|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/31#id=1681044415307>) [🌐](<http://localhost:7026/reading/31#id=1681044415307>)   
> Our proposed attention module refines each LSTM layer's hidden states so as to make it possible to adaptively focus on both time and frequency domain.
> ^sran-1681044415307
 
> [!srhl2] [[SR31@Dual Attention in Time and Frequency Domain for Voice Activity Detection _ Papers With Code|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/31#id=1681044589451>) [🌐](<http://localhost:7026/reading/31#id=1681044589451>)   
> Besides, we utilize focal loss for alleviating the performance degradation caused by imbalance between speech and non-speech sections in training sets.
> ^sran-1681044589451
 
> [!srhl4] [[SR31@Dual Attention in Time and Frequency Domain for Voice Activity Detection _ Papers With Code|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/31#id=1681044616298>) [🌐](<http://localhost:7026/reading/31#id=1681044616298>)   
> the focal loss can improve the performance in various imbalance situations compared to the cross entropy loss, a commonly used loss function in VAD.
> ^sran-1681044616298
 
 