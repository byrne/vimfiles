"Vim filetype plugin file
" Language:     dtd
" Maintainer:   Dan Sharp <dwsharp at hotmail dot com>
" Last Changed: 30 Jun 2008
" URL:          http://mywebpage.netscape.com/sharppeople/vim/ftplugin

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

" Make sure the continuation lines below do not cause problems in
" compatibility mode.
let s:save_cpo = &cpo
set cpo-=C

setlocal commentstring=<!--%s-->
setlocal comments=s:<!--,m:\ \ \ \ \ ,e:-->

setlocal formatoptions-=t
if !exists("g:ft_dtd_autocomment") || (g:ft_dtd_autocomment == 1)
    setlocal formatoptions+=croql
endif

if exists("loaded_matchit")
    let b:match_words = '<!--:-->,<!:>'
endif

" Change the :browse e filter to primarily show Java-related files.
if has("gui_win32")
    let  b:browsefilter="DTD Files (*.dtd)\t*.dtd\n" .
                \       "XML Files (*.xml)\t*.xml\n" .
                \       "All Files (*.*)\t*.*\n"
endif

" Undo the stuff we changed.
let b:undo_ftplugin = "setlocal commentstring< comments< formatoptions<"

                \     " | unlet! b:matchwords b:browsefilter"

" Restore the saved compatibility options.
let &cpo = s:save_cpo
