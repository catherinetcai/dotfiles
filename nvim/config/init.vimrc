" init.vimrc - Collection of all plugins
call plug#begin('~/.local/share/nvim/plugged')

" GENERAL IMPROVEMENTS

" Autocomplete
" Makes the assumption that this is going to run on nvim.
" Regular vim requires more setup.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Color
Plug 'flazz/vim-colorschemes'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Lint
Plug 'w0rp/ale'

" Misc
" Shows indent lines
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'

" Search & Navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jremmen/vim-ripgrep'
" Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-eunuch'

" Time tracking
Plug 'wakatime/vim-wakatime'

" LANGUAGE/USAGE SPECIFIC
" Uncomment for ones you actually want

" Coffeescript
" Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

" Docker
Plug 'ekalinin/Dockerfile.vim'

" Elixir
" Plug 'awetzel/elixir.nvim'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Reference for GoCode setup
" https://github.com/fatih/vim-go/issues/1873
Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'zchee/deoplete-go', { 'do': 'make'}

" Hashicorp Tools
Plug 'hashivim/vim-hashicorp-tools'

" JavaScript/JSX/TypeScript
Plug 'leafgarland/typescript-vim'
Plug 'mhartington/nvim-typescript', { 'for': ['typescript', 'tsx'], 'do': ':UpdateRemotePlugins' }
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

" Nand2tetris
" Plug 'sevko/vim-nand2tetris-syntax'

" Ruby/Rails
Plug 'fishbullet/deoplete-ruby'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'sebastianmarkow/deoplete-rust'
call plug#end()
