" disable beeping and flashing
" see http://vim.wikia.com/wiki/Disable_beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Enhanced cursor
set cursorcolumn
set cursorline
"if version >= 703
if exists('+colorcolumn')
  set colorcolumn=80
endif

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
set showcmd                   " Show the command being typed
set list                      " Show special chars
set langmenu=en_US.UTF-8
set pastetoggle=<F12>         " pastetoggle (sane indentation on pastes)
set fillchars="vert: "
set mouse=a                   " automatically enable mouse usage

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
map <S-F2> :NERDTreeFind<CR>
nnoremap <f2> :NERDTreeToggle<CR>
nnoremap <f3> :TagbarToggle<CR>

