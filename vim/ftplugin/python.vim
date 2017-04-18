let b:did_ftplugin = 1

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



" {{{ auto-indent
" set smartindent
" autoindents next line after def, if, for, etc but unindents comments to
" 0 col.

" set cindent
" set cinkeys=0{,0},0),:,!^F,o,O,e
" autoindents next line after def, for, etc and does not unindent comments
" but not does not autoindent after if and also indents lines in
" docstrings.
" http://stackoverflow.com/questions/354097/how-to-configure-vim-to-not-put-comments-at-the-beginning-of-lines-while-editing/23683246#23683246

" the sanest thing so far seems to just disable autoindents and indent
" after def/for/if manually
set nocindent
set nosmartindent
" }}}
