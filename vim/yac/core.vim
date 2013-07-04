" {{{ general
syn on
set backup
set encoding=utf-8
set number
set nocompatible
set backspace=2 " make backspace actually delete, help 'backspace'
" }}}

execute pathogen#incubate()

" {{{ status
set laststatus=2
set statusline=%F[%M%R]\ [%B\ %v\ %l/%L\ %p%%]\ [%Y\ %{&ff}]
" filepath [flags] [hex_no_of_char_under_cursor column_no
"   line_no/total_lines percentage] [filetype line_endings]
" flags:
"	+ - displayed if file is modified since last write
"	- - displayed if the buffer is not modifyable
"	RO - displayed if file is opened read only
set showmode

" }}}

" {{{
" http://justinlilly.com/vim/vim_and_python.html
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
" ^ this works only as im writing, not when the buffer is rendered
" }}}

" {{{ long lines
set wrap
set linebreak
set showbreak=+
set colorcolumn=73,81
highlight ColorColumn ctermbg=LightRed
set textwidth=72

highlight BadWhitespace ctermbg=red guibg=red
match BadWhitespace /\s\+$/
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

" {{{ move by displayed lines, not actual lines (used with wrap on)
nnoremap j gj
nnoremap k gk
" }}}


" {{{ buffers
:command Bd b # | bd #
" ^ closes the current buffer but not the window if there is a buffer to
"   go
" back to
" ^ for # see :h alternate-file
set wildchar=<Tab> wildmenu wildmode=full
" ^ Tab completion on commands, buffers, etc whilst displaying all the
" choices in menu
" }}}


au BufRead *.md set syntax=markdown
" ^ dont know what syntax is vim using by default, but it's not markdown
au BufRead *.cf set syntax=cf3


let b:rmtrailing=1
