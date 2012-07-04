" {{{ general
syn on
set backup
set encoding=utf-8
set number
set nocompatible
set backspace=2 " make backspace actually delete, help 'backspace'
" }}}

" {{{ status
set laststatus=2
set statusline=%F%m%r%h%w\ %v\ %p%%\ %L
set showmode

" }}}

" {{{ long lines
set wrap
set linebreak
set showbreak=+
" }}}

" {{{ search
set hlsearch
set ignorecase
set smartcase
set incsearch
" }}}

" {{{ indenting
set smartindent
set noexpandtab

set shiftwidth=4
set softtabstop=4
set tabstop=4
" }}}

" {{{ personal convenience keymaps
nnoremap ,V :source /etc/vim/vimrc<Enter>
" ^ reload vim config on ,V
nnoremap <C-e> <C-^>
" jump to previously active window
nnoremap <silent> <F9> :TagbarToggle<CR>
" }}}

" {{{ vim defaults
set showmode
set showcmd
" }}}
