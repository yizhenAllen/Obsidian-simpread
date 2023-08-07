---
title: "nvidia-smi 查看 GPU 的使用信息并分析_IronLavender 的博客 - CSDN 博客"
alias: 
  - "nvidia-smi 查看 GPU 的使用信息并分析_IronLavender 的博客 - CSDN 博客"
created-date: 2023-05-09T18:01:46+0800
type: Simpread
banner: "https://img-blog.csdnimg.cn/20191113204224280.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3d1bWVuZ2x1MTAxOA==,size_16,color_FFFFFF,t_70 "
banner_icon: 🔖
tag: 
idx: 60
---

# nvidia-smi 查看 GPU 的使用信息并分析_IronLavender 的博客 - CSDN 博客

> [!example]- [🧷内部链接](<http://localhost:7026/unread/60>) [🌐外部链接](<https://blog.csdn.net/wumenglu1018/article/details/103057009>)    
> URI:: [🧷](<http://localhost:7026/unread/60>) [🌐](<https://blog.csdn.net/wumenglu1018/article/details/103057009>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/60>)

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
>  **Description**:: 登入服务器后，输入命令（注意中间无空格）：nvidia-smi或者可以使用命令（可以自动实时刷新GPU的使用情况）：nvidia-smi -l如果要周期性地输出显卡的使用情况，可以用watch指令实现（命令行参数-n，后边跟的是执行命令的周期，以s为单位。所以下面的命令表示，每10s刷新一下显示）：watch -n 10 nvidia-smi上图显示的显卡信息，第...
%%

> [!md] Metadata  
> **标题**:: [nvidia-smi 查看 GPU 的使用信息并分析_IronLavender 的博客 - CSDN 博客](https://blog.csdn.net/wumenglu1018/article/details/103057009)  
> **日期**:: [[2023-05-09]]  

## Annotations


> [!srhl2] [[SR60@nvidia-smi 查看 GPU 的使用信息并分析_IronLavender 的博客 - CSDN 博客|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/60#id=1683626505470>) [🌐](<http://localhost:7026/reading/60#id=1683626505470>) #知识/环境配置/显卡   
> 上图显示的显卡信息，第一行是版本信息，第二行是标题栏，第三行是具体的显卡信息。如果有多个显卡，就会有多行对应标题栏的信息。例如我上面显示了共 0~4 号，共 5 个卡。
> ^sran-1683626505470
 
 