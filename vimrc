set background=dark
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized
hi Normal guibg=NONE ctermbg=NONE

syntax on
filetype plugin indent on

set encoding=utf-8
set mouse=a
set nocompatible
set splitbelow splitright
set autoindent
set smartindent
set noexpandtab
set tabstop=4
set softtabstop=0
set shiftwidth=4
set lazyredraw
set wildmenu
set wildmode=longest,list,full
set ignorecase
set smartcase
set showmatch
set showcmd
set ruler
set number
set showcmd
set foldenable
set foldmethod=marker

set backup
set backupdir=~/.vim-tmp
set backupskip=/tmp/*
set directory=~/.vim-tmp
set writebackup

execute pathogen#infect()
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#ale#enabled = 1
set updatetime=100
let g:indent_guides_enable_on_vim_startup = 1
