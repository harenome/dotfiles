"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HarnoRanaivo's .vim/config/gundo_rc.vim file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: February 24th 2013
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Mapping {{{
nnoremap <F4> :GundoToggle<CR>
"}}}

"" Gundo graph {{{
"let g:gundo_width = 60
let g:gundo_right = 1
"}}}

"" Gundo preview {{{
"let g:gundo_preview_height = 20
let g:gundo_preview_bottom = 1
"}}}

"" Gundo statusline {{{
let g:gundo_tree_statusline = "%=Undo tree"
let g:gundo_preview_statusline = "%=Undo changes preview"
"}}}

"" Special settings
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
