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
\   'javascript': ['eslint']
\}

let g:ale_c_clangformat_style_option = '{BasedOnStyle: Google, IndentWidth: 4}'
" let g:ale_javascript_prettier_options =  
