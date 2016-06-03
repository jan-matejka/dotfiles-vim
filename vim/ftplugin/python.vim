let b:did_ftplugin = 1

let len =search('.\+')
if len == 0
    goto 1
    s/^/# -*- coding: utf-8 -*-\r\r/
endif


" {{{ indenting
setlocal expandtab
"setlocal smarttab
retab
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal tabstop=2

setlocal keywordprg=pydoc
setlocal foldmethod=indent
" }}}

" {{{
" http://justinlilly.com/vim/vim_and_python.html
set smartindent
" }}}
