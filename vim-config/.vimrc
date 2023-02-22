set nocompatible
filetype on
filetype plugin on
filetype indent on

syntax on		"pretty self-explainatory
colorscheme elflord	"nice colorscheme
set relativenumber	"number line is relative to current position of cursor
set hlsearch		"enables highlighting search
set number		"number line is turned on

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

set wildmenu
set wildmode=list:longest

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END


" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" PLUGINS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')

call plug#end()
" }}}
