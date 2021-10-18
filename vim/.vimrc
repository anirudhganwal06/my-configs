set nocompatible
filetype off
let $BASH_ENV = '~/.bashrc'

call plug#begin('~/.vim/bundle')

Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
" Plug 'ycm-core/YouCompleteMe'
Plug 'rhysd/vim-clang-format'
Plug 'frazrepo/vim-rainbow'
Plug 'google/vim-searchindex'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'kaicataldo/material.vim'
Plug 'joonty/vim-do'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'itchyny/vim-gitbranch'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'OmniSharp/omnisharp-vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()
filetype plugin indent on


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
let g:lightline.component_function = {
            \ 'gitbranch': 'gitbranch#name'
            \ }
let g:lightline.active = {
            \ 'left': [ [ 'mode', 'paste' ],
            \           [ 'readonly', 'filename', 'modified' ],
            \           [ 'gitbranch' ] ],
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

""""" coc.nvim
let g:coc_global_extensions = ['coc-css', 'coc-clangd']
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"



augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END


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


" Indentation {{{
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set backspace=indent,eol,start
"set spell spelllang=en_us


"augroup autoindent
"    au!
"    autocmd BufWritePre * :normal migg=G`i 
"augroup End


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
set wildmode=full
set wildmenu
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

" Sourcing Files {{{
source ~/.config/vim/coc.vim
" }}}
