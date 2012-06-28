" TODO: this needs fixing so the session files are stored in one location and doesnt pollute the fs
if !exists("VimSessionAutoSave")
	let g:session_auto_save = 1
	" ^ override this in command mode for disabling in already running vim
	function VimSessionAutoSave()
		if g:session_auto_save
			if filereadable("./.session.vim")
				mksession! ./.session.vim
			endif
		endif
	endfu
endif

if !exists("VimSessionAutoLoad")
	function VimSessionAutoLoad()
		if filereadable("./.session.vim")
			source ./.session.vim
			" source /etc/vim/vimrc.local
			syn on
		endif
	endfu
endif


if $VIM_SESSION_AUTO
	au VimEnter * call VimSessionAutoLoad()
	au VimLeavePre * call VimSessionAutoSave()
endif
