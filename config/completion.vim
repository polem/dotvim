filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP
set completeopt-=preview
set wildmode=longest,list:longest

let g:SuperTabDefaultCompletionType = "\<c-x>\<c-o>"
let g:SuperTabDefaultCompletionType = "context"

"" Ultisnips
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"

" Php doc
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
