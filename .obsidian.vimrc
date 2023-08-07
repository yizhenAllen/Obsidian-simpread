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
exmap surround_CODE surround ``` ```
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
map sC :surround_CODE
map sm :surround_math
map sM :surround_Math
"这里的surround code,软件并不智能, 于是用vim的sc实现
"上面的可以自动识别单词, 但是只能增不能减

"下面这几个toggle命令, 适配得都不好, 选择使用软件的
" map si :surround_italic
" map sd :surround_bold
" map sh :surround_highlight

"exmap togglebold obcommand editor:toggle-bold
"vmap sd :togglebold
"exmap toggleitalic obcommand editor:toggle-italics
"vmap si :toggleitalic
"exmap togglehl obcommand editor:toggle-highlight
"vmap sh :togglehl

