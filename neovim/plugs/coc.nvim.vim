" List of all the coc extensions - Making this list automatically installs 
" these extensions without having to install them one at a time
let g:coc_global_extensions = ['coc-css', 'coc-clangd', 'coc-java', 'coc-flutter', 'coc-html', 'coc-tsserver']

" Using Tab and Shift + Tab to move up and down in autocompletion list
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Mapping for some fast navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Mapping K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Mappings for scrolling up and down in floating window
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1, 2) : "\<C-j>"
  nnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0, 2) : "\<C-k>"
  inoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1, 2)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0, 2)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(1, 2) : "\<C-k>"
  vnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(0, 2) : "\<C-j>"
  nnoremap <silent><nowait><expr> <C-l> coc#float#has_scroll() ? coc#float#close_all() : "\<C-l>"
endif

" Mapping for showing an autocompletion list
inoremap <silent><expr> <C-k> coc#refresh()

" Mapping for renaming a variable at all places it's used
nmap <leader>rn <Plug>(coc-rename)
