if  !exists("*InitBackupDir")
" ^ do not redefine/recall on the config resourcing
    function InitBackupDir()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files/Backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
        if has('win32') || has('win32unix') "windows/cygwin
        let separator = "_"
        else
        let separator = "."
        endif

        let parent = $HOME .'/' . separator . 'vim/'
        let backup = parent . 'backup/'
        let tmp    = parent . 'tmp/'

        if exists("*mkdir")
        if !isdirectory(parent)
            call mkdir(parent)
        endif
        if !isdirectory(backup)
            call mkdir(backup)
        endif
        if !isdirectory(tmp)
            call mkdir(tmp)
        endif
        endif

        let missing_dir = 0
        if isdirectory(backup)
        let this_dir=substitute(substitute(expand("%:p")," ","_","g"),"/","%","g")
        execute 'set backupdir=' . escape(backup, " ") . "//"
        else
        let missing_dir = 1
        endif
        if isdirectory(tmp)
        execute 'set directory=' . escape(tmp, " ") . "/,."
        else
        let missing_dir = 1
        endif

        if missing_dir
        echo "Warning: Unable to create backup directories: " . backup ." and " . tmp
        echo "Try: mkdir -p " . backup
        echo "and: mkdir -p " . tmp
        set backupdir=.
        set directory=.
        endif

    endfunction

    call InitBackupDir()
endif
