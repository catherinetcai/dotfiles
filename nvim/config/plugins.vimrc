" Plugin Configurations

" GENERAL
" Ale
" Autocompletion? See if this clobbers deoplete
let g:ale_completion_enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
" Use gopls instead of gocode
let g:ale_linters = {
	\ 'go': ['gopls'],
	\}

" Airline
" Airline with Ale
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = '✖:'
let g:airline#extensions#ale#warning_symbol = '⚠:'
" Airline only
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'

" CtrlP
if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
" Use git to list files
let g:ctrlp_user_command = ['.git/', 'git ls-files --cached --others  --exclude-standard %s']
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
call deoplete#custom#var('auto_complete_start_length', 3)
call deoplete#custom#var('enable_smart_case', 1)
call deoplete#custom#var('keyword_patterns', { 'default': '\h\w*' })
call deoplete#custom#var('omni', 'input_patterns', {})
let g:deoplete#sources#go#align_class = 1
" https://github.com/Shougo/deoplete.nvim/issues/965 - Fixes gopls
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#source_importer = 1
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
let g:go_term_enabled = 1
let g:go_term_mode = "split"
" Gopls additions since gocode is borked
" https://github.com/golang/tools/blob/master/gopls/doc/vim.md
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

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
