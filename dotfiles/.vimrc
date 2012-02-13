" HarnoRanaivo's .vimrc file
" Maintainer: Harenome Ranaivoarivony Razanajato (harno.ranaivo@gmail.com)
" Last Change: January 3rd 2012

"" No compatibility with legacy vi
set nocompatible                "must be first, changes other options


"" Basics
set number
set mouse=a
set showcmd                     " display incomplete commands
set wildmenu                    " hit <C-D> to see a list of available commands
filetype plugin indent on       " load file type plugins + indentation


"" Syntax highlighting
syntax on 
colorscheme rhinestones
set t_Co=256


"" Whitespace
set tabstop=4 shiftwidth=4      " a tab is 4 spaces
set expandtab                   " use spaces, not tabs
set smarttab


"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ...unless they contain at least one capital letter

"" Folding
set foldmethod=indent           " enable folding, za to (un)fold
set foldnestmax=3               " maximum folds for the "indent" and "syntax" methods
set foldopen=all                " opens a fold when moving into it
set foldclose=all               " closes a fold when moving out of it
nnoremap <space> zi             " hit space to (un)fold everything

"" Folding bonus
" trying to prevent folds from closing when insert mode, currently testing
autocmd InsertEnter * setlocal foldclose=""
autocmd InsertLeave * setlocal foldclose=all
" folds don't open while moving in while in insert mode
" who moves around using arrow keys in insert mode anyway ?

" previous way to do so
" autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
" autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

"" Omni-completion
autocmd Filetype c runtime! autoload/ccomplete.vim
