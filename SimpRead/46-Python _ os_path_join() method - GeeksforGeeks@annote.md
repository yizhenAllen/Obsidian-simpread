---
title: "Python _ os_path_join() method - GeeksforGeeks"
alias: 
  - "Python _ os_path_join() method - GeeksforGeeks"
created-date: 2023-04-17T20:42:15+0800
type: Simpread
banner: "https://media.geeksforgeeks.org/wp-content/cdn-uploads/gfg_200x200-min.png "
banner_icon: 🔖
tag: 
idx: 46
---

# Python _ os_path_join() method - GeeksforGeeks

> [!example]- [🧷内部链接](<http://localhost:7026/unread/46>) [🌐外部链接](<https://www.geeksforgeeks.org/python-os-path-join-method/>)    
> URI:: [🧷](<http://localhost:7026/unread/46>) [🌐](<https://www.geeksforgeeks.org/python-os-path-join-method/>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/46>)

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
>  **Description**:: A Computer Science portal for geeks. It contains well written, well thought and well explained comput......
%%

> [!md] Metadata  
> **标题**:: [Python _ os_path_join() method - GeeksforGeeks](https://www.geeksforgeeks.org/python-os-path-join-method/)  
> **日期**:: [[2023-04-17]]  

## Annotations


> [!srhl2] [[SR46@Python _ os_path_join() method - GeeksforGeeks|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/46#id=1681735335058>) [🌐](<http://localhost:7026/reading/46#id=1681735335058>)   
> (‘/’) following each non-empty part except the last path component. If the last path component to be joined is empty then a directory separator (‘/’) is put at the end.
> ^sran-1681735335058
 
> [!srhl3] [[SR46@Python _ os_path_join() method - GeeksforGeeks|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/46#id=1681735346841>) [🌐](<http://localhost:7026/reading/46#id=1681735346841>) #编程/os库   
> ```  
> # Python program to explain os.path.join() method  
>      
> # importing os module  
> import os  
>    
> # Path  
> path = "/home"  
>    
> # Join various path components  
> print(os.path.join(path, "User/Desktop", "file.txt"))  
>    
>    
> # Path  
> path = "User/Documents"  
>    
> # Join various path components  
> print(os.path.join(path, "/home", "file.txt"))  
>    
> # In above example '/home'  
> # represents an absolute path  
> # so all previous components i.e User / Documents  
> # are thrown away and joining continues  
> # from the absolute path component i.e / home.  
>    
>    
> # Path  
> path = "/User"  
>    
> # Join various path components  
> print(os.path.join(path, "Downloads", "file.txt", "/home"))  
>    
> # In above example '/User' and '/home'  
> # both represents an absolute path  
> # but '/home' is the last value  
> # so all previous components before '/home'  
> # will be discarded and joining will  
> # continue from '/home'  
>    
> # Path  
> path = "/home"  
>    
> # Join various path components  
> print(os.path.join(path, "User/Public/", "Documents", ""))  
>    
> # In above example the last  
> # path component is empty  
> # so a directory separator ('/')  
> # will be put at the end  
> # along with the concatenated value  
> ```
>  
> - 📝如果增加的参数为绝对路径, 会把前面的参数无视.
不然的话, 就正常增添路径.
如果最后一个参数为空, 即'', 那么结果会自动在结尾补上/, 这被视为一个目录
> ^sran-1681735346841
 
 