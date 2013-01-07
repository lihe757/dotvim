 syntax on
 set number
 set tabstop=4
 set shiftwidth=4
 set noswapfile
 set nobackup
 set encoding=utf-8
 set fileencodings=utf-8,chinese,latin-1

 "==============GUI configuration ==================
 if has("gui_running")
     source $VIMRUNTIME/mswin.vim
     source $VIMRUNTIME/delmenu.vim
     source $VIMRUNTIME/menu.vim
     language messages zh_CN.utf-8
     colorscheme desert
 endif
 
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
 
 "Pugins
 filetype on
 filetype plugin on


 " Set Arduino dictionary word list
 au FileType arduino set dictionary=$VIMFILES/dicts/arduinowords
 
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
 nnoremap <F3> :NERDTreeToggle<CR>
 
 "Ctags toggle
 nmap <F4> :TagbarToggle<CR>
 if has("win32")
    let $VIMFILES = $HOME.'/vimfiles'
    let $V = $HOME.'/_vimrc'
    let g:tagbar_ctags_bin = 'C:\Git\bin\ctags'

 else
    let $VIMFILES = $HOME.'/.vim'
    let $V = $HOME.'/.vimrc'
    let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
 endif

 "update help doc
 nnoremap <F7> :helptags $HOME/doc<CR>
 
 "OmniComplete 
 inoremap <Nul> <C-x><C-o>
 
 
 "lua set
 let g:Lua_AuthorName      = 'your name'     
 let g:Lua_AuthorRef       = 'yourname'                         
 let g:Lua_Email           = 'yourmail@yourmail.com'            
 let g:Lua_Company         = 'your company'    
 
 "Use emacs style key binding on i mode
 imap <C-F> <RIGHT>
 imap <C-B> <LEFT>
 imap <C-E> <END>
 imap <C-A> <HOME>
 imap <C-D> <DELETE>
 
 "a.vim key binding
 noremap \a  :A<CR>
 inoremap \a <C-C>:A<CR>

 "markdown
 nnoremap <F8> :!cmd /c c:\Python27\python c:\Python27\Scripts\markdown.py % -e chinese > %:r.html<CR>
 noremap \e  :!cmd /c start %:p:r.html<CR>

 "Backspace
 if has("gui_running") && has("win32")
    set backspace=2
    " Make shift-insert work like in Xterm
    map <S-Insert> <MiddleMouse>
    map! <S-Insert> <MiddleMouse>
 endif


 "==============Vundle configuration ==================
 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=$VIMFILES/bundle/vundle/
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
 Bundle 'DoxygenToolkit.vim'
 "Bundle 'xmledit'
 "Bundle 'dwm.vim'
 Bundle 'https://github.com/Lokaltog/vim-powerline.git'
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
