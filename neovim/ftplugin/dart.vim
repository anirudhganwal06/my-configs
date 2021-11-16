setlocal shiftwidth=2 
setlocal softtabstop=2

nnoremap <buffer> <silent> <localleader>fr :CocCommand flutter.run<cr>
nnoremap <buffer> <silent> <localleader>fo :CocCommand flutter.dev.openDevLog<cr>
nnoremap <buffer> <silent> <localleader>fdr :CocCommand flutter.dev.hotRestart<cr>
