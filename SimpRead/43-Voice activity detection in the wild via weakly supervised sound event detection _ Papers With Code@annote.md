---
title: "Voice activity detection in the wild via weakly supervised sound event detection _ Papers With Code"
alias: 
  - "Voice activity detection in the wild via weakly supervised sound event detection _ Papers With Code"
created-date: 2023-04-15T19:10:16+0800
type: Simpread
banner: "https://raw.githubusercontent.com/RicherMans/GPV/master/figures/framework.png "
banner_icon: 🔖
tag: 
idx: 43
---

# Voice activity detection in the wild via weakly supervised sound event detection _ Papers With Code

> [!example]- [🧷内部链接](<http://localhost:7026/unread/43>) [🌐外部链接](<https://cs.paperswithcode.com/paper/voice-activity-detection-in-the-wild-via>)    
> URI:: [🧷](<http://localhost:7026/unread/43>) [🌐](<https://cs.paperswithcode.com/paper/voice-activity-detection-in-the-wild-via>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/43>)

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
>  **Description**:: 1 code implementation in PyTorch. Traditional supervised voice activity detection (VAD) methods work ......
%%

> [!md] Metadata  
> **标题**:: [Voice activity detection in the wild via weakly supervised sound event detection _ Papers With Code](https://cs.paperswithcode.com/paper/voice-activity-detection-in-the-wild-via)  
> **日期**:: [[2023-04-15]]  

## Annotations


> [!srhl2] [[SR43@Voice activity detection in the wild via weakly supervised sound event detection _ Papers With Code|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/43#id=1681557015396>) [🌐](<http://localhost:7026/reading/43#id=1681557015396>) #语音处理/vad #vad #文献摘要   
> speech in the wild contains unpredictable noise types, hence frame-level label prediction is difficult
> ^sran-1681557015396
 
> [!srhl3] [[SR43@Voice activity detection in the wild via weakly supervised sound event detection _ Papers With Code|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/43#id=1681557037034>) [🌐](<http://localhost:7026/reading/43#id=1681557037034>)   
> we propose a general-purpose VAD (GPVAD) framework
> ^sran-1681557037034
 
> [!srhl2] [[SR43@Voice activity detection in the wild via weakly supervised sound event detection _ Papers With Code|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/43#id=1681557069152>) [🌐](<http://localhost:7026/reading/43#id=1681557069152>)   
> requiring only clip-level labels
> ^sran-1681557069152
 
> [!srhl3] [[SR43@Voice activity detection in the wild via weakly supervised sound event detection _ Papers With Code|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/43#id=1681557412944>) [🌐](<http://localhost:7026/reading/43#id=1681557412944>)   
> proposed two GPVAD models
> ^sran-1681557412944
 
> [!srhl2] [[SR43@Voice activity detection in the wild via weakly supervised sound event detection _ Papers With Code|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/43#id=1681557429911>) [🌐](<http://localhost:7026/reading/43#id=1681557429911>)   
> distinguishing speech and noise
> ^sran-1681557429911
 
> [!srhl3] [[SR43@Voice activity detection in the wild via weakly supervised sound event detection _ Papers With Code|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/43#id=1681557457322>) [🌐](<http://localhost:7026/reading/43#id=1681557457322>)   
> evaluate the two GPV models against a CRNN based standard VAD model (VAD-C)
> ^sran-1681557457322
 
> [!srhl2] [[SR43@Voice activity detection in the wild via weakly supervised sound event detection _ Papers With Code|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/43#id=1681557725822>) [🌐](<http://localhost:7026/reading/43#id=1681557725822>)   
> proposed GPV-F demonstrates competitive performance in clean and synthetic scenarios compared to traditional VAD-C
> ^sran-1681557725822
 
> [!srhl6] [[SR43@Voice activity detection in the wild via weakly supervised sound event detection _ Papers With Code|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/43#id=1681557738087>) [🌐](<http://localhost:7026/reading/43#id=1681557738087>)   
> GPV-F largely outperforms VAD-C in terms of frame-level evaluation metrics as well as segment-level ones
> ^sran-1681557738087
 
> [!srhl3] [[SR43@Voice activity detection in the wild via weakly supervised sound event detection _ Papers With Code|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/43#id=1681557793925>) [🌐](<http://localhost:7026/reading/43#id=1681557793925>)   
> much lower requirement for frame-labeled data, the naive binary clip-level GPV-B model can still achieve comparable performance to VAD-C in real-world scenarios
> ^sran-1681557793925
 
 