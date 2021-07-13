""""" Plugins """""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'preservim/nerdtree'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'rhysd/vim-clang-format'
Plugin 'google/vim-colorscheme-primary'
Plugin 'frazrepo/vim-rainbow'
Plugin 'google/vim-searchindex'
Plugin 'tpope/vim-commentary'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on


""""" Plugin Configurations """""

""""" lightline
let g:lightline = {
            \ 'component_function': {
                \   'filename': 'FilenameForLightline'
                \ }
                \ }

" Show full path of filename
function! FilenameForLightline()
    return expand('%')
endfunction

""""" ycm
set completeopt-=preview

""""" vim-rainbow
let g:rainbow_active = 1

""""" vim-colorscheme-primary
colorscheme primary







""""" Leader Key """""
nnoremap <space> <nop>
let mapleader = " "


""""" Indentation """""
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set backspace=indent,eol,start
"set spell spelllang=en_us


""""" Searching """""
set hlsearch
set ignorecase
set smartcase

""""" Enter normal mode """""
inoremap jk <esc>
inoremap kj <esc>

""""" Aliases """""
nnoremap <leader>rv :source $MYVIMRC<cr>
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
nnoremap <leader>p "+P
nnoremap <leader>/ <c-v>
vnoremap q :Commentary<cr>
nnoremap <leader>q :Commentary<cr>
nnoremap <tab> <C-^>

""""" Auto Indent before saving a buffer
"augroup autoindent
"    au!
"    autocmd BufWritePre * :normal migg=G`i 
"augroup End

""""" Custom UI """""
syntax enable
set laststatus=2
set ruler
set number
set mouse=a
set title
set background=dark
set splitright
set cursorline
hi CursorLine cterm=none ctermbg=233
set nowrap


""""" Autosave """""
:au FocusLost * silent! wa
