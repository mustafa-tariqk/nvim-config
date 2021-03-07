call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-commentary'
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tommcdo/vim-lion'
Plug 'romainl/vim-qf'
Plug 'romainl/vim-qlist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sensible'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'tomtom/ttags_vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-unimpaired'
Plug 'ackyshake/VimCompletesMe'

call plug#end()

if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor\ --ignore-case\ --column
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]

function! StripTrailingWhitespace()
  if !&binary && &filetype != 'diff'
    normal mz
    normal Hmy
    %s/\s\+$//e
    normal 'yz<CR>
    normal `z
  endif
endfunction

set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab

set autoindent
filetype plugin indent on

set number relativenumber

set termguicolors

syntax enable

let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox
