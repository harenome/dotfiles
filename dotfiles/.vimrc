"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HarnoRanaivo's .vimrc file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: October 7th 2012
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" No compatibility with legacy vi
set nocompatible                " must be first, changes other options

"" Basics
set mouse=a
set showmode
set showcmd                     " display incomplete commands
set wildmenu                    " hit <C-D> to see a list of available commands
set ruler
set scrolloff=999
filetype plugin indent on       " load file type plugins + indentation

"" Syntax highlighting
syntax on 
colorscheme rhinestones-dark
set t_Co=256

"" Line numbers
set number
let g:switchednumber = 0
function! SwitchLineNumber()
    if g:switchednumber == 0
        let g:switchednumber = 1
        set relativenumber
    else
        let g:switchednumber = 0
        set number
    endif
endfunction
map <S-space> :call SwitchLineNumber()<CR>

"" Status line
set laststatus=2                                            " Always show status
set statusline=
set statusline+=%1*#%-0.3(%n\ %)%*                          " Buffer number
set statusline+=%2*%f%*                                     " File name
set statusline+=\ %3*[%{strlen(&ft)?&ft:'plain\ text'}]     " File type
set statusline+=[%{strlen(&fenc)?&fenc:'no\ encoding'}]     " File encoding
set statusline+=[%{&ff}]%*                                  " File type, bis
set statusline+=%=
set statusline+=%(%4*%h%w%*%5*%m%r%*%)                      " Some flags
set statusline+=\ %(%l,%c%V\ (%P)%)                         " Current position

"" Indenting
set tabstop=4 shiftwidth=4      " a tab is 4 spaces
set expandtab                   " use spaces, not tabs
set smarttab
set autoindent
set smartindent

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ...unless they contain at least one capital letter

"" Tabs
map <S-t> :tabnew<CR>           " <A-t> to open a new tab
noremap <A-j> gT                " <A-j> to move to left tab
noremap <A-k> gt                " <A-k> to move to right tab

"" Folding
set foldmethod=indent           " enable folding, za to (un)fold
set foldnestmax=3               " maximum folds for the "indent" and "syntax" methods
set foldopen=all                " opens a fold when moving into it
set foldclose=all               " closes a fold when moving out of it
nnoremap <space> zi             " hit <space> to (un)fold everything
"" Folding bonus
" trying to prevent folds from closing when insert mode
" have been tested for a while, works well...
" ...apart from the fact folds we move in don't open in insert mode...
" ...wait, moving in insert mode? you must use arrow keys to move in insert mode...
" ...you really use arrow keys in Vim?!
autocmd InsertEnter * setlocal foldclose=""
autocmd InsertLeave * setlocal foldclose=all
"" Previous way to prevent folds from closing when in insert mode
" autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
" autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

"" Pathogen, plugin manager
call pathogen#infect()
Helptags

"" Omni-completion
if executable('ctags')
    map <F9> :!ctags -R .<CR><CR>
endif
set tags+=./tags
autocmd Filetype c runtime! autoload/ccomplete.vim

"" MiniBufExpl
source ~/.vim/config/minibufexpl_rc.vim

"" Gundo
source ~/.vim/config/gundo_rc.vim

"" SuperTab
"source ~/.vim/config/supertab_rc.vim
