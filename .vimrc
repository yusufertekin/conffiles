set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The bundles you install will be listed here
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'

call vundle#end()         
filetype plugin indent on
" The rest of your config follows here

" Open a file using :e relative to open file location
" set autochdir

" Powerline setup
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
"set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set laststatus=2

set noshowmode

" PEP8 Standards
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Turn of autocomplete jedi
let g:jedi#completions_enabled = 0

" Remove trailing whitespace
autocmd BufWritePre *.py :%s/\s\+$//e

set number
set relativenumber

" Undo on re-opened file
set undodir=~/.vim/undo
set undofile

" Searching starts after you enter the string
set incsearch
" Highlight search option
set hlsearch

nnoremap <leader>v V`]
nnoremap <leader><space> :noh<cr>
inoremap jj <ESC>
" Map Enter and Shift+Enter for new line without entering insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Matchs brackets
syn match parens /[(){}]/
" Vim search highlighting colors
hi Search cterm=NONE ctermfg=grey ctermbg=darkblue
" Ignore pyc files for file tree
let NERDTreeIgnore=['\.pyc$', '\~$'] 
" Access your system clipboard
set clipboard=unnamed

" Nerd tree shortcut Ctrl+n
map <C-n> :NERDTreeToggle<CR>

syntax enable