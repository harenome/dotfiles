"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HarnoRanaivo's .vim/config/nerdtree_rc.vim file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: May 10th 2013
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Style {{{
let NERDCrhistmastTree = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeWinPos = "left"
let NERDTreeWinSize = 24
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 0
"}}}

"" Behaviour {{{
" Change current working directory when loading NERDTree or changing its root.
let NERDTreeChDirMode = 2
let NERDTreeShowHidden = 0
" let NERDTreeCaseSensitiveSort = 1
" let NERDTreeSortOrder = ['\/$', '*', '\.swp$', '\.bak$', '\.old$', '\~$']
let NERDTreeMouseMode = 2

" Automatically open NERDTRee if no files were specified
" autocmd vimenter * if !argc() | NERDTree | endif

" Quit if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"}}}

"" Bookmarks {{{
let NERDTreeShowBookmarks = 1
let NERDTreeBookmarksFile = expand('~/.local/dotfiles/vim/NERDTreeBookmarks')
"}}}

"" Mapping {{{
nnoremap <F7> :NERDTreeToggle<CR>
"}}}

"" Special settings
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
