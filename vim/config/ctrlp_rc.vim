"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HarnoRanaivo's .vim/config/ctrlp_rc.vim file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: February 26th 2013
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Behaviour {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <C-m> :CtrlPTag<CR>
" Open new file in a new horizontal split
let g:ctrlp_open_new_file = 'h'
"}}}

"" Extensions {{{
let g:ctrlp_extensions = [
\   'tag',
\   'buffertag',
\   'quickfix' ,
\   'undo',
\   'line',
\   'changes',
\   'mixed',
\]
"}}}

"" Special settings
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
