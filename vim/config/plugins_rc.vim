"==============================================================================
" HarnoRanaivo's .vim/config/plugins_rc file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: May 10th 2013
"==============================================================================

"" Plugins {{{
" I use separate files so that I can easily add/remove and enable/disable
" options and plugin. It's very useful as I am sometimes on computers that
" do not support the features needed for some of them.

" Supposedly speeds up things when using lots of plugins.
" set lazyredraw

"" MiniBufExpl {{{
source ~/.vim/config/minibufexpl_rc.vim
"}}}

"" SuperTab {{{
source ~/.vim/config/supertab_rc.vim
"}}}

"" Syntastic {{{
" Maps something to <F5> and <F6> !
source ~/.vim/config/syntastic_rc.vim
"}}}

"" Fugitive {{{
source ~/.vim/config/fugitive_rc.vim
"}}}

"" Gitv {{{
source ~/.vim/config/gitv_rc.vim
"}}}

"" CtrlP {{{
" Disable the plugin.
"let g:loaded_ctrlp = 1
source ~/.vim/config/ctrlp_rc.vim
"}}}

"" Undotree {{{
" Maps something to <F4> !
source ~/.vim/config/undotree_rc.vim
"}}}

"" Tagbar {{{
" Maps something to <F8> !
source ~/.vim/config/tagbar_rc.vim
"}}}

"" Numbers {{{
" Enable or disable numbers plugin.
let g:enable_numbers = 0
" Mapping to <F3> !
nnoremap <F3> :NumbersToggle<CR>
"}}}

"" Alternate {{{
source ~/.vim/config/alternate_rc.vim
"}}}

"" Rainbow {{{
source ~/.vim/config/rainbow_rc.vim
"}}}

"" Git Gutter {{{
let g:gitgutter_enabled = 1
source ~/.vim/config/gitgutter_rc.vim
"}}}

"" EasyTags {{{
let g:easytags_autoupdate = 1
source ~/.vim/config/vim-easytags_rc.vim
"}}}

"" Vimpanel {{{
source ~/.vim/config/vimpanel_rc.vim
"}}}

"}}}

"" Special settings for this file.
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
