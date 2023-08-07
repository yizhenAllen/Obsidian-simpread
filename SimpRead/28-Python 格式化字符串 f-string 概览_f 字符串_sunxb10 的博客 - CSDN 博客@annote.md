---
title: "Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客"
alias: 
  - "Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客"
created-date: 2023-04-09T19:52:17+0800
type: Simpread
tag: 
idx: 28
---

# Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客

> [!example]- [🧷内部链接](<http://localhost:7026/unread/28>) [🌐外部链接](<https://blog.csdn.net/sunxb10/article/details/81036693>)    
> URI:: [🧷](<http://localhost:7026/unread/28>) [🌐](<https://blog.csdn.net/sunxb10/article/details/81036693>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/28>)

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
>  **Description**:: 简介f-string，亦称为格式化字符串常量（formatted string literals），是Python3.6新引入的一种字符串格式化方法，该方法源于PEP 498 – Literal String Interpolation，主要目的是使格式化字符串的操作更加简便。f-string在形式上是以 f 或 F 修饰符引领的字符串（f'xxx' 或 F'xxx'），以大括号对 {} 标明...
%%

> [!md] Metadata  
> **标题**:: [Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客](https://blog.csdn.net/sunxb10/article/details/81036693)  
> **日期**:: [[2023-04-09]]  

## Annotations


> [!srhl3] [[SR28@Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/28#id=1681041140141>) [🌐](<http://localhost:7026/reading/28#id=1681041140141>)   
> f-string 用大括号 `{}` 表示被替换字段，其中直接填入替换内容：
> ^sran-1681041140141
 
> [!srhl6] [[SR28@Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/28#id=1681041168736>) [🌐](<http://localhost:7026/reading/28#id=1681041168736>)   
> ```  
> >>> name = 'Eric'  
> >>> f'Hello, my name is {name}'  
> 'Hello, my name is Eric'  
>   
> >>> number = 7  
> >>> f'My lucky number is {number}'  
> 'My lucky number is 7'  
>   
> >>> price = 19.99  
> >>> f'The price of this book is {price}'  
> 'The price of this book is 19.99'  
> ```
> ^sran-1681041168736
 
> [!srhl2] [[SR28@Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/28#id=1681041136237>) [🌐](<http://localhost:7026/reading/28#id=1681041136237>)   
> f-string 的大括号 `{}` 可以填入表达式或调用函数，Python 会求出其结果并填入返回的字符串内：
> ^sran-1681041136237
 
> [!srhl6] [[SR28@Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/28#id=1681041170697>) [🌐](<http://localhost:7026/reading/28#id=1681041170697>)   
> ```  
> >>> f'A total number of {24 * 8 + 4}'  
> 'A total number of 196'  
>   
> >>> f'Complex number {(2 + 2j) / (2 - 3j)}'  
> 'Complex number (-0.15384615384615388+0.7692307692307692j)'  
>   
> >>> name = 'ERIC'  
> >>> f'My name is {name.lower()}'  
> 'My name is eric'  
>   
> >>> import math  
> >>> f'The answer is {math.log(math.pi)}'  
> 'The answer is 1.1447298858494002'  
> ```
> ^sran-1681041170697
 
> [!srhl3] [[SR28@Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/28#id=1681041151652>) [🌐](<http://localhost:7026/reading/28#id=1681041151652>)   
> f-string 大括号内所用的引号不能和大括号外的引号定界符冲突，可根据情况灵活切换
> ^sran-1681041151652
 
> [!srhl6] [[SR28@Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/28#id=1681041165736>) [🌐](<http://localhost:7026/reading/28#id=1681041165736>)   
> ```  
> >>> f'I am {"Eric"}'  
> 'I am Eric'  
> >>> f'I am {'Eric'}'  
> File "<stdin>", line 1  
> f'I am {'Eric'}'  
> ^  
> SyntaxError: invalid syntax  
> ```
> ^sran-1681041165736
 
> [!srhl2] [[SR28@Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/28#id=1681041211364>) [🌐](<http://localhost:7026/reading/28#id=1681041211364>)   
> 若 `'` 和 `"` 不足以满足要求，还可以使用 `'''` 和 `"""`：
> ^sran-1681041211364
 
> [!srhl6] [[SR28@Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/28#id=1681041214128>) [🌐](<http://localhost:7026/reading/28#id=1681041214128>)   
> ```  
> >>> f"He said {"I'm Eric"}"  
> File "<stdin>", line 1  
> f"He said {"I'm Eric"}"  
> ^  
> SyntaxError: invalid syntax  
>   
> >>> f'He said {"I'm Eric"}'  
> File "<stdin>", line 1  
> f'He said {"I'm Eric"}'  
> ^  
> SyntaxError: invalid syntax  
>   
> >>> f"""He said {"I'm Eric"}"""  
> "He said I'm Eric"  
> >>> f'''He said {"I'm Eric"}'''  
> "He said I'm Eric"  
> ```
> ^sran-1681041214128
 
> [!srhl3] [[SR28@Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/28#id=1681041215925>) [🌐](<http://localhost:7026/reading/28#id=1681041215925>)   
> 大括号外的引号还可以使用 `\` 转义，但大括号内不能使用 `\` 转义：
> ^sran-1681041215925
 
> [!srhl6] [[SR28@Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/28#id=1681041218867>) [🌐](<http://localhost:7026/reading/28#id=1681041218867>)   
> ```  
> >>> f'''He\'ll say {"I'm Eric"}'''  
> "He'll say I'm Eric"  
> >>> f'''He'll say {"I\'m Eric"}'''  
> File "<stdin>", line 1  
> SyntaxError: f-string expression part cannot include a backslash  
> ```
> ^sran-1681041218867
 
> [!srhl2] [[SR28@Python 格式化字符串 f-string 概览_f 字符串_sunxb10 的博客 - CSDN 博客|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/28#id=1681041325988>) [🌐](<http://localhost:7026/reading/28#id=1681041325988>)   
> 上面提到，f-string 大括号内不能使用 `\` 转义，事实上不仅如此，f-string 大括号内根本就不允许出现 `\`。如果确实需要 `\`，则应首先将包含 `\` 的内容用一个变量表示，再在 f-string 大括号内填入变量名：
> ^sran-1681041325988
 
 