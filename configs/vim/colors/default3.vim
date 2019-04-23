" Vim color file
"
" Author: Elliot Pak
"
" Note: File based on the molokai theme for vim
" https://github.com/tomasr/molokai

hi clear

if version > 1380
    " no guarantees for version 13.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name="default3"

if has("termguicolors")
    set notermguicolors
endif

hi clear

hi Boolean         ctermfg=14
hi Character       ctermfg=14
hi Number          ctermfg=14
hi String          ctermfg=10
hi Comment         ctermfg=6
hi Variable        ctermfg=13
hi Conditional     ctermfg=14              cterm=bold
hi Constant        ctermfg=14
hi Cursor          ctermfg=0 ctermbg=7
hi iCursor         ctermfg=0 ctermbg=7
hi CursorLine                ctermbg=NONE
hi Class           ctermfg=14
hi Debug           ctermfg=11              cterm=bold
hi Define          ctermfg=14
hi Delimiter       ctermfg=14

hi Bold            ctermfg=14              cterm=bold
hi Italic          ctermfg=11              cterm=bold
hi Code            ctermfg=12
hi LinkText        ctermfg=14
hi Url             ctermfg=14              cterm=underline

hi Directory       ctermfg=14              cterm=bold
hi terror          ctermfg=9               ctermbg=0
hi terrorMsg       ctermfg=9 ctermbg=8     cterm=bold
hi Exception       ctermfg=13              cterm=bold
hi Float           ctermfg=14
hi Function        ctermfg=10
hi Identifier      ctermfg=13
hi Include         ctermfg=9
hi Ignore          ctermfg=8
hi IncSearch       ctermfg=9 ctermbg=8

hi Keyword         ctermfg=11              cterm=bold
hi Label           ctermfg=14              cterm=none
hi LineNr          ctermfg=13              cterm=none
hi CursorLineNr    ctermfg=9               cterm=none
hi Macro           ctermfg=14              cterm=italic
hi SpecialKey      ctermfg=14              cterm=italic

hi MatchParen      ctermfg=0 ctermbg=14    cterm=bold
hi Operator        ctermfg=9

" complete menu
hi Pmenu           ctermfg=9 ctermbg=0
hi PmenuSel                  ctermbg=8
hi PmenuSbar                 ctermbg=8
hi PmenuThumb      ctermfg=9

hi Search          ctermfg=0 ctermbg=12

" marks
hi SignColumn      ctermfg=9 ctermbg=8
hi SpecialChar     ctermfg=9               cterm=bold
hi SpecialComment  ctermfg=9               cterm=bold
hi Special         ctermfg=9 ctermbg=NONE  cterm=italic

hi Statement       ctermfg=9               cterm=bold
hi StatusLine      ctermfg=9
hi StatusLineNC    ctermfg=9 ctermbg=8
hi Structure       ctermfg=9
hi Tag             ctermfg=13              cterm=italic
hi Title           ctermfg=9 ctermbg=NONE
hi Todo            ctermfg=9 ctermbg=NONE  cterm=bold

hi Typedef         ctermfg=14
hi Type            ctermfg=9               cterm=none
hi Underlined      ctermfg=9               cterm=underline

hi VertSplit       ctermfg=9 ctermbg=NONE  cterm=bold
hi VisualNOS                 ctermbg=10
hi Visual                    ctermbg=10
hi WarningMsg      ctermfg=9 ctermbg=8     cterm=bold
hi WildMenu        ctermfg=9 ctermbg=0

hi TabLineFill     ctermfg=9 ctermbg=8
hi TabLine         ctermbg=9 ctermfg=8     cterm=none

hi MapModKey       ctermfg=11ctermbg=NONE  cterm=bold
hi Notation        ctermfg=12ctermbg=NONE  cterm=bold
