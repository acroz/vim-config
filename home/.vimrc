set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" user packages
" see http://vimawesome.com/ for some popular ones
Plugin 'tpope/vim-sensible' " Some basic config
Plugin 'Raimondi/delimitMate' " Auto close quotes etc.
Plugin 'ervandew/supertab' " Tab auto completion
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Display line numbers
set number

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Always show status line
set laststatus=2

" Convert tabs to spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Powerline
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" Auto indent on return inside braces
let delimitMate_expand_cr=1

" Shortcuts
" Paste switch
set pastetoggle=<F2>
" Give a shortcut key to NERD Tree
map <F3> :NERDTreeToggle<CR>
" Ctrl-P fuzzy file search
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Mouse interaction
" set mouse=a

" Apply perl syntax highlighting to .com files
au BufNewFile,BufRead *.com set filetype=perl

" Use correct ctags on mac (for symbol browser)
let s:uname = system("uname")
if s:uname == "Darwin\n"
    let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
endif

" Search recursively up directory tree for ctags files
set tags=./tags;/,./TAGS;/

" Alias write/quit commands to allow sloppy capitals
if has("user_commands")
    command! -bang -nargs=? -complete=file E e<bang> <args>
    command! -bang -nargs=? -complete=file W w<bang> <args>
    command! -bang -nargs=? -complete=file Wq wq<bang> <args>
    command! -bang -nargs=? -complete=file WQ wq<bang> <args>
    command! -bang Wa wa<bang>
    command! -bang WA wa<bang>
    command! -bang Q q<bang>
    command! -bang QA qa<bang>
    command! -bang Qa qa<bang>
endif

" Syntax-specific options
au Filetype python source ~/.vim/scripts/column80.vim
au Filetype python source ~/.vim/scripts/autotrimwhitespace.vim
au Filetype markdown source ~/.vim/scripts/column80.vim
