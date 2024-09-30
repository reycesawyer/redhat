function! HighlightCursorColumn()
    " Clear any previous highlights
    match none
    " Get the current cursor column position
    let l:col = col('.')
    " Highlight the current column
    execute 'match CursorColumn /\%' . l:col . 'v./'
endfunction

" Trigger the function whenever the cursor moves
autocmd CursorMoved,CursorMovedI * call HighlightCursorColumn()


autocmd FileType yaml setlocal foldmethod=indent
