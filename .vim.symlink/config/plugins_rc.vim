"==============================================================================
" HarnoRanaivo's .vim/config/plugins_rc file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: October 30th 2013
"==============================================================================

" I use separate files so that I can easily add/remove and enable/disable
" options and plugin. It's very useful as I am sometimes on computers that
" do not support the features needed for some of them.

" Supposedly speeds up things when using lots of plugins.
" set lazyredraw

"" MiniBufExpl (Maps something to <F2> !) {{{
    " Compatibility with other explorers
    let g:miniBufExplModSelTarget = 1

    " Shortcut key
    nnoremap <F2> :MBEToggle<CR>

    "" Statusline {{{
        " I'd love to merely get rid of it but didn't find any way to do so
        " in the help nor the source code.
        let g:statusLineText = "%= Buffer list"
    "}}}

    "" Vertical mode {{{
        let g:miniBufExplVSplit = 20
        let g:miniBufExplMaxSize = 30
        let g:miniBufExplMinSize = 1
    "}}}

    "" Misc. {{{
        let g:miniBufExplorerMoreThanOne=0
        let g:miniBufExplCheckDupeBufs = 0
        let g:miniBufExplShowBufNumbers = 1
        let g:miniBufExplUseSingleClick = 1
    "}}}

    "" Force highlighting {{{
        " Sometimes, buffers loose their highlighting.
        " WARNING: If set, this option may cause some lags.
        "let g:miniBufExplForceSyntaxEnable = 1
    "}}}

    "" MiniBufExpl Colors {{{
        " My highlight settings are in my personal colorscheme(s).
        " If colours are set here, it must be done AFTER the colorscheme is
        " sourced.
        " For starters, here are some settings that should look good.

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
"}}}

"" Undotree (Maps something to <F4> !) {{{
    " Mapping
    nnoremap <F4> :UndotreeToggle<cr>

    " Behaviour
    let g:undotree_SetFocusWhenToggle = 1
"}}}

"" Syntastic (Maps something to <F5> and <F6> !) {{{
    "" Mapping {{{
        nnoremap <F5> :SyntasticCheck<CR>
        nnoremap <F6> :Errors<CR>
    "}}}

    "" Behaviour {{{
        " Mode.
        let g:syntastic_mode_map = { "mode": "active", "active_filetypes": [], "passive_filetypes": ['java'] }
        " Check when buffers are first loaded
        let g:syntastic_check_on_open = 0
        " Auto close the error window
        let g:syntastic_auto_loc_list = 2
    "}}}

    "" Appearance {{{
        " Symbols
        let g:syntastic_error_symbol='!'
        let g:syntastic_style_error_symbol='#'
        let g:syntastic_warning_symbol='?'
        let g:syntastic_style_warning_symbol='*'
        " Location lists height
        let g:syntastic_loc_list_height=5
    "}}}

    "" Custom Statusline {{{
        let g:syntastic_stl_format = '%W{ [WARNING(S): %w] }%E{ [ERROR(S): %e] }'
    "}}}
"}}}

"" NERDTree (Maps something to <F7> !) {{{
    " Mapping
    nnoremap <F7> :NERDTreeToggle<CR>

    " Turn off the plugin if you are feeling homicidal.
    " let loaded_nerd_tree = 1

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
        let NERDTreeBookmarksFile = expand('~/.local/share/vim/nerdtree/bookmarks')
    "}}}
"}}}

"" Tagbar (Maps something to <F8> !) {{{
    " Mapping
    nnoremap <silent> <F8> :TagbarToggle<CR>

    "" Behaviour {{{
        " Close tagbar when jumping to a tag (Default: 0)
        "let g:tagbar_autoclose = 1
        " Open on the left-hand side of vim (Default: 0)
        "let g:tagbar_left = 1
        " Auto focus (Default: 0)
        "let g:tagbar_autofocus = 1
    "}}}
"}}}

"" SuperTab {{{
    "" Default Completion Type and Fall Back Completion Type {{{
        " The default value is "<c-p>" for both variables.
        let g:SuperTabDefaultCompletionType = "context"
        "let g:SuperTabContextDefaultCompletionType = "<c-p>"
    "}}}

    "" Mappings {{{
        " Default is '<tab>' for forward and '<s-tab>' for backward.
        let g:SuperTabMappingForward = '<s-tab>'
        let g:SuperTabMappingBackward = '<tab>'
        " Default is '<c-tab>' for a true tab. However I'm using it in
        " MiniBufExpl.
        "let g:SuperTabMappingTabLiteral = ''
    "}}}
"}}}

"" Fugitive {{{
    " Nothing!
"}}}

"" Gitv {{{
    "" Behaviour {{{
        let g:Gitv_OpenHorizontal = 'auto'
        let g:Gitv_WrapLines = 1
    "}}}
"}}}

"" CtrlP {{{
    " Disable the plugin.
    "let g:loaded_ctrlp = 1

    "" Behaviour {{{
        let g:ctrlp_map = '<c-p>'
        let g:ctrlp_cmd = 'CtrlP'
        nnoremap <C-m> :CtrlPTag<CR>

        " Open new file in a new horizontal split
        let g:ctrlp_open_new_file = 'h'

        " Set regexp search as the default
        let g:ctrlp_regexp = 1
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
"}}}

"" Alternate {{{
    " No Alternate Behaviour
    let g:alternateNoDefaultAlternate = 0

    " Paths
    "let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc'
"}}}

"" Rainbow {{{
    let g:rainbow_active = 1
    let g:rainbow_operators = 2

    " Default is :
    "    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    " But it breaks folding in some languages
    let g:rainbow_load_separately = [
        \ [ '*' , [['(', ')'], ['\[', '\]'], ] ],
        \ ]

    " Custom colours
    "let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick',]
"}}}

"" Git Gutter {{{
    let g:gitgutter_enabled = 1

    "" Behaviour {{{
        let g:gitgutter_eager = 0
        " let g:gitgutter_diff_args = '-w'
        " let g:gitgutter_escape_grep = 1
    "}}}

    "" Appearance {{{
        "" Signs {{{
            let g:gitgutter_signs = 1
            " let g:gitgutter_sign_added = 'xx'
            " let g:gitgutter_sign_modified = 'yy'
            " let g:gitgutter_sign_removed = 'zz'
            " let g:gitgutter_sign_modified_removed = 'ww'
        "}}}

        "" Highlighting {{{
            let g:gitgutter_highlight_lines = 1

            "" Set the SignColumn colour if not set in colorscheme {{{
            " hi clear SignColumn
            " hi link SignColumn LineNr
            "}}}
        "}}}
    "}}}
"}}}

"" EasyTags {{{
    "" Misc. {{{
        let g:easytags_async = 1
        let g:easytags_syntax_keyword = 'always'
    "}}}

    "" Files {{{
        let g:easytags_file = '~/.local/share/vim/tags/global'
        let g:easytags_by_filetype = '~/.local/share/vim/tags/'
        let g:easytags_dynamic_files = 2
        let g:easytags_autorecurse = 0
        let g:easytags_resolve_links = 1
    "}}}

    "" Automatic updates {{{
        let g:easytags_autoupdate = 1
        let g:easytags_on_cursorhold = 1
        let g:easytags_auto_highlight = 0
        let g:easytags_updatetime_min = 8000
    "}}}

    " Enable python
    let g:easytags_python_enabled = 1
"}}}

"" NeatFoldText {{{
    " let g:loaded_NeatFoldText = 1

    "" Appearance {{{
    let g:NeatFoldTextFancy = 1
    let g:NeatFoldTextZenComments = 1
    let g:NeatFoldTextCountSurroundLeft = '【 '
    let g:NeatFoldTextCountSurroundRight =' 】'
    "}}}
"}}}

"" Fish shell {{{
    " Not really a plugin...but since I manage my fish utilities for vim as a
    " plugin...
    autocmd FileType fish compiler fish
    autocmd FileType fish setlocal foldmethod=expr
"}}}

"" Special settings for this file.
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
