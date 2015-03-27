set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Ctrl P Fuzzy Search Plugin
Plugin 'kien/ctrlp.vim'

" Colorschemes Install
Plugin 'flazz/vim-colorschemes'

" Coffescript Syntax
Plugin 'kchmck/vim-coffee-script'

" NerdTree Project Explorer
Plugin 'scrooloose/nerdtree'

" Lightweight Powerline status for VIM
Plugin 'bling/vim-airline'

"Git integration for vim used by Powerline
Plugin 'tpope/vim-fugitive'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" set syntax highlighting
syntax enable

" set line numbers
set number

" General key mappings
let mapleader = ","
:nnoremap <Leader>j :bn!<CR>
:nnoremap <Leader>k :bp!<CR>

" set colorscheme
colorscheme molokai

" Whitespace
set tabstop=2 "a tab is two spaces
set softtabstop=2 "backspace two spaces to unindent
set shiftwidth=2 "an autoindex with << is two spaces
set expandtab "use spaces, not tabs"
set backspace=indent,start,eol "backspace through everything in insert mode

""""""""""""""""""""""""""""""""""
" Vim airline
""""""""""""""""""""""""""""""""""
let g:airline_theme             = 'powerlineish'
let g:airline_powerline_fonts   = 1
let g:airline_enable_branch     = 1
let g:airline_detect_whitespace = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2
set ttimeoutlen=50

""""""""""""""""""""""""""""""""""
" NERDtree
""""""""""""""""""""""""""""""""""
:nnoremap <C-e> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden=1

""""""""""""""""""""""""""""""""""
" Searching
""""""""""""""""""""""""""""""""""
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
