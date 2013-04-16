"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HarnoRanaivo's .vim/config/toolbar.vim file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: April 16th 2013
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Make sure the '<' and 'C' flags are not included in 'cpoptions', otherwise
" <CR> would not be recognized.  See ":help 'cpoptions'".
let s:cpo_save = &cpo
set cpo&vim

"" Toolbar Style {{{
set toolbariconsize=tiny
set toolbar=icons,tooltips
"}}}

"" Contents of the ToolBar {{{
" Do not install the ToolBar if it is already done.
if !exists("did_install_custom_toolbar")
    let did_install_custom_toolbar = 1

    "" Buttons and icons {{{
    amenu icon=~/.vim/bitmaps/16/document-new.png 1.10 ToolBar.New :new<CR>
    amenu icon=~/.vim/bitmaps/16/document-open.png 1.20 ToolBar.Open :browse confirm e<CR>
    an <silent> icon=~/.vim/bitmaps/16/document-save.png 1.30 ToolBar.Save :if expand("%") == ""<Bar>browse confirm w<Bar>else<Bar>confirm w<Bar>endif<CR>
    an icon=~/.vim/bitmaps/16/system-floppy.png 1.40 ToolBar.SaveAll :browse confirm wa<cr>

    an 1.45 ToolBar.-sep1- <Nop>

    an icon=~/.vim/bitmaps/16/edit-undo.png 1.50 ToolBar.Undo u
    an icon=~/.vim/bitmaps/16/edit-redo.png 1.60 ToolBar.Redo <C-R>

    an 1.65 ToolBar.-sep2- <Nop>

    vnoremenu icon=~/.vim/bitmaps/16/edit-cut.png 1.70 ToolBar.Cut "+x
    vnoremenu icon=~/.vim/bitmaps/16/edit-copy.png 1.80 ToolBar.Copy "+y
    cnoremenu icon=~/.vim/bitmaps/16/edit-copy.png 1.80 ToolBar.Copy <C-Y>
    nnoremenu icon=~/.vim/bitmaps/16/edit-paste.png 1.90 ToolBar.Paste "+gP
    cnoremenu icon=~/.vim/bitmaps/16/edit-paste.png ToolBar.Paste <C-R>+
    exe 'vnoremenu <script> ToolBar.Paste ' . paste#paste_cmd['v']
    exe 'inoremenu <script> ToolBar.Paste ' . paste#paste_cmd['i']

    an 1.95 ToolBar.-sep3- <Nop>

    an icon=~/.vim/bitmaps/16/system-run.png 1.100 ToolBar.Make :make<CR>
    " an icon=~/.vim/bitmaps/16/gtk-select-all.png 1.110 ToolBar.RunCtags :exe "!" . g:ctags_command<CR>
    " an icon=~/.vim/bitmaps/16/go-jump.png 1.120 ToolBar.TagJump g<C-]>
    an icon=~/.vim/bitmaps/16/stock_spellcheck.png 1.130 ToolBar.Syntastic :SyntasticCheck<CR>
    an icon=~/.vim/bitmaps/16/document-revert.png 1.140 ToolBar.Alternate :A<CR>

    an 1.195 ToolBar.-sep4- <Nop>

    an icon=~/.vim/bitmaps/16/accessories-dictionary.png 1.200 ToolBar.Tagbar :TagbarToggle<CR>
    an icon=~/.vim/bitmaps/16/stock_spam.png 1.210 ToolBar.Undotree :UndotreeToggle<CR>
    an icon=~/.vim/bitmaps/16/system-file-manager.png 1.220 ToolBar.FileExplorer :Vex<CR>

    an 1.295 ToolBar.-sep5- <Nop>
    an icon=~/.vim/bitmaps/16/preferences-system-windows.png 1.300 ToolBar.MiniBufExplorer :TMiniBufExplorer<CR>
    an icon=~/.vim/bitmaps/16/window_fullscreen.png 1.310 ToolBar.Maximize <C-w>_
    an icon=~/.vim/bitmaps/16/zoom-fit-best.png 1.320 ToolBar.ResizeEqual <C-w>=

    an 1.395 ToolBar.-sep6- <Nop>
    an icon=~/.vim/bitmaps/16/applications-engineering.png 1.400 ToolBar.Numbers :NumbersToggle<CR>
    nmenu icon=~/.vim/bitmaps/16/format-text-direction-ltr.png 1.410 ToolBar.Comment gcc
    vmenu icon=~/.vim/bitmaps/16/format-text-direction-ltr.png 1.410 ToolBar.Comment gc
    imenu icon=~/.vim/bitmaps/16/format-text-direction-ltr.png 1.410 ToolBar.Comment <C-O>gcc
    nmenu icon=~/.vim/bitmaps/16/format-indent-more.png 1.420 ToolBar.IndentMore >>
    vmenu icon=~/.vim/bitmaps/16/format-indent-more.png 1.420 ToolBar.IndentMore >
    imenu icon=~/.vim/bitmaps/16/format-indent-more.png 1.420 ToolBar.IndentMore <C-O>>>
    nmenu icon=~/.vim/bitmaps/16/format-indent-less.png 1.430 ToolBar.IndentLess <<
    vmenu icon=~/.vim/bitmaps/16/format-indent-less.png 1.430 ToolBar.IndentLess <
    imenu icon=~/.vim/bitmaps/16/format-indent-less.png 1.430 ToolBar.IndentLess <C-O><<

    if !has("gui_athena")
        an 1.895 ToolBar.-sep7- <Nop>

        an icon=~/.vim/bitmaps/16/edit-find-replace.png 1.900 ToolBar.Replace :promptrepl<CR>
        vunmenu ToolBar.Replace
        vnoremenu icon=~/.vim/bitmaps/16/edit-find-replace.png ToolBar.Replace y:promptrepl <C-R>=<SID>FixFText()<CR><CR>
        an icon=~/.vim/bitmaps/16/go-next.png 1.910 ToolBar.FindNext n
        an icon=~/.vim/bitmaps/16/go-previous.png 1.920 ToolBar.FindPrev N
    endif
    "}}}

    "" ToolTips {{{
    tmenu 1.10 ToolBar.New Nouveau fichier
    tmenu 1.20 ToolBar.Open Ouvrir un fichier
    tmenu 1.30 ToolBar.Save Sauvegarder un fichier
    tmenu 1.40 ToolBar.SaveAll Sauvegarder tous les fichiers
    tmenu 1.50 ToolBar.Undo Annuler
    tmenu 1.60 ToolBar.Redo Refaire
    tmenu 1.70 ToolBar.Cut Couper
    tmenu 1.80 ToolBar.Copy Copier
    tmenu 1.90 ToolBar.Paste Coller

    tmenu 1.100 ToolBar.Make Compiler
    " tmenu 1.110 ToolBar.RunCtags Lancer ctags
    " tmenu 1.120 ToolBar.TagJump Aller à l'étiquette
    tmenu 1.130 ToolBar.Syntastic Rechercher les erreurs
    tmenu 1.140 ToolBar.Alternate Alterner entre le header et le code source

    tmenu 1.200 ToolBar.Tagbar Afficher les tags
    tmenu 1.210 ToolBar.Undotree Afficher l'historique d'édition
    tmenu 1.220 ToolBar.FileExplorer Afficher Vex

    tmenu 1.300 ToolBar.MiniBufExplorer Afficher le mini explorateur de tampons
    tmenu 1.310 ToolBar.Maximize Maximiser la fenêtre
    tmenu 1.320 ToolBar.ResizeEqual Redimensionner toutes les fenêtres à la même taille

    tmenu 1.400 ToolBar.Numbers Alterner entre affichage classique et relatif des numéros de lignes
    tmenu 1.410 ToolBar.Comment Commenter
    tmenu 1.420 ToolBar.IndentMore Indenter
    tmenu 1.430 ToolBar.IndentLess Désindenter

    if !has("gui_athena")
        tmenu 1.900 ToolBar.Replace Rechercher et remplacer
        tmenu 1.910 ToolBar.FindNext Occurence suivante
        tmenu 1.920 ToolBar.FindPrev Occurence précédente
    endif
    "}}}
endif
"}}}

" Restore the previous value of 'cpoptions'.
let &cpo = s:cpo_save
unlet s:cpo_save

"" Special settings for this file.
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
