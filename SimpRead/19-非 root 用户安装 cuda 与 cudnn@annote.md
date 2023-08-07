---
title: "非 root 用户安装 cuda 与 cudnn"
alias: 
  - "非 root 用户安装 cuda 与 cudnn"
created-date: 2023-04-07T23:03:21+0800
type: Simpread
banner: "https://picx.zhimg.com/v2-961067e65e00dc4dfcd97d8e22009a10_720w.jpg?source=172ae18b "
banner_icon: 🔖
tag: 
idx: 19
---

# 非 root 用户安装 cuda 与 cudnn

> [!example]- [🧷内部链接](<http://localhost:7026/unread/19>) [🌐外部链接](<https://zhuanlan.zhihu.com/p/198161777>)    
> URI:: [🧷](<http://localhost:7026/unread/19>) [🌐](<https://zhuanlan.zhihu.com/p/198161777>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/19>)

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
>  **Description**:: 很多小伙伴都和我抱怨（其实我自己也是）服务器上管理员已安装好显卡驱动或已安装的CUDA版本无法满足自己要求（要么太高要么太低），与自己需要的TensorFlow或者Pytorch版本不兼容，急的头皮发麻！！！今天熬夜写…
%%

> [!md] Metadata  
> **标题**:: [非 root 用户安装 cuda 与 cudnn](https://zhuanlan.zhihu.com/p/198161777)  
> **日期**:: [[2023-04-07]]  

## Annotations


> [!srhl2] [[SR19@非 root 用户安装 cuda 与 cudnn|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/19#id=1680879800411>) [🌐](<http://localhost:7026/reading/19#id=1680879800411>) #优秀   
> 1.1 输入`nvidia-smi`查看自己的显卡驱动版本以及支持的最大 CUDA 版本：
> ^sran-1680879800411
 
 