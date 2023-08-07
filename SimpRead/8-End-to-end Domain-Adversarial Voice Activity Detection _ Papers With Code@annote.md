---
title: "End-to-end Domain-Adversarial Voice Activity Detection _ Papers With Code"
alias: 
  - "End-to-end Domain-Adversarial Voice Activity Detection _ Papers With Code"
created-date: 2023-04-05T12:03:48+0800
type: Simpread
banner: "https://raw.githubusercontent.com/hbredin/DomainAdversarialVoiceActivityDetection/master/./docs/architecture.png "
banner_icon: 🔖
tag: 
idx: 8
---

# End-to-end Domain-Adversarial Voice Activity Detection _ Papers With Code

> [!example]- [🧷内部链接](<http://localhost:7026/unread/8>) [🌐外部链接](<https://paperswithcode.com/paper/end-to-end-domain-adversarial-voice-activity>)    
> URI:: [🧷](<http://localhost:7026/unread/8>) [🌐](<https://paperswithcode.com/paper/end-to-end-domain-adversarial-voice-activity>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/8>)

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
> **标题**:: [End-to-end Domain-Adversarial Voice Activity Detection _ Papers With Code](https://paperswithcode.com/paper/end-to-end-domain-adversarial-voice-activity)  
> **日期**:: [[2023-04-05]]  

## Annotations


> [!srhl2] [[SR8@End-to-end Domain-Adversarial Voice Activity Detection _ Papers With Code|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/8#id=1680667427063>) [🌐](<http://localhost:7026/reading/8#id=1680667427063>) #vad   
> First, we design a neural network combining trainable filters and recurrent layers to tackle voice activity detection directly from the waveform.
> ^sran-1680667427063
 
> [!srhl3] [[SR8@End-to-end Domain-Adversarial Voice Activity Detection _ Papers With Code|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/8#id=1680667739386>) [🌐](<http://localhost:7026/reading/8#id=1680667739386>)   
> state-of-the-art performance
> ^sran-1680667739386
 
> [!srhl3] [[SR8@End-to-end Domain-Adversarial Voice Activity Detection _ Papers With Code|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/8#id=1680667753594>) [🌐](<http://localhost:7026/reading/8#id=1680667753594>)   
> outperforms a variant where trainable filters are replaced by standard cepstral coefficients
> ^sran-1680667753594
 
> [!srhl2] [[SR8@End-to-end Domain-Adversarial Voice Activity Detection _ Papers With Code|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/8#id=1680668037076>) [🌐](<http://localhost:7026/reading/8#id=1680668037076>)   
> Our second contribution aims at making the proposed voice activity detection model robust to domain mismatch.
> ^sran-1680668037076
 
> [!srhl3] [[SR8@End-to-end Domain-Adversarial Voice Activity Detection _ Papers With Code|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/8#id=1680668050124>) [🌐](<http://localhost:7026/reading/8#id=1680668050124>)   
> a domain classification branch is added to the network and trained in an adversarial manner.
> ^sran-1680668050124
 
> [!srhl2] [[SR8@End-to-end Domain-Adversarial Voice Activity Detection _ Papers With Code|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/8#id=1680668121651>) [🌐](<http://localhost:7026/reading/8#id=1680668121651>)   
> The same DIHARD dataset, drawn from 11 different domains is used for evaluation under two scenarii.
> ^sran-1680668121651
 
> [!srhl5] [[SR8@End-to-end Domain-Adversarial Voice Activity Detection _ Papers With Code|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/8#id=1680668227356>) [🌐](<http://localhost:7026/reading/8#id=1680668227356>)   
> scenario where the training and test sets cover the exact same domains, we show that the domain-adversarial approach does not degrade performance of the proposed end-to-end model.
> ^sran-1680668227356
 
> [!srhl3] [[SR8@End-to-end Domain-Adversarial Voice Activity Detection _ Papers With Code|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/8#id=1680668265843>) [🌐](<http://localhost:7026/reading/8#id=1680668265843>)   
> test domain is different from training domains, it brings a relative improvement of more than 10%.
> ^sran-1680668265843
 
> [!srhl2] [[SR8@End-to-end Domain-Adversarial Voice Activity Detection _ Papers With Code|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/8#id=1680668375415>) [🌐](<http://localhost:7026/reading/8#id=1680668375415>)   
> provision of a fully reproducible open-source pipeline than can be easily adapted to other datasets.
> ^sran-1680668375415
 
 