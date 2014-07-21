"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HarnoRanaivo's .vim/config/minibufexpl_rc.vim file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: February 24th 2013
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Compatibility with other explorers {{{
let g:miniBufExplModSelTarget = 1
"}}}

"" Statusline {{{
" I'd love to merely get rid of it but didn't find any way to do so
" in the help nor the source code.
let g:statusLineText = "%= Buffer list"
"}}}

"" Vertical mode {{{
let g:miniBufExplVSplit = 20
let g:miniBufExplMaxSize = 80
let g:miniBufExplMinSize = 1
"}}}

"" Misc. {{{
let g:miniBufExplorerMoreThanOne=0
let g:miniBufExplCheckDupeBufs = 0
let g:miniBufExplShowBufNumbers = 1
let g:miniBufExplUseSingleClick = 1
"}}}

"" Shortcut key {{{
nnoremap <F2> :TMiniBufExplorer<CR>
"}}}

"" Force highlighting {{{
" Sometimes, buffers loose their highlighting.
" WARNING: If set, this option may cause some lags.
"let g:miniBufExplForceSyntaxEnable = 1
"}}}

"" MiniBufExpl Colors {{{
" My highlight settings are in my personal colorscheme(s).
" If colours are set here, it must be done AFTER the colorscheme is sourced.
" For starters, here are some settings that should look good, uncomment them.

" Basic linking {{{
"hi link MBENormal Comment
"hi link MBEChanged Special
"hi link MBEVisibleNormal Normal
"hi link MBEVisibleActive PreProc
"hi link MBEVisibleChanged Special
"hi link MBEVisibleChangedActive Special
"}}}

" Override of the style in case the linked styles are different {{{
"hi! MBENormal gui=italic cterm=italic
"hi! MBEChanged gui=italic cterm=italic
"hi! MBEVisibleNormal gui=none cterm=none
"hi! MBEVisibleNormalActive gui=bold cterm=bold
"hi! MBEVisibleChanged gui=none cterm=none
"hi! MBEVisibleChangedActive gui=bold cterm=bold
"}}}
"}}}

"" Special settings
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
