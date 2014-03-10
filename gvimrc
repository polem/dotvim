if has('gui_macvim')
  macmenu Edit.Find.Find\.\.\. key=<nop>
  map <D-f> /

  macmenu File.Print key=<nop>

  macmenu File.New\ Tab key=<nop>
  map <D-n> :NERDtree<CR>

  map <D-d> :call pdv#DocumentWithSnip()<CR>

  macmenu File.New\ Tab key=<nop>
  map <D-t> :CtrlP<CR>

  macmenu Tools.Make key=<nop>
  map <D-b> :CtrlPBuffer<CR>

  imap <D-e> <C-tab>
  imap <D-E> <C-S-tab>

endif
