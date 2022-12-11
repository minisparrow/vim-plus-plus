"
"             __                __          
"     __   __/_/___ ___  ____  / /_  _______
"     \ \ / / / __ `__ \/ __ \/ / / / / ___/
"      \ V / / / / / / / /_/ / / /_/ (__  )
"       \_/_/_/ /_/ /_/ ,___/_/\____/____/
"                    /_/
"            
"
" Author: frankliu <frankliu624@outlook.com>
" Repository: https://github.com/FLHonker/vim-plus-plus
" Create Date: 2017-06-24
" License: MIT

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","      " 定义<leader>键
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=1         " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set cursorline           " 高亮显示当前行
set whichwrap+=<,>,h,l   " 设置光标键跨行
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set mouse=v              " 设置使用鼠标模式


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=syntax   " 设置基于语法进行代码折叠
set nofoldenable        " 关闭折叠代码

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'chxuan/cppfun'
Plug 'chxuan/change-colorscheme'
Plug 'Yggdroot/LeaderF'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'Valloric/YouCompleteMe'      " replaced by Deep-TabNine 
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'majutsushi/tagbar'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/L9'
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/txt.vim'
" Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'junegunn/vim-slash'
Plug 'junegunn/gv.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function'
Plug 'sgur/vim-textobj-parameter'
Plug 'Shougo/echodoc.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-smooth-scroll'
Plug 'terryma/vim-expand-region'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'othree/html5.vim'
Plug 'plasticboy/vim-markdown'
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/indentpython.vim'
Plug 'rkulla/pydiction'
Plug 'scrooloose/syntastic'
Plug 'nvie/vim-flake8'
Plug 'kien/ctrlp.vim'
Plug 'skywind3000/vim-keysound'  " vim打字机
Plug 'Yggdroot/indentLine'      "缩进线
Plug 'vim-scripts/DoxygenToolkit.vim'   "代码注释
Plug 'cpiger/NeoDebug'          " C++ debug
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'zxqfl/tabnine-vim'       " Deep TabNine 深度补全插件
Plug 'epheien/termdbg'

"lj add
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'inkarkat/vim-mark'
Plug 'inkarkat/vim-ingo-library'
" "

call plug#end()            

" load vim default plugin
runtime macros/matchit.vim

" 编辑vimrc文件
nnoremap <leader>e :edit $MYVIMRC<cr>

" 查看vimplus的help文件
nnoremap <leader>h :edit ~/.vimplus/help.md<cr>

" 打开当前光标所在单词的vim帮助文档
nnoremap <leader>H :execute ":help " . expand("<cword>")<cr>

" 重新加载vimrc文件
nnoremap <leader>s :source $MYVIMRC<cr>

" buffer切换
nnoremap <c-n> :bn<cr>
nnoremap <c-p> :bp<cr>
nnoremap <leader>d :bd<cr>

" 主题
"set background=dark
"let g:onedark_termcolors=256
colorscheme SolarizedDark

" airline
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = ' '
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = ' '

" cppfun
nnoremap <leader>y :CopyFun<cr>
nnoremap <leader>p :PasteFun<cr>
nnoremap <leader><leader>fp :FormatFunParam<cr>
nnoremap <leader><leader>if :FormatIf<cr>

" change-colorscheme
nnoremap <silent> <F9> :PreviousColorScheme<cr>
inoremap <silent> <F9> <esc> :PreviousColorScheme<cr>
nnoremap <silent> <F10> :NextColorScheme<cr>
inoremap <silent> <F10> <esc> :NextColorScheme<cr>
nnoremap <silent> <F11> :RandomColorScheme<cr>
inoremap <silent> <F11> <esc> :RandomColorScheme<cr>
nnoremap <silent> <F12> :ShowColorScheme<cr>
inoremap <silent> <F12> <esc> :ShowColorScheme<cr>

" nerdtree
nnoremap <leader>n :NERDTreeToggle<cr> :vertical resize 20<cr>
inoremap <leader>n <esc> :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'

" ctags
set tags+=/usr/include/tags
set tags+=~/.vim/systags
set tags+=~/.vim/x86_64-linux-gnu-systags
set tags+=/usr/local/include/tags

" a.vim: .h -> .cpp or .cpp -> .h
nnoremap <silent> <leader>a :A<cr>

" tagbar
let g:tagbar_width = 30
nnoremap <leader>t :TagbarToggle<cr>
inoremap <leader>t <esc> :TagbarToggle<cr>
nnoremap <leader>rr :vertical resize +20

" cpp_class_scope_highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let c_no_curly_error = 1

" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" markdown
let uname = system('uname -s')
if uname == "Darwin\n"
    let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"
else
    let g:mkdp_path_to_chrome = '/usr/bin/google-chrome-stable %U'
endif
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview

" vim-easymotion
let g:EasyMotion_smartcase = 1
map <leader>w <Plug>(easymotion-bd-w)
nmap <leader>w <Plug>(easymotion-overwin-w)

" pydiction
let g:pydiction_location='~/.vim/plugged/pydiction/complete-dict'
let g:pydiction_menu_height=10

" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" LeaderF
nnoremap <leader>ff :LeaderfFile <cr>
nnoremap <leader>fu :LeaderfFunction <cr>
nnoremap <leader>f :Leaderf <space>
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_UseCache = 0
let g:Lf_WindowPosition = 'popup'

" ack
nnoremap <Leader>F :Ack!<space>

" echodoc.vim
let g:echodoc_enable_at_startup = 1

" tabular
nnoremap <leader>l :Tab /\|<cr>
nnoremap <leader>= :Tab /=<cr>

" vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_word_key      = '<C-j>'
let g:multi_cursor_select_all_word_key = '<A-j>'
let g:multi_cursor_start_key           = 'g<C-j>'
let g:multi_cursor_select_all_key      = 'g<A-j>'
let g:multi_cursor_next_key            = '<C-j>'
let g:multi_cursor_prev_key            = '<C-k>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" vim 打字机效果vim-keysoind
" vim启动时自启动
let g:keysound_enable = 0
" 设置默认主题，可以使用：default, typewriter, mario, bubble, sword
let g:keysound_theme = 'default'
" 设置Python版本:2 or 3,默认会自动检测
let g:python_py_version = 3
" 设置音量:0-1000
let g:keysound_vloume = 1000


" gv
nnoremap <leader>g :GV<cr>
nnoremap <leader>G :GV!<cr>
nnoremap <leader>gg :GV?<cr>

" 个性化
if filereadable(expand($HOME . '/.vimrc.local'))
    source $HOME/.vimrc.local
endif

" vimtex settings
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" UltiSnips 
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:ycm_use_ultisnips_completer = 0
let g:ycm_log_level = 'debug'


""""""""""""""""""""""""""""""""""""""""""""""""""""
" SET Comment START
""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.go,*.java,*.h,*.hpp,*.c,*.cc,*.cpp,*.sh,*.py,*.m exec ":call SetComment()" 
"|normal 10Go
func SetComment()
    if expand("%:e") == 'go'
        call setline(1, "// Go file")
    elseif expand("%:e") == 'java'
        call setline(1, '// Java file')
    elseif expand("%:e") == 'h'
        call setline(1, '// C/C++ header file')
    elseif expand("%:e") == 'hpp'
        call setline(1, '// C/C++ header file')
    elseif expand("%:e") == 'cc'
        call setline(1, '// Linux/Unix C++ source file')
    elseif expand("%:e") == 'c'
        call setline(1, '// C source file')
    elseif expand("%:e") == 'cpp'
        call setline(1, '// C++ source file')
    elseif expand("%:e") == 'sh'
        call setline(1, '#!/bin/bash')
    elseif expand("%:e") == 'py'
        call setline(1, '# -*- coding: UTF-8 -*-')
    elseif expand("%:e") == 'm'
        call setline(1, '# MATLIB/Octave source file')
    endif

    call append(1, '/***********************************************')
    call append(2, '# Copyright (c) 2019, Shanghai')
    call append(3, '# All rights reserved.')
    call append(4, '#')
    call append(5, '# @Filename: '.expand("%"))
    call append(6, '# @Version：V1.0')
    call append(8, '# @Description: ---')
    call append(9, '# @Create Time: '.strftime("%Y-%m-%d %H:%M:%S"))
    call append(10, '# @Last Modified: '.strftime("%Y-%m-%d %H:%M:%S"))
    call append(11, '***********************************************/')
    call append(12, ' ')
"    call append(13, '')

endfunc
map <F2> :call SetComment()<CR>:10<CR>o
if has('python3')
 silent! python3 1
endif

" SET Comment END
"let g:ycm_server_python_interpreter = '/home/mlrobot/tools/python3.8/bin/python3.8'


""""""""""""""""""""""""""""""""""""""""""""""""""""
"gtags
""""""""""""""""""""""""""""""""""""""""""""""""""""
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']

" config project root markers.
let g:gutentags_project_root = ['.root']

"" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" change focus to quickfix window after search (optional)
let g:gutentags_plus_switch = 1"

let g:gutentags_define_advanced_commands = 0

noremap <leader>tn :tabnew <cr>
noremap <leader>nn :tabn <cr>
noremap <leader>pp :tabp <cr>

" termdebug vertical 
let g:termdebug_wide = 163
let g:termdbg_wide = 163
noremap <leader>lll :wincmd H <cr>


" airline
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

if executable('ffi-navigator')
  " pip3 install ffi-navigator
  au User lsp_setup call lsp#register_server({
        \ 'name': 'ffi-navigator.langserver',
        \ 'cmd': {server_info->['ffi-navigator']},
        \ 'whitelist': ["python","cpp"],
        \ })
endif
