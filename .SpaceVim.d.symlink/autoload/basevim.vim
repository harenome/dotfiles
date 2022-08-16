function! basevim#before() abort
  " autocmd Filetype * RainbowParentheses
endfunction

function! basevim#after() abort
  set list listchars=trail:⋅,tab:→⋅
  " autocmd Filetype * RainbowParentheses
  " set path+=./include,./build/include
  " set tags+=tags,.tags
endfunction
