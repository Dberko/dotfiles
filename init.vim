set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
set hidden
set scrolloff=8
set sidescrolloff=8

" Plugins
call plug#begin("~/.vim/plugged")
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

" color schemes
 if (has("termguicolors"))
 set termguicolors
 endif
 syntax enable
 " colorscheme evening
colorscheme dracula

" open new split panes to right and below
set splitright
set splitbelow

" KEY BINDINGS
" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jj <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>

let mapleader = "\<space>"
map gf :edit <cfile><cr>
vnoremap < <gv
vnoremap > >gv

:nnoremap <Leader>s :w <Esc>
:nnoremap <Leader>q :wq <Esc>

