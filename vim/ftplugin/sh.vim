let len =search('.\+')
if len == 0
    goto 1
    s/^/#! \/bin\/sh\r\r/
endif
