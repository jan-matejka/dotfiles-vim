" {{{ general
syn on
filetype plugin on
set backup
set encoding=utf-8
set number
set nocompatible
set backspace=2 " make backspace actually delete, help 'backspace'
"set cursorline " highlight entire line cursor is on
colorscheme darkblue
autocmd ColorScheme * hi Normal ctermbg=none
" ^ override the ctermbg from the colorscheme
" }}}

execute pathogen#infect()

set nofoldenable
" Don't fold by default

" {{{ status
set laststatus=2
set statusline=%F[%M%R]\ [%B\ %v\ %l/%L\ %p%%]\ [%Y\ %{&ff}]
" filepath [flags] [hex_no_of_char_under_cursor column_no
"   line_no/total_lines percentage] [filetype line_endings]
" flags:
"    + - displayed if file is modified since last write
"    - - displayed if the buffer is not modifyable
"    RO - displayed if file is opened read only
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

set colorcolumn=101
highlight ColorColumn ctermbg=LightRed
set textwidth=100

highlight BadWhitespace ctermbg=red guibg=red
match BadWhitespace /\s\+$/
" }}}

" {{{ search
set hlsearch
set ignorecase
set smartcase
set incsearch
" }}}

set expandtab
" I love the idea of tabs for indent and sppaces for align, but it just
" doesn't work when you are making the text fit into N characters long
" columns. It just doesn't.
" This is basicly **aligning** the whole line, only to the right instead
" of to the left and for aligning there are spaces. boom.

set shiftwidth=2
set softtabstop=2
set tabstop=2
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

autocmd ColorScheme * hi IndentGuidesOdd  ctermbg=darkgrey
autocmd ColorScheme * hi IndentGuidesEven ctermbg=lightgrey
" ^ needs to be prefixed with the autocmd in order to take effect when
" colorscheme is also defined

let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 1

map <C-n> :NERDTreeToggle<CR>

" Ycm Jump to Declaration of symbol under cursor
" python:
"   if standing on class name, jumps to its import
nnoremap yc :YcmCompleter GoToDeclaration<CR>

" Ycm Jump to Definition of symbol under cursor
" python:
"   if standing on class name, jumps to its definition
"   if standing on variable, can't jump
nnoremap yf :YcmCompleter GoToDefinition<CR>

" Ycm Jump to References of symbol under cursor
" python:
"   if standing on class name, opens a window with its references
nnoremap yr :YcmCompleter GoToReferences<CR>

" Ycm get Documentation
nnoremap yd :YcmCompleter GetDoc<CR>

let g:ycm_autoclose_preview_window_after_completion=1

" remember cursor position in buffer when switching (:bp :bn ...)
autocmd BufLeave * let b:winview = winsaveview()
autocmd BufEnter * if exists('b:winview') | call winrestview(b:winview) | endif

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
