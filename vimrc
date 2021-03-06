 syntax on
 set number
 colorscheme desert
 set tabstop=4
 set shiftwidth=4
 set nobackup
 set noswapfile
 
 "additoins
 set title
 set wildmenu
 set completeopt=menuone,preview
 set ruler
 set cursorline
 
 set hlsearch
 set incsearch
 set showmatch
 
 "for indentions
 set smartindent
 set autoindent
 set expandtab
 
 "Code folding fold with za
 set foldmethod=indent
 set nofoldenable
 
 "For autocomplete
 autocmd BufEnter * :syntax sync fromstart
 "开启vim 自动 运行tree
 "autocmd VimEnter * NERDTree
 "Pugins
 filetype on
 filetype plugin on

 "Python AutoComplPop
 autocmd FileType python set omnifunc=pythoncomplete#Complete


 " Set Arduino dictionary word list
 au FileType arduino set dictionary=~/.vim/dicts/arduinowords
 
 "key mappings
 "----------------------------
 "Pane movement
 map <C-j> <C-W>j
 map <C-k> <C-W>k
 map <C-h> <C-W>h
 map <C-l> <C-W>l
 
 "Resize panes with the mouse and select text
 set mouse=a
 
 "Move lines up and down
 nnoremap m2<cr> :m+2
 nnoremap m1<cr> :m+
 nnoremap m-2<cr> :m-2
 
 "NerdTree Toggle
 nnoremap <F3> :NERDTree %:h <CR>
 
 "Ctags toggle
 nmap <F4> :TagbarToggle<CR>
 let g:tagbar_ctags_bin = '/usr/local/bin/ctags'

 "update help doc
 nnoremap <F7> :helptags ~/.vim/doc<CR>
 
 "OmniComplete 
 inoremap <Nul> <C-x><C-o>
 
 
 "lua set
 let g:Lua_AuthorName      = 'lihex'
 let g:Lua_AuthorRef       = 'lhx'
 let g:Lua_Email           = 'lihe757@gmail.com'
 let g:Lua_Company         = 'cocos2d-x.org'
 
 "Use emacs style key binding on i mode
 imap <C-F> <RIGHT>
 imap <C-B> <LEFT>
 imap <C-D> <DELETE>
 
 "a.vim key binding
 noremap \a  :A<CR>
 inoremap \a <C-C>:A<CR>

 "markdown
 nnoremap <F10> :!python -m markdown % -e utf-8 > %:r.html<CR>
 noremap \e  :!open  %:r.html<CR>

 "路径复制
 map <F9> :let @+=expand('%:p')<cr>

 " for powerline
 if has("gui_running") 
 " set laststatus=2   " Always show the statusline
 " set encoding=utf-8 " Necessary to show Unicode glyphs
  set guifont=dzForPowerline\ for\ Powerline
  let g:Powerline_symbols = 'fancy'
 endif

 "==============Vundle configuration ==================
 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 Bundle 'The-NERD-tree'
 Bundle 'ZenCoding.vim'
 Bundle 'c.vim'
 Bundle 'clang-complete'
 Bundle 'Tagbar'
 Bundle 'AutoComplPop'
 Bundle 'pythoncomplete'
 Bundle 'snipMate'
 Bundle 'lua-support'
 Bundle 'a.vim'
 Bundle 'bash-support.vim'
 Bundle 'vimwiki'
 Bundle 'ack.vim'
 Bundle  'nelstrom/vim-qargs'
 "Bundle 'https://github.com/Valloric/YouCompleteMe.git'
 Bundle 'https://github.com/Lokaltog/vim-powerline.git'
 Bundle 'rails.vim'
 "Ctrlp 文件模糊查找
 Bundle 'https://github.com/kien/ctrlp.vim.git'
 "typescript
 Bundle 'https://github.com/leafgarland/typescript-vim'
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 

"Ctrlp
    "{
        "set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.png,*.gz,*.class,.DS_Store  " MacOSX/Linux
        "let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
        nnoremap <leader>m :CtrlPMRU<CR>
        nnoremap <leader>b :CtrlPBuffer<CR>
        nnoremap <leader>p :CtrlP $CWD<CR>
        let g:ctrlp_working_path_mode = 'c'
        let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/](target|dist)|\.(git|hg|svn|rvm)$',
            \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$|\.g.js',
            \ }
        let g:ctrlp_follow_symlinks=1
    "}

" 全局查找字符
nnoremap <F8> :call SearchAll()<cr>
function! SearchAll()
let text = input('please search content: ')
       if text != ''
           exe 'grep -n -R '.text.' **'
           exe 'copen'
       endif
   endfunc
