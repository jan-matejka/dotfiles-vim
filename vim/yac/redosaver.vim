if !exists("*Redosaver")
"
" usage:
" 1. undo to to desired start state
" 2. run `call Redosaver()`
"
" at this moment it will go through every `redo` and save it into
" /tmp/vimredosaver
"
" limitations:
" 1. you need to create the /tmp/vimredosaver/ beforehand manually
" 2. you need to clean it up manually
    function Redosaver()

        let l:i=0
        while 1
            execute 'sav' '/tmp/vimredosaver/' . l:i . ".txt"
            let l:cnr = changenr()
            redo
            if cnr == changenr()
                break
            endif
            let l:i=i + 1
        endwhile

    endfunction
endif
