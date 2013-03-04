"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HarnoRanaivo's .vim/config/syntastic_rc.vim file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: February 25th 2013
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Mapping {{{
nnoremap <F5> :SyntasticCheck<CR>
nnoremap <F6> :Errors<CR>
"}}}

"" Behaviour {{{
" Mode.
let g:syntastic_mode_map = { "mode": "passive", "active_filetypes": [], "passive_filetypes": [] }
" Check when buffers are first loaded
let g:syntastic_check_on_open = 0
" Auto jump to errors when saving or loading a file
let g:syntastic_auto_jump = 1
" Auto open and close the error window
let g:syntastic_auto_loc_list = 1
"}}}

"" Appearance {{{
" Symbols
"let g:syntastic_error_symbol='!!'
"let g:syntastic_style_error_symbol='✗'
"let g:syntastic_warning_symbol='??'
"let g:syntastic_style_warning_symbol='⚠'
" Location lists height
let g:syntastic_loc_list_height=5
"}}}

"" Custom Statusline {{{
let g:syntastic_stl_format = '%W{[WARNING(S) : %w]}%E{[ERROR(S) : %e]}'
"}}}

"" Special settings
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
