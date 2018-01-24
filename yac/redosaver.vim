if !exists("*Redosaver")
"
" usage:
" 1. run `call Redosaver()`
"
" at this moment it will go through every state in the undolist and save
" it to /tmp/vimredosaver/<n>.txt
"
" limitations:
" 1. you need to create the /tmp/vimredosaver/ beforehand manually
" 2. you need to clean it up manually
    function Redosaver()

        let l:max=changenr()
        let l:i=0
        while 1
            if l:i == 0
                undo 1
                undo
                " undo 0 doesn't work for some reason. I guess it's
                " the vimscript 0 being false
            else
                execute 'undo' l:i
            endif

            execute 'w' '/tmp/vimredosaver/' . l:i . ".txt"

            if l:i == l:max
                break
            endif

            let l:i=l:i + 1
        endwhile

    endfunction
endif
