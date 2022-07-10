
"""""""""""""""""""""""""""""""""""
"""=>全局配置<="""
"""""""""""""""""""""""""""""""""""
"关闭vi兼容模式"
set nocompatible

"设置历史记录步数"
set history=1000

"当文件在外部被修改时，自动更新该文件"
set autoread

"激活鼠标的使用"
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"保存全局变量"
set viminfo+=!

"带有如下符号的单词不要被换行分割"
set iskeyword+=_,$,@,%,#,-

"通过使用: commands命令，告诉我们文件的哪一行被改变过"
set report=0

"""""""""""""""""""""""""""""""""""
""""""""""""=>字体和颜色<=""""""""""
"""""""""""""""""""""""""""""""""""
"自动开启语法高亮"
syntax enable


"""""""""""""""""""""""""""""""""""
"""""""""""""""""=>文字处理<="""
"""""""""""""""""""""""""""""""""""
"使用空格来替换Tab"
"set expandtab

"设置所有的Tab和缩进为4个空格"
set tabstop=4

"设定<<和>>命令移动时的宽度为4"
set shiftwidth=4

"使得按退格键时可以一次删除4个空格"
set softtabstop=4
set smarttab

"缩进，自动缩进（继承前一行的缩进）"
"set autoindent 命令打开自动缩进，是下面配置的缩写
"可使用autoindent命令的简写，即“:set ai”和“:set noai”
"还可以使用“:set ai sw=4”在一个命令中打开缩进并设置缩进级别
set ai
set cindent

"智能缩进"
set si

"自动换行”
set wrap

"设置软宽度"
set sw=4

"行内替换"
set gdefault


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""编码设置""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置编码"
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"设置文件编码"
set fileencodings=utf-8

"设置终端编码"
set termencoding=utf-8

"设置语言编码"
set langmenu=zh_CN.UTF-8
set helplang=cn

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""" syntastic""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""NERDTree""""""""""""""""""""""""""""
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


""""""""""""""""""""""""""""""""""""""""自动启动NERDTree""""""""""""""""""""""""""""""""""""""""""""""""
" 启动 NERDTree 并将光标留在其中。
autocmd VimEnter * NERDTree

" 启动 NERDTree 并将光标放回另一个窗口。
"autocmd VimEnter * NERDTree | wincmd p

" 在没有文件参数的情况下启动 Vim 时启动 NERDTree。
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" 启动 NERDTree。如果指定了文件，则将光标移动到其窗口。
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" 启动 NERDTree，除非指定了文件或会话，例如。 vim -S session_file.vim。
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

" 当 Vim 以目录参数启动时启动 NERDTree。
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

"""""""""""""""""""""当 NERDTree 是最后一个窗口时，如何自动关闭 Vim 或选项卡？""""""""""""""""""""""""""""""""""""""""
" 如果 NERDTree 是唯一选项卡中剩下的唯一窗口，则退出 Vim。
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" 如果 NERDTree 是其中唯一剩余的窗口，请关闭选项卡。
"autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"""""""""""""""""""""""""""""如何防止其他缓冲区在其窗口中替换 NERDTree""""""""""""""""""""""""""""""""""""""""""""""""
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
"autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

"""""""""""""""""""""""""""自动拥有相同的 NERDTree""""""""""""""""""""""""""""""""""""""""""""""""
" 在每个新选项卡上打开现有的 NERDTree。
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" 在显示之前镜像 NERDTree。 这使得它在所有选项卡上都相同.
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>

" 更改默认箭头
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" (1) NERDTree
" NERDTree 是 Vim 编辑器的文件系统浏览器。
" 使用该插件，用户可以直观地浏览复杂的目录层次结构，快速打开文件进行阅读或编辑，并执行基本的文件系统操作。
Plug 'scrooloose/nerdtree'


" (2) fugitive
" 
Plug 'tpope/vim-fugitive'

" (3) airline
" 当插件正确加载后，每个 vim 窗口的底部都会有一个漂亮的状态行。
" 该行由几个部分组成，每个部分显示一些信息。
Plug 'vim-airline/vim-airline'

" (4) 
"
Plug 'scrooloose/syntastic'

" (5) surround
" 关于“环境”的：圆括号、方括号、引号、XML 标签等等。该插件提供映射以轻松地成对删除、更改和添加此类环境
Plug 'tpope/vim-surround'

" (6) youcompleteme
" 代码填充
Plug 'valloric/youcompleteme'

" (7) vim-airline-themes
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()