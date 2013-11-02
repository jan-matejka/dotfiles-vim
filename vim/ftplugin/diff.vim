if exists("b:rmtrailing")
    " this file get's executed when one switches back to the buffer, in which
    " case the variable is already unlet and w/o checking for existance, this
    " raises an Error
    unlet b:rmtrailing
endif
