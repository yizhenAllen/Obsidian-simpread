---
title: "Python 推导式"
alias: 
  - "Python 推导式"
created-date: 2023-04-09T18:57:34+0800
type: Simpread
tag: 
idx: 25
---

# Python 推导式

> [!example]- [🧷内部链接](<http://localhost:7026/unread/25>) [🌐外部链接](<https://www.runoob.com/python3/python3-iterator-generator.html>)    
> URI:: [🧷](<http://localhost:7026/unread/25>) [🌐](<https://www.runoob.com/python3/python3-iterator-generator.html>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/25>)

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
>  **Description**:: Python 推导式  Python 推导式是一种独特的数据处理方式，可以从一个数据序列构建另一个新的数据序列的结构体。 Python 支持各种数据结构的推导式：     列表(list)推导式   字典(dict)推导式   集合(set)推导式   元组(tuple)推导式     列表推导式 列表推导式格式为： [表达式 for 变量 in 列表]  [out_exp_res for out_exp in input_list] ..
%%

> [!md] Metadata  
> **标题**:: [Python 推导式](https://www.runoob.com/python3/python3-iterator-generator.html)  
> **日期**:: [[2023-04-09]]  

## Annotations


> [!srhl2] [[SR25@Python 推导式|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/25#id=1681037853598>) [🌐](<http://localhost:7026/reading/25#id=1681037853598>)   
> 迭代是 Python 最强大的功能之一，是访问集合元素的一种方式。
> 
> 迭代器是一个可以记住遍历的位置的对象。
> ^sran-1681037853598
 
> [!srhl4] [[SR25@Python 推导式|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/25#id=1681037857222>) [🌐](<http://localhost:7026/reading/25#id=1681037857222>)   
> 迭代器有两个基本的方法：**iter()** 和 **next()**。
> ^sran-1681037857222
 
> [!srhl4] [[SR25@Python 推导式|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/25#id=1681037934245>) [🌐](<http://localhost:7026/reading/25#id=1681037934245>)   
> 字符串，列表或元组对象都可用于创建迭代器：
> ^sran-1681037934245
 
> [!srhl2] [[SR25@Python 推导式|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/25#id=1681037963566>) [🌐](<http://localhost:7026/reading/25#id=1681037963566>)   
> 迭代器对象可以使用常规 for 语句进行遍历：
> ^sran-1681037963566
 
> [!srhl6] [[SR25@Python 推导式|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/25#id=1681037965878>) [🌐](<http://localhost:7026/reading/25#id=1681037965878>)   
> ```  
> #!/usr/bin/python3  
>   
> list=[1,2,3,4]  
> it = iter(list) # 创建迭代器对象  
> for x in it:  
> print (x, end=" ")  
> ```
> ^sran-1681037965878
 
> [!srhl2] [[SR25@Python 推导式|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/25#id=1681037970630>) [🌐](<http://localhost:7026/reading/25#id=1681037970630>)   
> 执行以上程序，输出结果如下：
> ^sran-1681037970630
 
> [!srhl6] [[SR25@Python 推导式|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/25#id=1681037967863>) [🌐](<http://localhost:7026/reading/25#id=1681037967863>)   
> ```  
> 1 2 3 4  
> ```
> ^sran-1681037967863
 
 