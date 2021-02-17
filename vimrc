autocmd! bufwritepost .vimrc source %

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

call vundle#end()            " required
filetype plugin indent on    " required


syntax enable

colorscheme monokai
set background=dark

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
