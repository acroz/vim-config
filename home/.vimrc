
execute pathogen#infect()

" Display line numbers
set number

" Colour Management
if $TERM == "xterm-256color"
    set t_Co=256
endif
set background=dark
colorscheme monokai

" Powerline
" Requires systemwide installation, see for details:
" http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
" Always show status line
set laststatus=2

" Convert tabs to spaces
set tabstop=4
set shiftwidth=4
set expandtab
" Auto indent on return inside braces
let delimitMate_expand_cr=1

" Mouse interaction
set mouse=a

" Apply perl syntax highlighting to .com files
au BufNewFile,BufRead *.com set filetype=perl

" Use correct ctags on mac (for symbol browser)
let s:uname = system("uname")
if s:uname == "Darwin\n"
    let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
endif
