"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HarnoRanaivo's .vim/config/supertab_rc.vim file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: February 24th 2013
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Default Completion Type and Fall Back Completion Type {{{
" The default value is "<c-p>" for both variables.
let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabContextDefaultCompletionType = "<c-p>"
"}}}

"" Mappings {{{
" Default is '<tab>' for forward and '<s-tab>' for backward.
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'
" Default is '<c-tab>' for a true tab. However I'm using it in MiniBufExpl.
"let g:SuperTabMappingTabLiteral = ''
"}}}

"" Special settings
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
