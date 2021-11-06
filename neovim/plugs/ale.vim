let g:ale_linters = {
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'java': ['clang-format'],
\   'css': ['prettier'],
\   'json': ['prettier'],
\   'javascript': ['eslint']
\}

let g:ale_fixers = {
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'java': ['clang-format'],
\   'css': ['prettier'],
\   'json': ['prettier'],
\   'javascript': ['eslint'],
\   'dart': ['dartfmt'],
\   '*': ['remove_trailing_lines', 'trim_whitespace']
\}

let g:ale_c_clangformat_style_option = '{BasedOnStyle: Google, IndentWidth: 4}'
" let g:ale_javascript_prettier_options =  

" let g:ale_set_loclist = 1 
" let g:ale_open_list = 1
let g:ale_floating_preview = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
