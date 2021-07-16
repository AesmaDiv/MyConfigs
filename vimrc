autocmd! bufwritepost .vimrc source %
autocmd VimEnter * silent !echo -ne "\e[1 q"

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'smancill/conky-syntax.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'phanviet/vim-monokai-pro'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable

set termguicolors
colorscheme monokai_pro
set background=dark

let &t_SI = "\<Esc>[5 q"
let &t_SR = "\<Esc>[3 q"
let &t_EI = "\<Esc>[1 q"

set timeoutlen=100
set ttimeoutlen=50

if has("gui_running")
	set guifont=Fira\ Code\ 11
	set lines=40 columns=85
endif

set guioptions-=T
set colorcolumn=80

set number
set ruler
set cursorline
set backspace=indent,eol,start

set incsearch
set hlsearch
set smartcase

set tabstop=4
set shiftwidth=4
set smarttab
set smartindent

nnoremap gcp "+p
noremap gcp "+p

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
