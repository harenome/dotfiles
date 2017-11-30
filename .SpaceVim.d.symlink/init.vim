"let g:spacevim_colorscheme = 'solarized'

let g:mapleader=","
let g:maplocalleader="ù"

set tags+=tags,.tags

let g:spacevim_enable_neomake = 0
let g:spacevim_snippet_engine = 'ultisnips'

set lazyredraw
set colorcolumn=80
set shiftwidth=2

set path+=./include,./build/include
"let g:neomake_c_enable_markers=['clang']
"let g:neomake_c_clang_args = ["-Iinclude -I../include -I../../include"]

" Cancel some allegedly good (but actually very bothersome) overrides:
nunmap q
let g:tex_conceal = ""
