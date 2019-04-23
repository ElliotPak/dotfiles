" Vim color file
"
" Author: Elliot Pak
"
" Note: File based on the molokai theme for vim
" https://github.com/tomasr/molokai
" Colors based on the Ariake syntax theme for atom
" https://github.com/pathtrk/ariake-dark-syntax

hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name="ariake"

if has("termguicolors")
    set termguicolors
endif

let mono1="#B9BED5"
let mono2="#7B829D"
let mono3="#5F6786"
let hue1="#93DDFB"
let hue2="#F5FAFF"
let hue3="#7E7EDD"
let hue4="#7AEFEA"
let hue5="#85B1E0"
let hue52="#4D8ACB"
let hue6="#DDA2F6"
let hue62="#A571F4"
let error="#F92672"

exe 'hi Boolean         guifg=' . hue62
exe 'hi Character       guifg=' . hue62
exe 'hi Number          guifg=' . hue62
exe 'hi String          guifg=' . hue4
exe 'hi Comment         guifg=' . mono3
exe 'hi Variable        guifg=' . hue5
exe 'hi Conditional     guifg=' . hue6 . '               gui=bold '
exe 'hi Constant        guifg=' . hue6
exe 'hi Cursor          guifg=#000000 guibg=#F8F8F0'
exe 'hi iCursor         guifg=#000000 guibg=#F8F8F0'
exe 'hi CursorLine                    guibg=NONE'
exe 'hi Class           guifg=' . hue62
exe 'hi Debug           guifg=' . hue3 . '               gui=bold '
exe 'hi Define          guifg=' . hue6
exe 'hi Delimiter       guifg=' . hue6

exe 'hi Bold            guifg=' . hue62 . '              gui=bold '
exe 'hi Italic          guifg=' . hue3 . '              gui=bold '
exe 'hi Code            guifg=' . hue4
exe 'hi LinkText        guifg=' . hue6
exe 'hi Url             guifg=' . hue6 . '               gui=underline '

exe 'hi Directory       guifg=' . hue6 . '               gui=bold '
exe 'hi Error           guifg=' . error . ' guibg=#1E0010'
exe 'hi ErrorMsg        guifg=' . error . ' guibg=#232526 gui=bold '
exe 'hi Exception       guifg=' . hue5 . '               gui=bold '
exe 'hi Float           guifg=' . hue62 . ''
exe 'hi Function        guifg=' . hue2 . ''
exe 'hi Identifier      guifg=' . hue5 . ''
exe 'hi Include         guifg=' . hue1 . ''
exe 'hi Ignore          guifg=' . mono3 . ' guibg=bg '
exe 'hi IncSearch       guifg=' . hue1 . ' guibg=#000000'

exe 'hi Keyword         guifg=' . hue3 . '               gui=bold '
exe 'hi Label           guifg=' . hue62 . '               gui=none '
exe 'hi LineNr          guifg=' . hue52 . '               gui=none '
exe 'hi CursorLineNr    guifg=' . hue1 . '               gui=none '
exe 'hi Macro           guifg=' . hue6 . '               gui=italic '
exe 'hi SpecialKey      guifg=' . hue6 . '               gui=italic '

exe 'hi MatchParen      guifg=#000000 guibg=' . hue6 . ' gui=bold '
exe 'hi Operator        guifg=' . hue1 . ''

" complete menu
exe 'hi Pmenu           guifg=' . hue1 . ' guibg=#000000'
exe 'hi PmenuSel                      guibg=#808080'
exe 'hi PmenuSbar                     guibg=#080808'
exe 'hi PmenuThumb      guifg=' . hue1 . ''

exe 'hi Search          guifg=#000000 guibg=' . hue4

" marks
exe 'hi SignColumn      guifg=' . hue1 . ' guibg=#232526'
exe 'hi SpecialChar     guifg=' . hue1 . '               gui=bold '
exe 'hi SpecialComment  guifg=' . hue1 . '               gui=bold '
exe 'hi Special         guifg=' . hue1 . ' guibg=NONE      gui=italic '
if has("spell")
    exe 'hi SpellBad    guisp=#FF0000 gui=undercurl '
    exe 'hi SpellCap    guisp=#7070F0 gui=undercurl '
    exe 'hi SpellLocal  guisp=#70F0F0 gui=undercurl '
    exe 'hi SpellRare   guisp=#FFFFFF gui=undercurl '
endif
exe 'hi Statement       guifg=' . hue1 . '               gui=bold '
exe 'hi StatusLine      guifg=' . hue1 . ' guibg=fg '
exe 'hi StatusLineNC    guifg=' . hue1 . ' guibg=#080808'
exe 'hi Structure       guifg=' . hue1 . ''
exe 'hi Tag             guifg=' . hue5 . '               gui=italic '
exe 'hi Title           guifg=' . hue1 . ' guibg=NONE'
exe 'hi Todo            guifg=' . hue1 . ' guibg=NONE      gui=bold '

exe 'hi Typedef         guifg=' . hue6
exe 'hi Type            guifg=' . hue1 . '               gui=none '
exe 'hi Underlined      guifg=' . hue1 . '               gui=underline '

exe 'hi VertSplit       guifg=' . hue1 . ' guibg=NONE gui=bold '
exe 'hi VisualNOS                     guibg=' . hue2
exe 'hi Visual                        guibg=' . hue2
exe 'hi WarningMsg      guifg=' . error . ' guibg=#333333 gui=bold '
exe 'hi WildMenu        guifg=' . hue1 . ' guibg=#000000'

exe 'hi TabLineFill     guifg=' . hue1 . ' guibg=#1B1D1E'
exe 'hi TabLine         guibg=' . hue1 . ' guifg=#808080 gui=none '

exe 'hi MapModKey       guifg=' . hue3 . ' guibg=NONE gui=bold '
exe 'hi Notation        guifg=' . hue4 . ' guibg=NONE gui=bold '


" Support for 256-color terminal

if &t_Co > 255
    let tmono1="249"
    let tmono2="243"
    let tmono3="240"
    let thue1="117"
    let thue2="15"
    let thue3="104"
    let thue4="121"
    let thue5="111"
    let thue52="68"
    let thue6="183"
    let thue62="129"
    let terror="197"

    exe 'hi Boolean         ctermfg=' . thue62
    exe 'hi Character       ctermfg=' . thue62
    exe 'hi Number          ctermfg=' . thue62
    exe 'hi String          ctermfg=' . thue4
    exe 'hi Comment         ctermfg=' . tmono3
    exe 'hi Variable        ctermfg=' . thue5
    exe 'hi Conditional     ctermfg=' . thue6 . '               cterm=bold '
    exe 'hi Constant        ctermfg=' . thue6
    exe 'hi Cursor          ctermfg=0 ctermbg=15'
    exe 'hi iCursor         ctermfg=0 ctermbg=15'
    exe 'hi CursorLine                    ctermbg=NONE'
    exe 'hi Class           ctermfg=' . thue62
    exe 'hi Debug           ctermfg=' . thue3 . '               cterm=bold '
    exe 'hi Define          ctermfg=' . thue6
    exe 'hi Delimiter       ctermfg=' . thue6

    exe 'hi Bold            ctermfg=' . thue62 . '              cterm=bold '
    exe 'hi Italic          ctermfg=' . thue3 . '              cterm=bold '
    exe 'hi Code            ctermfg=' . thue4
    exe 'hi LinkText        ctermfg=' . thue6
    exe 'hi Url             ctermfg=' . thue6 . '               cterm=underline '

    exe 'hi Directory       ctermfg=' . thue6 . '               cterm=bold '
    exe 'hi terror           ctermfg=' . terror . ' ctermbg=0'
    exe 'hi terrorMsg        ctermfg=' . terror . ' ctermbg=235 cterm=bold '
    exe 'hi Exception       ctermfg=' . thue5 . '               cterm=bold '
    exe 'hi Float           ctermfg=' . thue62 . ''
    exe 'hi Function        ctermfg=' . thue2 . ''
    exe 'hi Identifier      ctermfg=' . thue5 . ''
    exe 'hi Include         ctermfg=' . thue1 . ''
    exe 'hi Ignore          ctermfg=' . tmono3
    exe 'hi IncSearch       ctermfg=' . thue1 . ' ctermbg=232'

    exe 'hi Keyword         ctermfg=' . thue3 . '               cterm=bold '
    exe 'hi Label           ctermfg=' . thue62 . '               cterm=none '
    exe 'hi LineNr          ctermfg=' . thue52 . '               cterm=none '
    exe 'hi CursorLineNr    ctermfg=' . thue1 . '               cterm=none '
    exe 'hi Macro           ctermfg=' . thue6 . '               cterm=italic '
    exe 'hi SpecialKey      ctermfg=' . thue6 . '               cterm=italic '

    exe 'hi MatchParen      ctermfg=0 ctermbg=' . thue6 . ' cterm=bold '
    exe 'hi Operator        ctermfg=' . thue1 . ''

    " complete menu
    exe 'hi Pmenu           ctermfg=' . thue1 . ' ctermbg=0'
    exe 'hi PmenuSel                      ctermbg=244'
    exe 'hi PmenuSbar                     ctermbg=232'
    exe 'hi PmenuThumb      ctermfg=' . thue1 . ''

    exe 'hi Search          ctermfg=0 ctermbg=' . thue4

    " marks
    exe 'hi SignColumn      ctermfg=' . thue1 . ' ctermbg=235'
    exe 'hi SpecialChar     ctermfg=' . thue1 . '               cterm=bold '
    exe 'hi SpecialComment  ctermfg=' . thue1 . '               cterm=bold '
    exe 'hi Special         ctermfg=' . thue1 . ' ctermbg=NONE      cterm=italic '

    exe 'hi Statement       ctermfg=' . thue1 . '               cterm=bold '
    exe 'hi StatusLine      ctermfg=' . thue1
    exe 'hi StatusLineNC    ctermfg=' . thue1 . ' ctermbg=232'
    exe 'hi Structure       ctermfg=' . thue1 . ''
    exe 'hi Tag             ctermfg=' . thue5 . '               cterm=italic '
    exe 'hi Title           ctermfg=' . thue1 . ' ctermbg=NONE'
    exe 'hi Todo            ctermfg=' . thue1 . ' ctermbg=NONE      cterm=bold '

    exe 'hi Typedef         ctermfg=' . thue6
    exe 'hi Type            ctermfg=' . thue1 . '               cterm=none '
    exe 'hi Underlined      ctermfg=' . thue1 . '               cterm=underline '

    exe 'hi VertSplit       ctermfg=' . thue1 . ' ctermbg=NONE cterm=bold '
    exe 'hi VisualNOS                     ctermbg=' . thue2
    exe 'hi Visual                        ctermbg=' . thue2
    exe 'hi WarningMsg      ctermfg=' . terror . ' ctermbg=236 cterm=bold '
    exe 'hi WildMenu        ctermfg=' . thue1 . ' ctermbg=0'

    exe 'hi TabLineFill     ctermfg=' . thue1 . ' ctermbg=234'
    exe 'hi TabLine         ctermbg=' . thue1 . ' ctermfg=244 cterm=none '

    exe 'hi MapModKey       ctermfg=' . thue3 . ' ctermbg=NONE cterm=bold '
    exe 'hi Notation        ctermfg=' . thue4 . ' ctermbg=NONE cterm=bold '
endif

 " Must be at the end, because of ctermbg=234 bug.
 " https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
