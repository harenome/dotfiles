"let g:spacevim_colorscheme = 'solarized'

let g:mapleader=","
let g:maplocalleader="ù"

set tags+=tags,.tags

let g:spacevim_enable_neomake = 0
let g:spacevim_snippet_engine = 'ultisnips'

set lazyredraw
set colorcolumn=80
set shiftwidth=2

set foldmethod=syntax

set path+=./include,./build/include
"let g:neomake_c_enable_markers=['clang']
"let g:neomake_c_clang_args = ["-Iinclude -I../include -I../../include"]

" Cancel some allegedly good (but actually very bothersome) SpaceVim defaults:
nunmap q
nunmap <C-x>
let g:tex_conceal = ""
let g:spacevim_disabled_plugins = ['vim-rooter']

let g:spacevim_custom_plugins = [
\   ['harenome/vim-mipssyntax'],
\ ]
