---
title: "极致美化 windows 终端"
alias: 
  - "极致美化 windows 终端"
created-date: 2023-04-06T12:17:58+0800
type: Simpread
banner: "https://i.imgtg.com/2023/02/09/c1BjK.jpg "
banner_icon: 🔖
tag: 
idx: 14
---

# 极致美化 windows 终端

> [!example]- [🧷内部链接](<http://localhost:7026/unread/14>) [🌐外部链接](<https://www.stepbystep.cf/archives/beautify-windows-terminal/>)    
> URI:: [🧷](<http://localhost:7026/unread/14>) [🌐](<https://www.stepbystep.cf/archives/beautify-windows-terminal/>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/14>)

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
>  **Description**:: 一、下载文件并校验文件完整性 点击下载新版 Powershell(PowerShell-x.x.x-win-x64.msi) 点击下载 Git(Gi
%%

> [!md] Metadata  
> **标题**:: [极致美化 windows 终端](https://www.stepbystep.cf/archives/beautify-windows-terminal/)  
> **日期**:: [[2023-04-06]]  

## Annotations


> [!srhl2] [[SR14@极致美化 windows 终端|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/14#id=1680754677109>) [🌐](<http://localhost:7026/reading/14#id=1680754677109>)   
> 打开 Windows Terminal Preview 的设置，选择左侧 Windows PowerShell，路径改为安装的刚刚安装的 D 盘中 Powershell 文件夹中 pwsh.exe，并在最后加上 -nologo 参数。
> 
>   
> 
>   
> 
> ```
> D:\PowerShell\7\pwsh.exe  -nologo
> ```
> ^sran-1680754677109
 
> [!srhl3] [[SR14@极致美化 windows 终端|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/14#id=1680754760270>) [🌐](<http://localhost:7026/reading/14#id=1680754760270>)   
> 推荐 Dracula  
> 在设置中打开 JSON 文件，找到 "schemes"，在中括号中添加（注意除了最后一个，每个大括号块后的逗号）
> 
>   
> 
>   
> 
> ```
> {  
>         "name": "Dracula",  
>         "cursorColor": "#F8F8F2",  
>         "selectionBackground": "#44475A",  
>         "background": "#282A36",  
>         "foreground": "#F8F8F2",  
>         "black": "#21222C",  
>         "blue": "#BD93F9",  
>         "cyan": "#8BE9FD",  
>         "green": "#50FA7B",  
>         "purple": "#FF79C6",  
>         "red": "#FF5555",  
>         "white": "#F8F8F2",  
>         "yellow": "#F1FA8C",  
>         "brightBlack": "#6272A4",  
>         "brightBlue": "#D6ACFF",  
>         "brightCyan": "#A4FFFF",  
>         "brightGreen": "#69FF94",  
>         "brightPurple": "#FF92DF",  
>         "brightRed": "#FF6E6E",  
>         "brightWhite": "#FFFFFF",  
>         "brightYellow": "#FFFFA5"  
>     }
> ```
> ^sran-1680754760270
 
> [!srhl3] [[SR14@极致美化 windows 终端|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/14#id=1680861120767>) [🌐](<http://localhost:7026/reading/14#id=1680861120767>)   
> 设置 PowerShell 的初始化文件
> 
>   
> 
>   
> 
> ```
> if (!(Test-Path -Path $PROFILE )) { New-Item -Type File -Path $PROFILE -Force }  
> notepad $PROFILE
> ```
> ^sran-1680861120767
 
> [!srhl2] [[SR14@极致美化 windows 终端|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/14#id=1680755024509>) [🌐](<http://localhost:7026/reading/14#id=1680755024509>)   
> 粘贴以下内容进 profile 文件
> 
>   
> 
>   
> 
> ```
> clear  
> oh-my-posh --init --shell pwsh --config D:/oh-my-posh/themes/ys.omp.json | Invoke-Expression
> ```
> ^sran-1680755024509
 
> [!srhl2] [[SR14@极致美化 windows 终端|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/14#id=1680755074903>) [🌐](<http://localhost:7026/reading/14#id=1680755074903>)   
> ```  
> clear  
> oh-my-posh --init --shell pwsh --config D:/oh-my-posh/themes/ys.omp.json | Invoke-Expression  
> ```
>  
> - 📝clear
$OutputEncoding = [System.Console]::OutputEncoding = [System.Console]::InputEncoding = [System.Text.Encoding]::UTF8
oh-my-posh init pwsh --config $env:POSH_THEMES_PATH\montys.omp.json | Invoke-Expression
> ^sran-1680755074903
 
 