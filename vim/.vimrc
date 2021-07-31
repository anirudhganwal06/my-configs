" DON'T TOUCH {{{
set nocompatible
filetype off
" }}}

" Installed Plugins {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'preservim/nerdtree'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'rhysd/vim-clang-format'
Plugin 'frazrepo/vim-rainbow'
Plugin 'google/vim-searchindex'
Plugin 'tpope/vim-commentary'
Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'kaicataldo/material.vim'
Plugin 'joonty/vim-do'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on
" }}}

" Plugins Configurations {{{

""""" lightline
let g:lightline = {
            \ 'colorscheme': 'material_vim',
            \ 'component_function': {
                \       'filename': 'FilenameForLightline'
                \       }
                \ }
let g:lightline.component = {
            \    'totallines': '%3L' 
            \    }
let g:lightline.active = {
            \ 'left': [ [ 'mode', 'paste' ],
            \           [ 'readonly', 'filename', 'modified' ] ],
            \ 'right': [ [ 'lineinfo', 'totallines' ],
            \            [ 'fileformat', 'fileencoding', 'filetype' ] ] }
let g:lightline.inactive = {
            \ 'left': [ [ 'filename' ] ],
            \ 'right': [ [ 'lineinfo' ],
            \            [ 'totallines' ] ] }

" Show full path of filename
function! FilenameForLightline()
    return expand('%')
endfunction

""""" ycm
set completeopt-=preview

""""" vim-rainbow
let g:rainbow_active = 1

""""" material.vim
let g:material_theme_style = 'ocean'
colorscheme material
if (has('termguicolors'))
  set termguicolors
endif

" }}}

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

""""" Enter normal mode """""
inoremap jk <esc>
inoremap kj <esc>

""""" Aliases """""
nnoremap <leader>o o<esc>
nnoremap <leader>u O<esc>
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>g :tabp<cr>
nnoremap <leader>; :tabn<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>b :Buffer<cr>
nnoremap <leader>t :NERDTree<cr>
nnoremap <leader><tab> :vertical terminal<cr>
nnoremap <leader>i :ClangFormat<cr>
vnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>Y "+Y
nnoremap <leader>P "+P
nnoremap <leader>/ <c-v>
vnoremap q :Commentary<cr>
nnoremap <leader>q :Commentary<cr>
nnoremap <tab> <C-^>
nnoremap <leader>r :wa<cr> :!g++ % && ./a.out<cr>

""""" Custom commands """""
command Reload :source $MYVIMRC
command Vimrc :e $MYVIMRC
" }}}

" Indentation {{{
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set backspace=indent,eol,start
"set spell spelllang=en_us

""""" Auto Indent before saving a buffer
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

" Custom UI {{{ 
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
" }}}

" Autosave {{{
set hidden
set autoread
:au FocusLost * silent! wa
set autowriteall
" }}}
