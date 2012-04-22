 syntax on
 set number
 colorscheme slate
 set tabstop=4
 set shiftwidth=4
 
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

 "Vundle configuration
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
