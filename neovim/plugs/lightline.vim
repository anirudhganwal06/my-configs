let g:lightline = {
            \ 'colorscheme': 'material_vim',
            \ 'component_function': {
                \       'filename': 'FilenameForLightline'
                \       }
                \ }
let g:lightline.component = {
            \    'totallines': '%3L'
            \    }
let g:lightline.component_function = {
            \ 'gitbranch': 'gitbranch#name'
            \ }
let g:lightline.active = {
            \ 'left': [ [ 'mode', 'paste' ],
            \           [ 'readonly', 'filename', 'modified' ],
            \           [ 'gitbranch' ] ],
            \ 'right': [ [ 'lineinfo', 'totallines' ],
            \            [ 'filetype' ] ] }
let g:lightline.inactive = {
            \ 'left': [ [ 'filename' ] ],
            \ 'right': [ [ 'lineinfo' ],
            \            [ 'totallines' ] ] }

" Show full path of filename
function! FilenameForLightline()
    return expand('%')
endfunction
