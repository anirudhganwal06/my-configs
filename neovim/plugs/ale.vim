" Linters to use for each filetype
let g:ale_linters = {
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'java': ['clang-format'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'json': ['prettier'],
\   'javascript': ['eslint']
\}

" Fixers to use for each filetype
let g:ale_fixers = {
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'java': ['clang-format'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'json': ['prettier'],
\   'javascript': ['eslint'],
\   'dart': ['dartfmt'],
\   '*': ['remove_trailing_lines', 'trim_whitespace']
\}

" Configuring clang-format to use Google's linting style
let g:ale_c_clangformat_style_option = '{BasedOnStyle: Google, IndentWidth: 4}'

" Setting ALE to use floating window for preview
let g:ale_floating_preview = 1

" Setting custom characters to be used as error and warning indicators
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
