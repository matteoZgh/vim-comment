func! Comment()
	if &filetype == 'c' || &filetype == 'cpp' || &filetype == 'java'
		let s:index = getpos(".")[1]
		exec s:index."s,^,// ,g"
	elseif &filetype == 'python'
		let s:index = getpos(".")[1]
		exec s:index."s/^/# /g"
	elseif &filetype == 'vim'
		let s:index = getpos(".")[1]
		exec s:index."s/^/\" /g"
	endif
endfunc
func! Uncomment()
	if &filetype == 'c' || &filetype == 'cpp' || &filetype == 'java'
		let s:index = getpos(".")[1]
		exec s:index."s,^// ,,g"
	elseif &filetype == 'python'
		let s:index = getpos(".")[1]
		exec s:index."s/^# //g"
	elseif &filetype == 'vim'
		let s:index = getpos(".")[1]
		exec s:index."s/^\" //g"
	endif
endfunc
