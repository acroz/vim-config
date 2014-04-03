
execute pathogen#infect()

" Colour Management

colorscheme Tomorrow-Night

if $TERM == "xterm-256color"
  set t_Co=256
endif

syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab
