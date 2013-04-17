"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HarnoRanaivo's .vim/config/gitgutter_rc.vim file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: April 17th 2013
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Behaviour {{{
let g:gitgutter_eager = 0
" let g:gitgutter_diff_args = '-w'
" let g:gitgutter_escape_grep = 1
"}}}

"" Appearance {{{

"" Signs {{{
let g:gitgutter_signs = 1
" let g:gitgutter_sign_added = 'xx'
" let g:gitgutter_sign_modified = 'yy'
" let g:gitgutter_sign_removed = 'zz'
" let g:gitgutter_sign_modified_removed = 'ww'
"}}}

"" Highlighting {{{
let g:gitgutter_highlight_lines = 1

"" Set the SignColumn colour if not set in colorscheme {{{
" hi clear SignColumn
" hi link SignColumn LineNr
"}}}

"}}}

"}}}

"" Special settings
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
