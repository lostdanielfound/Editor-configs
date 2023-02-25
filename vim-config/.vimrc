" Guide on setting up config https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
" Ensure that this file .vimrc is placed within the home directory of the user ~/.vimrc

" BASIC_SETTINGS ----------------------------------------------------------------- {{{
set nocompatible " Disable compatibility with vi
filetype on	 " Enable type file detection
filetype plugin on " Loads plugins for deteced file type
filetype indent on " Load anb indent file for the detected file type

syntax on		"pretty self-explainatory
colorscheme dracula
set number		"number line is turned on
set relativenumber	"number line is relative to current position of cursor, NOTE: use the relative number you would like to go to and press a motion key. I.e: 10<j>
set nowrap "Do not wrap lines
set hlsearch		"enables highlighting search
set cursorline		"Highlight cursor horizontally
" }}}

" MISC_SETTINGS ----------------------------------------------------------------- {{{
set incsearch " While searching though a file incrementally highlight matching characters as you type.
set ignorecase " Ignore capital letters during search.
set smartcase " Override the ignorecase option if searching for capital letters. This will allow you to search specifically for capital letters.
set showcmd " Show partial command you type in the last line of the screen.
set showmode " Show the mode you are on the last line.
set showmatch " Show matching words during a search.
set wildmenu
set wildmode=list:longest
set history=100 " Set the commands to save in history
" }}}

" MAPPINGS ------------------------------------------------------------------- {{{
inoremap jjj <esc> 		   " remaping <esc> to jjj in insert mode
let mapleader = "," 		   " setting the mapleader to be ','
nnoremap <leader>, :nohlsearch<CR> " map clears highlighting buffer
nnoremap Y y$			   " Yank from cursor to the end of the line
vnoremap 4 $			   " Highlights upto the end of the line in visual mode
nnoremap zA zR		"Opens all the folds
nnoremap zC zM		"Closes all the folds
nnoremap <c-j> <c-w>j " Focus on vim windows
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
noremap <c-o> <c-w>+ " Resize vim windows
noremap <c-i> <c-w>-
noremap <c-u> <c-w>>
noremap <c-p> <c-w><
" }}}

" VIMSCRIPTS  ----------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
set statusline+=\ %F\ %M\ %Y\ %R
" }}}

" PLUGINS ---------------------------------------------------------------- {{{
" Ensure that .vim directory is in ~/.vim along with it's subdirectories: autoload, plugged, backup, colors
" Run the following script to install the plugin manager for vim
"
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
	Plug 'dracula/dracula-theme'
call plug#end()
" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}
