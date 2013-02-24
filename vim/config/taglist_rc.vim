"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HarnoRanaivo's .vim/config/taglist_rc.vim file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: February 24th 2013
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Mapping {{{
" :TlistOpen opens the taglist window and :TlistClose closes it.
" :TlistToggle does both depending on the current state of the taglist window.
nnoremap <silent> <F8> :TlistToggle<CR>
"}}}

"" Ctags location {{{
" If ctags cannot be found via the PATH environment variable.
"let Tlist_Ctags_Cmd = '~/bin/ctags'
"}}}

"" Aspect {{{
" Horizontal Window instead of Vertical
let Tlist_Use_Horiz_Window = 0
let Tlist_WinHeight = 15
" Disable Auto Highlight Tag
"let Tlist_Auto_Highlight_Tag = 0
" Compact Format
"let Tlist_Compact_Format = 1           " Default is 0.
" Display Prototype
let Tlist_Display_Prototype = 1         " Default is 0.
" Display Tag Scopes
let Tlist_Display_Tag_Scope = 0         " Default is 1.
" Disable/Enable Fold Column
let Tlist_Enable_Fold_Column = 0        " Default is 1.
" File Fold Auto Close
let Tlist_File_Fold_Auto_Close = 1      " Default is 0
" Tags sorting
" Possible values are 'order' (chronological) and 'name'
let Tlist_Sort_Type = "name"
"}}}

"" Behaviour {{{
" Gain Focus on ToggleOpen
let Tlist_GainFocus_On_ToggleOpen = 1   " Default is 0.
" Show Menu
let Tlist_Show_Menu = 1
" Use Single Click
let Tlist_Use_SingleClick = 1
" Auto Update
let Tlist_Auto_Update = 1
"}}}

"" Special settings
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
