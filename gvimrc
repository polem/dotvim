if has('gui_macvim')
  macmenu Edit.Find.Find\.\.\. key=<nop>
  map <D-f> /

  macmenu File.Open\.\.\. key=<nop>
  map <D-o> :NERDTreeFind<CR>

  macmenu File.Print key=<nop>

  map <D-d> :call pdv#DocumentWithSnip()<CR>

  macmenu File.New\ Tab key=<nop>
  map <D-t> :CtrlP<CR>

  macmenu Tools.Make key=<nop>
  map <D-b> :MBEOpen<CR>

  imap <D-e> <C-tab>
  imap <D-E> <C-S-tab>

endif
