if has('gui_macvim')
  macmenu Edit.Find.Find\.\.\. key=<nop>
  map <D-f> /
  map <D-d> :call pdv#DocumentWithSnip()<CR>
endif
