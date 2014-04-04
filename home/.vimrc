
execute pathogen#infect()

" Colour Management

colorscheme Tomorrow-Night

if $TERM == "xterm-256color"
  set t_Co=256
endif

" Convert tabs to spaces
set tabstop=4
set shiftwidth=4
set expandtab

let delimitMate_expand_cr=1

" Use correct ctags on mac (for symbol browser)
let s:uname = system("uname")
if s:uname == "Darwin\n"
    let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
endif
