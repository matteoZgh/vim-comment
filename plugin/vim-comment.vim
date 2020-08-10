func! Comment()
	if &filetype == 'cpp'
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
	if &filetype == 'cpp'
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

command! -range -bar Comment call Comment()
command! -range -bar Uncomment call Uncomment()
