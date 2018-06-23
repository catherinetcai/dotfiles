" General Vim Setup
" Python 2/3 versions - HACK for if deoplete won't load with the host
" for whatever reason. No reason to uncomment otherwise
" let g:python_host_prog="$HOME/.pyenv/versions/neovim2/bin/python"
" let g:python3_host_prog="$HOME/.pyenv/versions/neovim3/bin/python3"


" DEFAULTS
" Autoread when file has been changed
set autoread
set background=dark

" Enable copy/pasta from MacOS to Vim clipboard
set clipboard+=unnamedplus

" Highlights current line in every window
set cursorline

set laststatus=2

" Use mouse
set mouse=a

" Show line numbers
set number

" Show Vim keystrokes/commands
set showcmd

" Set all tabs to 2 width spaces
set tabstop=2 softtabstop=2 expandtab shiftwidth=2

" Always utf8
set termencoding=utf-8 fileencoding=utf-8

set ttyfast

" Turn off visualbell, because it's annoying
set vb t_vb=

" Wildcard of files to maybe ignore, this might need a rethink
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,/vendor/*,*/\.git/*

" Line wrap
set wrap

" Vim Syntax
syntax on

" MISC

" Detect .md as markdown
autocmd BufNewFile,BufReadPost *md set filetype=markdown

" Stop highlighting underscores in Markdown, seriously, stop it
autocmd BufNewFile,BufRead,BufEnter *.md,*.markdown :syntax match markdownIgnore "_"

" Trim whitespace on save
autocmd BufWritePre * %s/\s\+$//e

colorscheme molokai
colorscheme molokai
