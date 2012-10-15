let len =search('.\+')
if len == 0
	goto 1
	s/^/#! \/usr\/bin\/env python\r# -*- coding: utf-8 -*-\r\rimport logging\rlog = logging.getLogger(__name__)\r\r/
endif


" {{{ indenting
setlocal expandtab
"setlocal smarttab
retab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4

setlocal foldmethod=indent
" }}}

" {{{
" http://justinlilly.com/vim/vim_and_python.html
set smartindent
set textwidth=79 " PEP-8 Friendly
" }}}
