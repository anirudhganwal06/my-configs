let g:ale_linters = {
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'java': ['clang-format']
\}

let g:ale_fixers = {
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'java': ['clang-format']
\}

let g:ale_c_clangformat_style_option = '{BasedOnStyle: Google, IndentWidth: 4}'
