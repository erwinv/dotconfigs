set nocompatible
set hidden

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'kshenoy/vim-signature'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'ervandew/supertab'
Plug 'gregsexton/gitv'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'keith/swift.vim'
Plug 'udalov/kotlin-vim'
call plug#end()

nnoremap <silent> <C-p> :FZF<CR>

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent

set number

set listchars=tab:>-,trail:~
set list

set hlsearch
set laststatus=2

syntax enable
set foldmethod=syntax
colorscheme default
"colorscheme solarized
"set background=light
set background=dark
let g:solarized_termcolors=256

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=18

set cursorline
set nowrap
