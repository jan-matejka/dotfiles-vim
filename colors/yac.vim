" yac personal theme forked from darkblue theme

set bg=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "yac"

hi Normal       ctermfg=250       ctermbg=black
hi ErrorMsg     ctermfg=white     ctermbg=lightblue
hi Visual       ctermfg=none      ctermbg=130
hi VisualNOS    ctermfg=none      ctermbg=130       cterm=underline
hi Todo         ctermfg=lightred  ctermbg=130
hi Search       ctermfg=white     ctermbg=124       cterm=underline term=underline
hi IncSearch    ctermfg=yellow    ctermbg=124

hi SpecialKey   ctermfg=darkcyan
hi Directory    ctermfg=cyan
hi Title        ctermfg=117       cterm=bold
hi WarningMsg   ctermfg=red
hi WildMenu     ctermfg=yellow    ctermbg=black     cterm=none term=none
hi ModeMsg      ctermfg=lightblue
hi MoreMsg      ctermfg=darkgreen ctermfg=darkgreen
hi Question     ctermfg=green     cterm=none
hi NonText      ctermfg=darkblue

hi StatusLine   ctermfg=20        ctermbg=gray      term=none cterm=none
hi StatusLineNC ctermfg=black     ctermbg=gray      term=none cterm=none
hi VertSplit    ctermfg=black     ctermbg=gray      term=none cterm=none

hi Folded       ctermfg=darkgrey  ctermbg=black     cterm=bold term=bold
hi FoldColumn   ctermfg=darkgrey  ctermbg=black     cterm=bold term=bold
hi LineNr       ctermfg=green     cterm=none

hi DiffAdd      ctermbg=130       term=none         cterm=none
hi DiffChange   ctermbg=117       cterm=none
hi DiffDelete   ctermfg=130       ctermbg=cyan
hi DiffText     cterm=bold        ctermbg=red

hi Cursor       ctermfg=black     ctermbg=yellow
hi lCursor      ctermfg=black     ctermbg=white

hi Comment      ctermfg=213
hi Constant     ctermfg=117       cterm=none
hi Special      ctermfg=brown     cterm=none
hi Identifier   ctermfg=cyan      cterm=none
hi Statement    ctermfg=yellow    cterm=none
" PreProc matches from/import keywords in python
hi PreProc      ctermfg=208       cterm=none
hi type         ctermfg=green     cterm=none
hi Underlined   cterm=underline   term=underline
hi Ignore       ctermfg=bg
