"==============================================================================
" HarnoRanaivo's .vimrc file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: February 24th 2013
"==============================================================================

" If something is not commented, try ':h option'.
" Type zi to open all folds.

"" No compatibility with legacy vi {{{
" This must be first, as it changes other options.
set nocompatible
"}}}

"" Pathogen, plugin manager {{{
" It apparently is better to load pathogen first.
" And also have the filetype thing done after pathogen's loading.
filetype off
call pathogen#infect()
Helptags
"}}}

"" Basics {{{
set mouse=a
set showmode
set ruler
set scrolloff=999

" Display incomplete commands.
set showcmd

" Hit <C-D> to see a list of available commands.
set wildmenu

" Load file type plugins + indentation.
filetype plugin indent on

" New leader key (the default is "\", unconvenient on french azerty
" keyboards).
let mapleader="ù"

" Hides buffers instead of closing them.
set hidden
"}}}

"" Syntax highlighting {{{
syntax on 
colorscheme rhinestones-dark
set t_Co=256
set showmatch
"}}}

"" Line numbers {{{
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
"}}}

"" Status line {{{
" Always show status.
set laststatus=2
" Initialisation.
set statusline=
" Buffer number.
set statusline+=%1*#%-0.3(%n\ %)%*
" File name.
set statusline+=%2*%f%*
" File type.
set statusline+=\ %3*[%{strlen(&ft)?&ft:'plain\ text'}]
" File encoding.
set statusline+=[%{strlen(&fenc)?&fenc:'no\ encoding'}]
" File type, bis.
set statusline+=[%{&ff}]%*
" Alignment separator
set statusline+=%=
" Some flags.
set statusline+=%(%4*%h%w%*%5*%m%r%*%)
" Syntastic flags.
set statusline+=%5*%{SyntasticStatuslineFlag()}%*
" Current position.
set statusline+=\ %(%l,%c%V\ (%P)%)
"}}}

"" Indenting {{{
" A tab is 4 spaces.
set tabstop=4
set shiftwidth=4
set shiftround

"" Use spaces, not tabs
set expandtab
set smarttab
set autoindent
set smartindent
set copyindent
"}}}

"" Searching {{{
" Hihglight matches.
set hlsearch
" Incremental searching.
set incsearch
" Searches are case insensitive...
set ignorecase
" ...unless they contain at least one capital letter.
set smartcase
"}}}

"" Tabs {{{
map <S-t> :tabnew<CR>           " <S-t> to open a new tab
noremap <A-j> gT                " <A-j> to move to left tab
noremap <A-k> gt                " <A-k> to move to right tab
"}}}

"" Windows {{{
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
"}}}

"" Line wrapping {{{
" Move inside of the current line when wrapped, instead of moving to the next
" true line.
nnoremap j gj
nnoremap k gk
"}}}

"" Folding {{{
" Enable folding, za to (un)fold.
set foldmethod=syntax
" Maximum folds for the "indent" and "syntax" methods.
set foldnestmax=10
" Opens a fold when moving into it.
set foldopen=all
" Closes a fold when moving out of it.
set foldclose=all
" Hit <space> to (un)fold everything.
nnoremap <space> zi
" Folding bonus.
autocmd InsertEnter * setlocal foldclose=""
autocmd InsertLeave * setlocal foldclose=all
"}}}

"" Omni-completion {{{
if executable('ctags')
    map <F9> :!ctags -R .<CR><CR>
endif
set tags+=./tags
set ofu=syntaxcomplete#Complete
autocmd Filetype c runtime! autoload/ccomplete.vim
"}}}

"" Plugins {{{
" I use separate files so that I can easily add/remove and enable/disable
" options and plugin. It's very useful as I am sometimes on computers that
" do not support the features needed for some of them.

"" MiniBufExpl
source ~/.vim/config/minibufexpl_rc.vim

"" Gundo
" maps something to <F4> !
source ~/.vim/config/gundo_rc.vim

"" SuperTab
source ~/.vim/config/supertab_rc.vim

"" AutoComplPop (ACP)
" If non-zero, auto-popup is enabled at startup
" (the commands are :AcpEnable and :AcpDisable)
let g:acp_enableAtStartup = 0
source ~/.vim/config/acp_rc.vim

"" TagList
" maps something to <F8> !
source ~/.vim/config/taglist_rc.vim

"" Syntastic
" maps something to <F5> and <F6> !
source ~/.vim/config/syntastic_rc.vim
"}}}

"" Special settings
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
