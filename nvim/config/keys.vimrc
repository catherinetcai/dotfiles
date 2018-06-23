" Keys and Shortcuts

" GENERAL

" Map leader
let mapleader=","

" LANGUAGE

" Go
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
au FileType go nmap <leader>gt :GoDeclsDir<cr>
au FileType go nmap <leader>ga <Plug>(go-alternate-edit)
au FileType go nmap <F12> <Plug>(go-def)
