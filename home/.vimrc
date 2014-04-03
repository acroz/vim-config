
execute pathogen#infect()

" Colour Management

colorscheme Tomorrow-Night

if $TERM == "xterm-256color"
  set t_Co=256
endif

syntax on
filetype plugin indent on

" Convert tabs to spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Use correct ctags on mac (for symbol browser)
let s:uname = system("uname")
if s:uname == "Darwin\n"
    let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
endif
