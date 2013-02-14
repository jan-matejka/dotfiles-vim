fun! StripTrailingWhitespaces()
	" To enable:
	"	let b:rmtrailing=1
	" To disable:
	"	unlet b:rmtrailing
	if exists("b:rmtrailing")
		let l = line(".")
		let c = col(".")
		%s/\s\+$//e
		call cursor(l, c)
	endif
endfun

autocmd BufWritePre * :call StripTrailingWhitespaces()
