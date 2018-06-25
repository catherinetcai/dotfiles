" Plugin Configurations

" GENERAL
" Ale
" Autocompletion? See if this clobbers deoplete
let g:ale_completion_enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

" Airline
" Airline with Ale
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = '✖:'
let g:airline#extensions#ale#warning_symbol = '⚠:'
" Airline only
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'

" CtrlP
if exists("g:ctrl_user_command")
  unlet g:ctrlp_user_command
endif
" Custom ignore for CTRLP
let g:ctrlp_custom_ignore = 'node_modules\|DS_STORE\|vendor'
" Allow dotfiles
let g:ctrlp_show_hidden = 1
let g:ctrlp_root_markers = ['.ctrlp']
" Allow ctrlp to dive deep
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

" Deoplete
if has('nvim')
  let g:deoplete#enable_at_startup = 1
endif
let g:deoplete#auto_complete_start_length = 3
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns['default'] = '\h\w*'
let g:deoplete#omni#input_patterns = {}
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#align_class = 1
"let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
"let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
set completeopt=longest,menuone " auto complete setting
set completeopt+=noinsert
set completeopt+=noselect

" LANGUAGE

" Go
let g:go_addtags_transform = "snakecase"
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1
" Use neosnippet, but this is not installed
" let g:go_snippet_engine = "neosnippet"
let g:go_term_enabled = 1
let g:go_term_mode = "split"

" Hashicorp
" Terraform
let g:terraform_align=1

" JavaScript/JSX/Typescript
" Highlight .js as well as .jsx
let g:jsx_ext_required=0
" Compile TypeScript on save
autocmd BufWritePost *.ts,*.tsx make

" Rust
" Run Rust autoformat on save
let g:rustfmt_autosave = 1
