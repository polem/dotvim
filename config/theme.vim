syntax enable
set background=dark
colorscheme solarized

if has("gui_running")
    set fuoptions=maxvert,maxhorz
    au GUIEnter * set fullscreen
    set guifont=Mensch\ for\ Powerline:h15 linespace=0
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set lines=40
endif

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline#extensions#branch#symbol = '⭠'
let g:airline#extensions#readonly#symbol = '⭤'
let g:airline_linecolumn_prefix = '⭡'
