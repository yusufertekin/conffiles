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
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'nvie/vim-flake8'
Plugin 'posva/vim-vue'
Plugin 'ajh17/VimCompletesMe'


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
    \ set textwidth=120 |
    \ set expandtab |
    \ set fileformat=unix

au BufNewFile,BufRead *.js,*.html,*.css,*.scss,*.yml,*.yaml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab

au BufNewFile,BufRead *.vue
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab

" Flake check key remap to leader + c 
" Move to next error ctrl + x
" Move to previous error ctrl + z

nnoremap <leader>c :call Flake8()<CR>
autocmd FileType python map <buffer> <F5> :call Flake8()<CR>
map <C-x> :cn<CR>
map <C-z> :cp<CR>

" Turn off autocomplete jedi
let g:jedi#completions_enabled = 0
" Disable call signatures on insert mode
let g:jedi#show_call_signatures = "0"

" Remove trailing whitespace
"autocmd BufWritePre *.py :%s/\s\+$//e

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

" Backspace problem
set backspace=indent,eol,start

syntax enable
" Disable bip sound
set noeb vb t_vb=
