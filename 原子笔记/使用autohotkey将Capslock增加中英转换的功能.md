### 如果将以下部分代码注释掉的话

```c
!n::RButton
/*
~Esc::
    Send, ^{F8}
    Send, ^{Space}
*/
return
```

原本是利用caps2esc文件, 已经将单击caps映射到esc, 然后将长按caps映射到ctrl

而上面的autohotkey只是单纯地增加了一个右键的快捷键, 那么我们如果需要打中文，那就要insert进来，然后切换中文，然后caps出去，然后再换成英文，不然就输入不了命令了.

好处是, 在不用写中文的时候, 我们只需要caps一下, 就可以退出输入模式了, 也就是只打英文的话, **我们可以少按一次caps**

### 如果不注释掉
那么, 我们在打大量中文的时候, 进入输入模式后, 切换中文, 打完caps出去, 就直接是英文模式了, **少了一次切换的操作**

缺点是, 如果我们只打英文的话, 我们insert进来打英文, 打完caps出去之后, **还需要再caps一下**, 才能变回英文实施命令.

# 利用autohotkey让esc只在Obsidian窗口带有切换功能
直接附上最后的autohotkey脚本吧, 最后这个功能折腾了好久, 就是语法问题.

```
Tab::t := true
Tab up::t := false
#If t
e::Tab
k::Up
h::Left
j::Down
l::Right
1::F1
2::F2
3::F3
4::F4
5::F5
6::F6
7::F7
8::F8
9::F9
0::F10
-::F11
=::F12
#If
/*
这四个组合是可以的,利用alt作为modifier,但存在响应时间
!j::Down
!k::Up
!h::Left
!l::Right
*/
/*
Tab & j::Down
Tab & k::Up
Tab & h::Left
Tab & l::Right
*/

;让以下内容只在obsidian中适用, 这样中文打字之后, 按一下esc就可以退出并切换到英文模式


#If WinActive("ahk_exe Obsidian.exe")
    ~Esc::
        Send, ^{F8}
        Send, ^{Space}
    return
#If
```
# 再附上Obsidian的vimrc文件

```
unmap <Space>
" Have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk
vmap k gk
vmap j gj
" I like using H and L for beginning/end of line
nmap H 10h
nmap L 10l
nmap J 6j
nmap K 6k
vmap H 10h
vmap L 10l
vmap J 6j
vmap K 6k
" Quickly remove search highlights
nmap <F9> :nohl
nmap r <C-r>
nmap D d$
nmap <Space>d d^
nmap Y y$
nmap <Space>y y^
nmap C c$
nmap <Space>c c^
noremap S x
vmap x \"_d
nmap x \"_d
nmap X \"_d$
nmap <Space>x \"_d^

" Yank to system clipboard
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
"exmap back obcommand app:go-back
"nmap <C-o> :back
"exmap forward obcommand app:go-forward
"nmap <C-i> :forward
" 试试这几行能不能实现文件内行跳转的回撤, 不行就还是注释掉把, 好吧并没有卵用.
" 这几行直接用系统里的快捷键就完事了, 不然这里配置还只能在编辑模式用

"以下这四行是依赖through-panes插件的
"exmap tabnext obcommand cycle-through-panes:cycle-through-panes
"nmap <Space>k :tabnext
"exmap tabprev obcommand cycle-through-panes:cycle-through-panes-reverse
"nmap <Space>j :tabprev
exmap tabnext obcommand workspace:next-tab
nmap <Space>k :tabnext
exmap tabprev obcommand workspace:previous-tab
nmap <Space>j :tabprev


exmap splitright obcommand workspace:split-vertical
nmap <Space>p :splitright
exmap closetab obcommand workspace:close
nmap <Space>q :closetab


exmap focusleft obcommand editor:focus-left
nmap <Space>h :focusleft
exmap focusright obcommand editor:focus-right
nmap <Space>l :focusright


exmap togglefold obcommand editor:toggle-fold
nmap R :togglefold



exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }
exmap surround_code surround ` `
exmap surround_math surround $ $
exmap surround_Math surround $$ $$
" exmap surround_italic surround * *
" exmap surround_bold surround ** **
" exmap surround_highlight surround == ==
" 上面这四种另外定义toggle快捷键

" NOTE: must use 'map' and not 'nmap'
map [[ :surround_wiki
nunmap s
vunmap s
map s" :surround_double_quotes
map s' :surround_single_quotes
map sb :surround_brackets
map s( :surround_brackets
map s) :surround_brackets
map s[ :surround_square_brackets
map s] :surround_square_brackets
map sB :surround_curly_brackets
map s{ :surround_curly_brackets
map s} :surround_curly_brackets
map sc :surround_code
map sm :surround_math
map sM :surround_Math
"这里的code,反而是用vim比软件更加智能, 于是用vim的sc实现,这边的可以自动识别单词, 但是只能增不能减



" map si :surround_italic
" map sd :surround_bold
" map sh :surround_highlight

"下面这几个toggle命令, 适配得都不好, 选择使用软件的
"exmap togglebold obcommand editor:toggle-bold
"vmap sd :togglebold
"exmap toggleitalic obcommand editor:toggle-italics
"vmap si :toggleitalic
"exmap togglehl obcommand editor:toggle-highlight
"vmap sh :togglehl


```
