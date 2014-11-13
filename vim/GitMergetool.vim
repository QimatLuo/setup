nmap <LEADER>gmt :call GitMergetool()<CR>

function GitMergetool()
	" Save conflict
	silent %yank c

	" Create local
	silent tabedit /tmp/LOCAL.%:e
	silent %delete
	silent put! c
	silent normal zR
	silent +
	silent delete
	silent global/<<<<<<</delete
	silent global/|||||||/,/>>>>>>>/delete
	silent update
	silent 1
	silent diffthis

	" Create base
	silent vsplit /tmp/BASE.%:e
	silent %delete
	silent put! c
	silent normal zR
	silent +
	silent delete
	silent global/<<<<<<</,/|||||||/delete
	silent global/^=======$/,/>>>>>>>/delete
	silent update
	silent 1
	silent diffthis
	silent normal 

	" Create remote
	silent tabedit /tmp/REMOTE.%:e
	silent %delete
	silent put! c
	silent normal zR
	silent +
	silent delete
	silent global/<<<<<<</,/^=======$/delete
	silent global/>>>>>>>/delete
	silent update
	silent 1
	silent diffthis

	" Open base
	silent vsplit /tmp/BASE.%:e
	silent 1
	silent diffthis
	silent normal 

	" Open local
	silent tabedit /tmp/LOCAL.%:e
	silent 1
	silent diffthis

	" Open remote
	silent vsplit /tmp/REMOTE.%:e
	silent 1
	silent diffthis
	silent normal 
	silent normal 

	" Go to first tab
	silent tabfirst
	silent only
	silent global/|||||||/,/^=======$/-delete
	silent lgrep --fixed-strings '<<<<<<<' %
	silent nohlsearch
	silent normal zt
	silent undo
	silent normal H

	" Layout
	silent tabmove
	silent tabfirst
endfunction
