set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-fireplace'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'keith/rspec.vim'
Plugin 'tpope/vim-endwise'
Plugin 'lifepillar/vim-solarized8'
Plugin 'solarnz/thrift.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'fatih/vim-go'
call vundle#end()            " required
filetype plugin indent on    " required
execute pathogen#infect()
" Ruby highlighting
Bundle 'vim-ruby/vim-ruby'

" Highlighting
syntax on
" Filetype detection => specific indenting and plugins
filetype on
filetype indent on
filetype plugin on
set tabstop=2

""" NERDTree stuff (start automatically, etc.)
" Open NERDTree automatically when vim starts up if no files
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Open NERDTree automatically when vim starts up if passed dir
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Quit if NERDTree is only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Use ctrl-n to toggle the NERDTree
map <C-n> :NERDTreeToggle<CR>
map <Bslash> <C-w>

" CtrlP stuff
set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=/usr/local/opt/fzfk

" Show line numbers
set number

" Break arrow key habbit
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Indentation
set smartindent
set autoindent

" No tabs
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab
autocmd Filetype rb setlocal tabstop=2

" load indent file for the current filetype
filetype indent on

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Use zsh
set shell=zsh

" Color scheme
set background=dark
colorscheme solarized8

" Force vim to recognize truecolor within tmux
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" Overlength highlighting
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd BufNewFile,BufRead *.rb match OverLength /\%101v.\+/
" autocmd BufNewFile,BufRead *.md match OverLength /\%81v.\+/

" Aliases
cnoreabbrev <expr> op ((getcmdtype() is# ':' && getcmdline() is# 'op')?('CtrlP'):('op'))

" Airflow file syntax highlighting
au BufNewFile,BufRead *.conf set filetype=python

" Ctrl p shit
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
if getcwd() =~ '/repos/'
  let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor\|build$'
else
  let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor\|build$\|repos'
endif

" Unify system clipboard
set clipboard=unnamed
