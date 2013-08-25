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

set dictionary+=~/.vim/drupal.dict
