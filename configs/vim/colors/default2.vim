" Vim color file
"
" Author: Elliot Pak
"
" Note: File based on the molokai theme for vim
" https://github.com/tomasr/molokai

hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name="default2"

if has("termguicolors")
    set notermguicolors
endif

hi clear

hi Boolean         ctermfg=6
hi Character       ctermfg=6
hi Number          ctermfg=6
hi String          ctermfg=2
hi Comment         ctermfg=14
hi Variable        ctermfg=5
hi Conditional     ctermfg=6               cterm=bold
hi Constant        ctermfg=6
hi Cursor          ctermfg=0 ctermbg=15
hi iCursor         ctermfg=0 ctermbg=15
hi CursorLine                ctermbg=NONE
hi Class           ctermfg=6
hi Debug           ctermfg=3               cterm=bold
hi Define          ctermfg=6
hi Delimiter       ctermfg=6

hi Bold            ctermfg=6               cterm=bold
hi Italic          ctermfg=3               cterm=bold
hi Code            ctermfg=4
hi LinkText        ctermfg=6
hi Url             ctermfg=6               cterm=underline

hi Directory       ctermfg=6               cterm=bold
hi terror          ctermfg=1               ctermbg=0
hi terrorMsg       ctermfg=1 ctermbg=8     cterm=bold
hi Exception       ctermfg=5               cterm=bold
hi Float           ctermfg=6
hi Function        ctermfg=2
hi Identifier      ctermfg=5
hi Include         ctermfg=1
hi Ignore          ctermfg=8
hi IncSearch       ctermfg=1 ctermbg=8

hi Keyword         ctermfg=3               cterm=bold
hi Label           ctermfg=6               cterm=none
hi LineNr          ctermfg=5               cterm=none
hi CursorLineNr    ctermfg=1               cterm=none
hi Macro           ctermfg=6               cterm=italic
hi SpecialKey      ctermfg=6               cterm=italic

hi MatchParen      ctermfg=0 ctermbg=6     cterm=bold
hi Operator        ctermfg=1

" complete menu
hi Pmenu           ctermfg=1 ctermbg=0
hi PmenuSel                  ctermbg=8
hi PmenuSbar                 ctermbg=8
hi PmenuThumb      ctermfg=1

hi Search          ctermfg=0 ctermbg=4

" marks
hi SignColumn      ctermfg=1 ctermbg=8
hi SpecialChar     ctermfg=1               cterm=bold
hi SpecialComment  ctermfg=1               cterm=bold
hi Special         ctermfg=1 ctermbg=NONE  cterm=italic

hi Statement       ctermfg=1               cterm=bold
hi StatusLine      ctermfg=1
hi StatusLineNC    ctermfg=1 ctermbg=8
hi Structure       ctermfg=1
hi Tag             ctermfg=5               cterm=italic
hi Title           ctermfg=1 ctermbg=NONE
hi Todo            ctermfg=1 ctermbg=NONE  cterm=bold

hi Typedef         ctermfg=6
hi Type            ctermfg=1               cterm=none
hi Underlined      ctermfg=1               cterm=underline

hi VertSplit       ctermfg=1 ctermbg=NONE  cterm=bold
hi VisualNOS                 ctermbg=2
hi Visual                    ctermbg=2
hi WarningMsg      ctermfg=1 ctermbg=8     cterm=bold
hi WildMenu        ctermfg=1 ctermbg=0

hi TabLineFill     ctermfg=1 ctermbg=8
hi TabLine         ctermbg=1 ctermfg=8     cterm=none

hi MapModKey       ctermfg=3 ctermbg=NONE  cterm=bold
hi Notation        ctermfg=4 ctermbg=NONE  cterm=bold
