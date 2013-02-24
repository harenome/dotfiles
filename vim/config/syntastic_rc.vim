"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HarnoRanaivo's .vim/config/syntastic_rc.vim file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: February 24th 2013
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Behaviour {{{
" Check when buffers are first loaded
let g:syntastic_check_on_open=1
" Auto jump to errors when saving or loading a file
let g:syntastic_auto_jump=1
"}}}

"" Custom Statusline {{{
let g:syntastic_stl_format='%W{[WARNING(S) : %w]}%E{[ERROR(S) : %e]}'
"}}}

"" Special settings
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
