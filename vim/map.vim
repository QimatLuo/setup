nnoremap <F8> :w\|!gulp upload && xdotool search --name '\- Chromium' windowactivate key ctrl+r<CR><CR>
nnoremap <SPACE>tn :tabnew 
nnoremap <SPACE>sp :set paste!<CR>
nnoremap <SPACE><SPACE>y :%y+<CR>
nnoremap <C-L> :nohlsearch\|redraw!<CR><C-L>
nnoremap <SPACE>json :%!python -m json.tool<CR><C-L>
vnoremap <SPACE>y "+y
vnoremap <SPACE>s :sort<CR>

nnoremap <SPACE>to f.r:a {<CR><esc>o},<esc>k^<CR>

" jsbeautify
nnoremap <SPACE>bj :call JsBeautify()<CR>
nnoremap <SPACE>bh :call HtmlBeautify()<CR>
nnoremap <SPACE>bc :call CSSBeautify()<CR>
vnoremap <SPACE>bj :call RangeJsBeautify()<CR>
vnoremap <SPACE>bh :call RangeHtmlBeautify()<CR>
vnoremap <SPACE>bc :call RangeCSSBeautify()<CR>
autocmd FileType javascript noremap <buffer>  <F5> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <F5> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <F5> :call CSSBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <F5> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <F5> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <F5> :call RangeCSSBeautify()<cr>

" jshint validation
nnoremap <silent><F1> :JSHint<CR>
inoremap <silent><F1> <C-O>:JSHint<CR>
vnoremap <silent><F1> :JSHint<CR>

" show next jshint error
nnoremap <silent><F2> :lnext<CR>
inoremap <silent><F2> <C-O>:lnext<CR>
vnoremap <silent><F2> :lnext<CR>

" show previous jshint error
nnoremap <silent><F3> :lprevious<CR>
inoremap <silent><F3> <C-O>:lprevious<CR>
vnoremap <silent><F3> :lprevious<CR>
