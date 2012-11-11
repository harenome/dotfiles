"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HarnoRanaivo's .vim/config/gundo_rc.vim file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: October 7th 2012
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Mapping
nnoremap <F5> :GundoToggle<CR>

"" Gundo graph
"let g:gundo_width = 60
let g:gundo_right = 1

"" Gundo preview
"let g:gundo_preview_height = 20
let g:gundo_preview_bottom = 1

"" Gundo statusline
let g:gundo_tree_statusline = "%=Undo tree"
let g:gundo_preview_statusline = "%=Undo changes preview"
