filetype plugin on
set omnifunc=syntaxcomplete#Complete

set completeopt-=preview
set complete+=k
set wildmode=longest,list:longest

let g:SuperTabDefaultCompletionType = "\<c-p>"

"" Ultisnips
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"

" Php doc
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
