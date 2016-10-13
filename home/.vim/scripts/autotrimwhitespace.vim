set list listchars=trail:.,extends:>
autocmd FileWritePre * call whitespace#trim()
autocmd FileAppendPre * call whitespace#trim()
autocmd FilterWritePre * call whitespace#trim()
autocmd BufWritePre * call whitespace#trim()
