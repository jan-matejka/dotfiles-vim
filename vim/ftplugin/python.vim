let len =search('.\+')
if len == 0
	goto 1
	s/^/#! \/usr\/bin\/env python\r# -*- coding: utf-8 -*-\r\r/
endif

setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal smarttab
setlocal expandtab
set foldmethod=indent
