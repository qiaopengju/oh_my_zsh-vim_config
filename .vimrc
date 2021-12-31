set nocompatible
set mouse=a
set expandtab
set showcmd

set encoding=utf-8
"set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"set termencoding=utf-8
set termencoding=utf-8
set fileencoding=chinese
set fileencodings=ucs-bom,utf-8,chinese
set langmenu=zh_CN.utf-8
language messages zh_cn.utf-8
hi Normal ctermfg=252 ctermbg=none

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
filetype indent on

"UI
set number
set t_Co=256
set hlsearch
syntax enable
syntax on

"color solarized
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
color one
let g:one_allow_italics = 1


"************************Key map************************
    "key map
    nnoremap <C-J> <C-W><C-J>    " 组合快捷键：- Ctrl-j 切换到下方的分割窗口
    nnoremap <C-K> <C-W><C-K>    " 组合快捷键：- Ctrl-k 切换到上方的分割窗口
    nnoremap <C-L> <C-W><C-L>    " 组合快捷键：- Ctrl-l 切换到右侧的分割窗口
    nnoremap <C-H> <C-W><C-H>    " 组合快捷键：- Ctrl-h 切换到左侧的分割窗口
"************************************************

"=================================Vundle=================================
    "Vundle
    set nocompatible              " be iMproved, required
    filetype off                  " required

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
        Plugin 'VundleVim/Vundle.vim'
        "Plugin 'Valloric/YouCompleteMe'                     "c-family 补全插件
        Plugin 'preservim/nerdtree'                         "目录
        Plugin 'tmhedberg/SimpylFold'                       "折叠代码
        Plugin 'vim-airline/vim-airline'                    "airline
        Plugin 'vim-airline/vim-airline-themes'             "airline theme
        Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'    "高亮"
        Plugin 'ryanoasis/vim-devicons'                     "图标"
        "Plugin 'neoclide/coc.nvim', {'branch': 'release'}
        Plugin 'jiangmiao/auto-pairs'                      "添加引号,括号配对补全
        Plugin 'lervag/vimtex'
    call vundle#end()            " required
    filetype plugin indent on    " required
"========================================================================


"=================================================================="
"Plugin setting
"=================================================================="
"************************************************
    "vimtex
    let g:tex_flavor='latex'
    "let g: vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0
    set conceallevel=1
    let g:tex_conceal='abdmg'
"************************************************
"************************************************
    "airline
    let g:airline#extensions#tabline#enabled = 1   " 是否打开tabline
    "这个是安装字体后 必须设置此项" 
    let g:airline_powerline_fonts = 1
    set laststatus=2  "永远显示状态栏
    let g:airline_theme='bubblegum' "选择主题
    "let g:airline_theme='one' "选择主题
    "let g:airline_theme='base16' "选择主题
    let g:airline#extensions#tabline#enabled=1    "Smarter tab line: 显示窗口tab和buffer
    "let g:airline#extensions#tabline#left_sep = ' '  "separater
    "let g:airline#extensions#tabline#left_alt_sep = '|'  "separater
    "let g:airline#extensions#tabline#formatter = 'default'  "formater
    let g:airline_left_sep = '▶'
    let g:airline_left_alt_sep = '❯'
    let g:airline_right_sep = '◀'
    let g:airline_right_alt_sep = '❮'
"************************************************

"************************************************
    "SimpylFold*
    " 必须手动输入za来折叠（和取消折叠）
    set foldmethod=indent                " 根据每行的缩进开启折叠
    set foldlevel=99
    " 空格键折叠
    nnoremap <space> za
    au BufWinLeave * silent mkview          "自动保存折叠
    au BufWinEnter * silent loadview        "自动加载折叠
    " 希望看到折叠代码的文档字符串？
    let g:SimpylFold_docstring_preview=1
"************************************************

"************************************************
    "devicons
    "Can be enabled or disabled
    let g:webdevicons_enable_nerdtree = 1
    "whether or not to show the nerdtree brackets around flags
    let g:webdevicons_conceal_nerdtree_brackets = 1
    "adding to vim-airline's tabline
    let g:webdevicons_enable_airline_tabline = 1
    "adding to vim-airline's statusline
    let g:webdevicons_enable_airline_statusline = 1
"************************************************

"************************************************
    "highlight-vim-devicons
    "Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
    let g:NERDTreeFileExtensionHighlightFullName = 1
    let g:NERDTreeExactMatchHighlightFullName = 1
    let g:NERDTreePatternMatchHighlightFullName = 1

    "Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
    let g:NERDTreeHighlightFolders = 1

    "highlights the folder name
    let g:NERDTreeHighlightFoldersFullName = 1

    "you can add these colors to your .vimrc to help customizing
    let s:brown = "905532"
    let s:aqua =  "3AFFDB"
    let s:blue = "2967a1"
    let s:darkBlue = "44788E"
    let s:purple = "834F79"
    let s:lightPurple = "834F79"
    let s:red = "AE403F"
    let s:beige = "F5C06F"
    let s:yellow = "F09F17"
    let s:orange = "D4843E"
    let s:darkOrange = "F16529"
    let s:pink = "CB6F6F"
    let s:salmon = "EE6E73"
    let s:green = "8FAA54"
    let s:Turquoise = "40E0D0"
    let s:lightGreen = "31B53E"
    let s:white = "FFFFFF"
    let s:rspec_red = "FE405F"
    let s:git_orange = "F54D27"
    let s:gray = "808A87"

    let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
    let g:NERDTreeExtensionHighlightColor['o'] = s:gray " sets the color of o files to blue
    let g:NERDTreeExtensionHighlightColor['h'] = s:blue " sets the color of h files to blue
    let g:NERDTreeExtensionHighlightColor['c'] = s:green " sets the color of c files to blue
    let g:NERDTreeExtensionHighlightColor['cpp'] = s:green " sets the color of cpp files to blue
    let g:NERDTreeExtensionHighlightColor['c++'] = s:green " sets the color of c++ files to blue
"************************************************

"************************************************
    "NERDTree
    autocmd VimEnter * NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    let NERDTreeDirArrows=1
    let NERDTreeChDirMode=1
    let NERDTreeShowBookmarks=1 "显示书签"
    " 修改默认箭头
    let g:NERDTreeDirArrowExpandable = '▸'
    let g:NERDTreeDirArrowCollapsible = '▾'
    "Show hide file.
    let g:NERDTreeHidden=1
    let NERDTreeMinimalUI=1 "删除顶部帮助信息
    "let NERDTreeShowBookmarks=1
    "设置忽略文件类型"
    let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
    " 我们希望git信息在NERDTree中显示来，修改的文件和增加的文件都给出相应的标注
    let g:NERDTreeIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ "Unknown"   : "?"
        \ }

    " 显示行号
    let NERDTreeShowLineNumbers=1
    let NERDTreeAutoCenter=1
    "打开vim光标显示在文本处
    autocmd VimEnter * NERDTree
    wincmd w
    autocmd VimEnter * wincmd w
    " 在终端启动vim时，共享NERDTree
    "let g:nerdtree_tabs_open_on_console_startup=1
    "" Open the existing NERDTree on each new tab.
    autocmd BufWinEnter * silent NERDTreeMirror
    "使用F3键快速调出和隐藏它
    map <F3> :NERDTreeToggle<CR>
    "窗口大小"
    let NERDTreeWinSize=30
"************************************************


"************************************************
    "YouCompleteMe
    " 自动补全配置
    set completeopt=longest,menu "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
    inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" "回车即选中当前项
    "上下左右键的行为 会显示其他信息
    inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
    inoremap <expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"
    inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
    inoremap <expr> <PageUp> pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

    "youcompleteme 默认tab s-tab 和自动补全冲突
    "let g:ycm_key_list_select_completion=['<c-n>']
    let g:ycm_key_list_select_completion = ['<Tab>']
    "let g:ycm_key_list_previous_completion=['<c-p>']
    let g:ycm_key_list_previous_completion = ['<Up>']
    let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

    let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
    let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
    let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项
    let g:ycm_cache_omnifunc=0 " 禁止缓存匹配项,每次都重新生成匹配项
    let g:ycm_seed_identifiers_with_syntax=1 " 语法关键字补全
    "nnoremap <F5> :YcmForceCompileAndDiagnostics<CR> "force recomile with syntastic
    inoremap <leader><leader> <C-x><C-o>
    "在注释输入中也能补全
    let g:ycm_complete_in_comments = 1
    "在字符串输入中也能补全
    let g:ycm_complete_in_strings = 1
    "注释和字符串中的文字也会被收入补全
    let g:ycm_collect_identifiers_from_comments_and_strings = 0

    nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
"************************************************


"************************************************
    "SET Comment START
    autocmd BufNewFile *.cpp exec ":call SetComment()" |normal 10Go

    func SetComment()
        call append(0, '/***********************************************')
        call append(1, '*      Filename: '.expand("%"))
        call append(2, '*')
        call append(3, '*        Author: qiaopengju')
        call append(4, '*   Description: ---')
        call append(5, '*        Create: '.strftime("%Y-%m-%d %H:%M:%S"))
        call append(6, '* Last Modified: '.strftime("%Y-%m-%d %H:%M:%S"))
        call append(7, '************************************************/')
    endfunc
"************************************************


"************************************************
    "SET Last Modified Time END
    autocmd BufWritePre,FileWritePre *.cpp ks|call DataInsert() |'s
    func DataInsert()
        "call cursor(9,1)
        if search ('Last Modified') != 0
            let line = line('.')
            call setline(line, '# Last Modified: '.strftime("%Y-%m-%d %H:%M:%S"))
        endif
    endfunc
"************************************************


"************************************************
    "plugin
    call plug#begin('~/.vim/plugged')
        Plug 'autozimu/LanguageClient-neovim', {
        \ 'branch': 'next',
        \ 'do': 'bash install.sh',
        \ }

        " (Optional) Multi-entry selection UI.
        Plug 'junegunn/fzf'

        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    call plug#end()

    let g:LanguageClient_serverCommands = {
        \ 'cpp': ['/usr/local/bin/cquery'],
        \ 'c': ['cquery'],
        \ }

    nnoremap <F5> :call LanguageClient_contextMenu()<CR>
"************************************************
