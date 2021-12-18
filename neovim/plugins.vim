call plug#begin('~/.vim/bundle')

Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'calviken/vim-gdscript3'
" Plug 'ycm-core/YouCompleteMe'
" Plug 'rhysd/vim-clang-format'
" Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'
" Plug 'frazrepo/vim-rainbow'
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
" Plug 'OmniSharp/omnisharp-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'habamax/vim-godot'
Plug 'dart-lang/dart-vim-plugin'
Plug 'honza/vim-snippets'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'simeji/winresizer'

call plug#end()
filetype plugin indent on
