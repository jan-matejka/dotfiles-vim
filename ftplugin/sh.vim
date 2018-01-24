let len =search('.\+')
if len == 0
    goto 1
    s/^/#! \/usr\/bin\/env sh\r\r/
endif
