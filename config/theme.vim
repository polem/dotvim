syntax enable
set background=dark
colorscheme solarized

if has("gui_running")
    set fuoptions=maxvert,maxhorz
"    au GUIEnter * set fullscreen
    set guifont=Mensch\ for\ Powerline:h15 linespace=0
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guioptions+=e
    set lines=40
endif


let g:lightline = {
        \ 'colorscheme': 'landscape',
        \ 'mode_map': { 'c': 'NORMAL' },
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
        \ },
        \ 'component_function': {
        \   'modified': 'MyModified',
        \   'readonly': 'MyReadonly',
        \   'fugitive': 'MyFugitive',
        \   'filename': 'MyFilename',
        \   'fileformat': 'MyFileformat',
        \   'filetype': 'MyFiletype',
        \   'fileencoding': 'MyFileencoding',
        \   'mode': 'MyMode',
        \ },
        \ 'separator': { 'left': '⮀', 'right': '⮂' },
        \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
        \ }
  function! MyModified()
    return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
  endfunction
  function! MyReadonly()
    return &ft !~? 'help\|vimfiler\|gundo' && &ro ? '⭤' : ''
  endfunction
  function! MyFilename()
    return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
          \ (&ft == 'vimfiler' ? vimfiler#get_status_string() : 
          \  &ft == 'unite' ? unite#get_status_string() : 
          \  &ft == 'vimshell' ? substitute(b:vimshell.current_dir,expand('~'),'~','') : 
          \ '' != expand('%t') ? expand('%t') : '[No Name]') .
          \ ('' != MyModified() ? ' ' . MyModified() : '')
  endfunction
  function! MyFugitive()
    return &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head') && len(fugitive#head()) ? '⭠ '.fugitive#head() : ''
  endfunction
  function! MyFileformat()
    return winwidth('.') > 70 ? &fileformat : ''
  endfunction
  function! MyFiletype()
    return winwidth('.') > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
  endfunction
  function! MyFileencoding()
    return winwidth('.') > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
  endfunction
  function! MyMode()
    return winwidth('.') > 60 ? lightline#mode() : ''
  endfunction
