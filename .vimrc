source $HOME/.vim/yac/backups.vim
source $HOME/.vim/yac/core.vim
source $HOME/.vim/yac/autosession.vim
source $HOME/.vim/yac/redosaver.vim

if filereadable('./.project_vimrc') 
  " I'd load a .vimrc but it has the annoying problem of recursing when starting vim at $HOME or
  " editing dotfiles-vim/.vimrc.
  " While this:
  "   & fnamemodify(resolve(expand("./.project_vimrc")), ":p") != expand("$HOME/.project_vimrc")
  "
  " guards against recursion through ~/.project_vimrc, it doesn't handle dotfiles-vim/.vimrc.
  " Annoyingly, the standard guards:
  "   if !exists("$JM_PROJECT_VIMRC")
  "     let $JM_PROJECT_VIMRC=1
  "
  " do not work here. Neither the environment variable nor global ones. I don't know why. TBD.
  source ./.project_vimrc
endif
