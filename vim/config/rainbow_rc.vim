"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HarnoRanaivo's .vim/config/rainbow_rc.vim file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: April 15th 2013
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Rainbow activation {{{
let g:rainbow_active = 1
let g:rainbow_operators = 2
"}}}

"" Groups {{{
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ] ],
    \ ]

" Default is :
"    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
" But it breaks folding in some languages

"}}}

"" Custom colours {{{
"let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick',]
"}}}


"" Special settings
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
