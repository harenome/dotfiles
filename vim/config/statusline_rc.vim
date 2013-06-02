"==============================================================================
" HarnoRanaivo's .vim/config/statusline_rc.file
" Maintainer: Harenome Ranaivoarivony Razanajato <harno.ranaivo@gmail.com>
" Last Change: May 31st 2013
"==============================================================================

""" Functions {{{
"" Syntastic functions{{{
function s:GetSyntasticEW(pattern, symbol)
    let errorOrWarning = substitute(matchstr(SyntasticStatuslineFlag(), a:pattern . '\d*'), a:pattern, '', 'g')
    return strlen(errorOrWarning) ? ' [' . a:symbol . ': ' . errorOrWarning . '] ' : ''
endfunction

function GetSyntasticWarnings()
    return s:GetSyntasticEW('WARNING(S): ', '▲')
endfunction

function GetSyntasticErrors()
    return s:GetSyntasticEW('ERROR(S): ', '❌ ')
endfunction
"}}}

function s:SetStatusLine(statusLine)
    if (&buftype !~ 'nowrite\|nofile\|quickfix')
        execute 'setlocal statusline =' . a:statusLine
    endif
endfunction
"}}}

""" Status lines {{{
"" Active, normal mode {{{
" Initialisation.
let statusLineActiveNormal = ''
" Buffer number.
let statusLineActiveNormal = statusLineActiveNormal . '%#STANBuffer#\ ▞%-0.3(%n\ %)%*'
" Fugitive (git branch)
let statusLineActiveNormal = statusLineActiveNormal . "%(%#STANGit#%{strlen(fugitive#head())?'\\ ⍿⍿\\ '.fugitive#head().':':''}%*%)"
" File name.
let statusLineActiveNormal = statusLineActiveNormal . '%#STANFile#\ %f\ %*'
" File type.
let statusLineActiveNormal = statusLineActiveNormal . "%#STANFileTypes#\\ [%{strlen(&ft)?&ft:'plain\\ text'}]"
" File encoding.
let statusLineActiveNormal = statusLineActiveNormal . "[%{strlen(&fenc)?&fenc:'no\\ encoding'}]"
" File type, bis.
let statusLineActiveNormal = statusLineActiveNormal . '[%{&ff}]\ %*'
" Alignment separator
let statusLineActiveNormal = statusLineActiveNormal . '%='
" Some flags.
let statusLineActiveNormal = statusLineActiveNormal . '%#STANGreenFlags#%(\ %h\ %)%*%#STANOrangeFlags#%(\ %w\ %)%*'
let statusLineActiveNormal = statusLineActiveNormal . '%#STANRedFlags#%(\ %m\ %)%*%#STANOrangeFlags#%(\ %r\ %)%*'
" Syntastic flags.
let statusLineActiveNormal = statusLineActiveNormal . "%(%#STANOrangeFlags#%{GetSyntasticWarnings()}%*"
let statusLineActiveNormal = statusLineActiveNormal . "%#STANRedFlags#%{GetSyntasticErrors()}%*%)"
" Current position.
let statusLineActiveNormal = statusLineActiveNormal . '%#STANPositionLight#\ %c%#STANPositionDark#%V\ \|\ '
let statusLineActiveNormal = statusLineActiveNormal . '%#STANPositionLight#%l%#STANPositionDark#/%L\ '
let statusLineActiveNormal = statusLineActiveNormal . '%#STANPositionPercentage#\ %P\ %*'
"}}}

"" Inactive {{{
" Initialisation.
let statusLineNC = ''
" Buffer number.
let statusLineNC = statusLineNC . '%#STNCBuffer#\ ▞%-0.3(%n\ %)%*'
" Fugitive (git branch)
let statusLineNC = statusLineNC . "%(%#STNCGit#%{strlen(fugitive#head())?'\\ ⍿⍿\\ '.fugitive#head().':':''}%*%)"
" File name.
let statusLineNC = statusLineNC . '%#STNCFile#\ %f\ %*'
" File type.
let statusLineNC = statusLineNC . "%#STNCFileTypes#\\ [%{strlen(&ft)?&ft:'plain\\ text'}]"
" File encoding.
let statusLineNC = statusLineNC . "[%{strlen(&fenc)?&fenc:'no\\ encoding'}]"
" File type, bis.
let statusLineNC = statusLineNC . '[%{&ff}]\ %*'
" Alignment separator
let statusLineNC = statusLineNC . '%='
" Some flags.
let statusLineNC = statusLineNC . '%#STNCGreenFlags#%(\ %h\ %)%*%#STNCOrangeFlags#%(\ %w\ %)%*'
let statusLineNC = statusLineNC . '%#STNCRedFlags#%(\ %m\ %)%*%#STNCOrangeFlags#%(\ %r\ %)%*'
" Syntastic flags.
let statusLineNC = statusLineNC . "%(%#STNCOrangeFlags#%{GetSyntasticWarnings()}%*"
let statusLineNC = statusLineNC . "%#STNCRedFlags#%{GetSyntasticErrors()}%*%)"
" Current position.
let statusLineNC = statusLineNC . '%#STNCPositionLight#\ %c%#STNCPositionDark#%V\ \|\ '
let statusLineNC = statusLineNC . '%#STNCPositionLight#%l%#STNCPositionDark#/%L\ '
let statusLineNC = statusLineNC . '%#STNCPositionPercentage#\ %P\ %*'
"}}}
"}}}

"" Statusline setting {{{
execute 'set statusline =' . statusLineActiveNormal
autocmd BufEnter * call s:SetStatusLine(statusLineActiveNormal)
autocmd BufLeave * call s:SetStatusLine(statusLineNC)
"}}}

"" Special settings for this file.
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all
