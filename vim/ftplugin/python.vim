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
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4

setlocal keywordprg=pydoc
setlocal foldmethod=indent
" }}}

" {{{
" http://justinlilly.com/vim/vim_and_python.html
set smartindent
" }}}
