---
title: "VScode 下调试 Python 代码演示： Debugging 以及单步前进 Step Into_怎样 vscode 的 python 调试中 加入步入按钮_敲代码的小风的博客 - CSDN 博客"
alias: 
  - "VScode 下调试 Python 代码演示： Debugging 以及单步前进 Step Into_怎样 vscode 的 python 调试中 加入步入按钮_敲代码的小风的博客 - CSDN 博客"
created-date: 2023-04-28T17:11:24+0800
type: Simpread
banner: "https://img-blog.csdnimg.cn/20201124105248107.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L20wXzQ2NjUzNDM3,size_16,color_FFFFFF,t_70#pic_center "
banner_icon: 🔖
tag: 
idx: 50
---

# VScode 下调试 Python 代码演示： Debugging 以及单步前进 Step Into_怎样 vscode 的 python 调试中 加入步入按钮_敲代码的小风的博客 - CSDN 博客

> [!example]- [🧷内部链接](<http://localhost:7026/unread/50>) [🌐外部链接](<https://blog.csdn.net/m0_46653437/article/details/110050907>)    
> URI:: [🧷](<http://localhost:7026/unread/50>) [🌐](<https://blog.csdn.net/m0_46653437/article/details/110050907>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/50>)

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
>  **Description**:: 代码:test.pys0 = '林祖泉0's1 = '林祖泉1's2 = '林祖泉2'ls0 = [s0] ls1 = [s0,s1] ls2 = [s0,s1,s2] print(ls0)print(ls1)print(ls2)tup = (ls0,"aaa")print(tup)ls0.append("林麻子")print(ls0)print(tup)添加断点,注意:程序自动停在断点处,即断点所在行的代码不执行.点击屏幕菜单栏的Run,点击Start Debuggin
%%

> [!md] Metadata  
> **标题**:: [VScode 下调试 Python 代码演示： Debugging 以及单步前进 Step Into_怎样 vscode 的 python 调试中 加入步入按钮_敲代码的小风的博客 - CSDN 博客](https://blog.csdn.net/m0_46653437/article/details/110050907)  
> **日期**:: [[2023-04-28]]  

## Annotations


> [!srhl2] [[SR50@VScode 下调试 Python 代码演示： Debugging 以及单步前进 Step Into_怎样 vscode 的 python 调试中 加入步入按钮_敲代码的小风的博客 - CSDN 博客|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/50#id=1682673083478>) [🌐](<http://localhost:7026/reading/50#id=1682673083478>)   
> 屏幕上方的工具栏:
> ^sran-1682673083478
 
 