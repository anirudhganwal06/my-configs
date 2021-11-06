" DON'T TOUCH {{{
set nocompatible
filetype off
let $BASH_ENV = '~/.bashrc'
" }}}

source $HOME/.config/nvim/plugins.vim

source $HOME/.config/nvim/plugs/fzf.vim
source $HOME/.config/nvim/plugs/lightline.vim
source $HOME/.config/nvim/plugs/vim-rainbow.vim
source $HOME/.config/nvim/plugs/material.vim.vim
source $HOME/.config/nvim/plugs/coc.nvim.vim
source $HOME/.config/nvim/plugs/ale.vim

" Vimscript File Settings {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Key Mappings {{{
""""" Leader Key """""
nnoremap <space> <nop>
let mapleader = " "
let maplocalleader = ";"

""""" Enter normal mode """""
inoremap jk <esc>
inoremap kj <esc>
cnoremap jk <esc> 
cnoremap kj <esc>

""""" Aliases """""
nnoremap <leader>o o<esc>
nnoremap <leader>u O<esc>
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>b :Buffer<cr>
nnoremap <leader>t :NERDTree<cr>
nnoremap <leader><tab> :vertical terminal<cr>
nnoremap <leader>i :ALEFix<cr>
vnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>/ <c-v>
vnoremap q :Commentary<cr>
nnoremap <leader>q :Commentary<cr>
nnoremap <tab> <C-^>
nnoremap <leader>c :CocCommand<space>
nnoremap <leader>; :ALEDetail<cr>


""""" Custom commands """""
command! Reload :source $MYVIMRC
command! Vimrc :e $MYVIMRC
" }}}

" Indentation {{{
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set backspace=indent,eol,start
"set spell spelllang=en_us

autocmd FileType dart setlocal shiftwidth=2 softtabstop=2

"augroup autoindent
"    au!
"    autocmd BufWritePre * :normal migg=G`i
"augroup End
" }}}

" Searching {{{
set hlsearch
set ignorecase
set smartcase
" }}}

" Custom UI & Options {{{
syntax enable
set laststatus=2
set ruler
set number
set relativenumber
set mouse=a
set title
set background=dark
set splitright
set cursorline
hi CursorLine cterm=none ctermbg=233
hi Cursor cterm=none ctermbg=234
hi Visual cterm=none ctermbg=235
hi YcmErrorSection ctermbg=88
hi YcmWarningSection ctermbg=238
set nowrap
let g:loaded_matchparen = 1
set wildmode=full
set wildmenu
set completeopt-=preview

autocmd FileType qf setlocal wrap
filetype plugin on

" }}}

" Autosave {{{
set hidden
set autoread
:au FocusLost * silent! wa
set autowriteall
" }}}

" Setting temporary files' paths {{{
set directory=~/tmp/vim//
set backupdir=~/tmp/vim//
set undodir=~/tmp/vim//
" }}}
