filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP
set completeopt-=preview
set wildmode=longest,list:longest

let g:ycm_autoclose_preview_window_after_completion=1

let g:SuperTabDefaultCompletionType = "\<c-x>\<c-o>"
let g:SuperTabDefaultCompletionType = "context"

"" YouCompleteMe
let g:ycm_key_list_previous_completion=['<Up>']

"" Ultisnips
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"

" Php doc
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
