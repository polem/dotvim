set nocompatible

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'itchyny/lightline.vim'
Bundle 'scrooloose/nerdtree'

Bundle 'nathanaelkane/vim-indent-guides'

Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'

Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

Bundle 'kchmck/vim-coffee-script'
Bundle 'lukaszb/vim-web-indent'

" php
Bundle 'nishigori/vim-php-dictionary'
Bundle 'dsdeiz/vim-drupal-snippets'

Bundle 'tmhedberg/matchit'
Bundle 'godlygeek/tabular'

Bundle 'tobyS/pdv'
Bundle 'tobyS/vmustache'

Bundle 'mattn/emmet-vim'

Bundle 'ervandew/supertab'

Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'

Bundle 'docteurklein/php-getter-setter.vim'
Bundle 'scrooloose/syntastic'

Bundle 'kien/ctrlp.vim'
Bundle 'JazzCore/ctrlp-cmatcher'

Bundle 'fholgado/minibufexpl.vim'

Bundle 'heavenshell/vim-jsdoc'

Bundle 'plasticboy/vim-markdown'

syntax enable

" Enhanced cursor
"set cursorcolumn
set cursorline

set nobackup
set noswapfile

set splitbelow
set splitright

" UI
set scrolloff=8               " Keep x line for scope while scrolling
set sidescrolloff=8           " same same
set showmatch                 " Show matching bracket
set number                    " Show line numbers in gutter
set ruler                     " Always show current position along the bottom
set list                      " Show special chars
set langmenu=en_US.UTF-8
set pastetoggle=<F12>         " pastetoggle (sane indentation on pastes)
set fillchars="vert: "

" GUI
set tabpagemax=15               " only show 15 tabs
set showmode                    " display the current mode

set cursorline                  " highlight current line

" EDITING
set ff=unix                   " Unix EOL
set fileencoding=UTF-8        " Speak UTF-8
set termencoding=utf-8
set encoding=UTF-8            " Display UTF-8
set shiftround                " when at 3 spaces, and I hit > ... go to 4, not 5
set ignorecase                " case sensitivity is dumb
set smartcase                 " but not where there are different cases
set nowrap                    " No, I don't want wordwrap
set tabstop=4                 "
set shiftwidth=4              "
set expandtab                 " We do not want tabs, do we?
set listchars=trail:¤,tab:>-

" Mapping
map <S-F2> :NERDTreeToggle<CR>
nnoremap <f2> :NERDTreeFind<CR>
nnoremap <f3> :TagbarToggle<CR>

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command='ag %s -l --nocolor -g ""'

" Enable indent guides on boot and allow colorschemes to style them.
nmap <silent> <leader>i :IndentGuidesToggle<CR>
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0

" vim info
set viminfo='10,<10,s10,h

"theme
set background=dark
color molokai

if has("gui_running")
    set fuoptions=maxvert,maxhorz
"    au GUIEnter * set fullscreen
    set guifont=Inconsolata-dz\ for\ Powerline:h14 linespace=0
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guioptions+=e
    set lines=50
endif

"completion
filetype on
filetype plugin indent on
syntax on

set omnifunc=syntaxcomplete#Complete

set completeopt-=preview
set complete+=k
set wildmode=longest,list:longest

" Super tab
let g:SuperTabDefaultCompletionType = "<c-p>"

"" Ultisnips
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Php doc
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"

autocmd BufRead,BufNewFile *.twig set filetype=html.jinja2

" drupal
augroup drupal
    autocmd BufRead,BufNewFile *.module set filetype=drupal.php
    autocmd BufRead,BufNewFile *.theme set filetype=drupal.php
    autocmd BufRead,BufNewFile *.inc set filetype=drupal.php
    autocmd BufRead,BufNewFile *.install set filetype=drupal.php
    autocmd BufRead,BufNewFile *.info set filetype=drupal.php
    autocmd BufRead,BufNewFile *.engine set filetype=drupal.php
    autocmd BufRead,BufNewFile *.profile set filetype=drupal.php
    autocmd BufRead,BufNewFile *.test set filetype=drupal.php
augroup END

" Syntastic
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_disabled_filetypes=['sass', 'scss']
let g:syntastic_enable_highlighting=0

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \   'readonly': 'MyReadonly',
      \   'modified': 'MyModified',
      \   'filename': 'MyFilename'
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

function! MyModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! MyReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "⭤"
  else
    return ""
  endif
endfunction

function! MyFugitive()
  return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction
