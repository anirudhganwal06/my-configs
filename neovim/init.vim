" DON'T TOUCH {{{
set nocompatible
filetype on
let $BASH_ENV = '~/.bashrc'
" }}}

""""" Setting Leader Key """""
nnoremap <space> <nop>
let mapleader = " "
let maplocalleader = ";"

" Sourcing the file where all the installed plugins are listed
source $HOME/.config/nvim/plugins.vim

" Sourcing the files for the configuration of individual plugins
source $HOME/.config/nvim/plugs/ale.vim
source $HOME/.config/nvim/plugs/coc.nvim.vim
source $HOME/.config/nvim/plugs/fzf.vim
source $HOME/.config/nvim/plugs/lightline.vim
source $HOME/.config/nvim/plugs/material.vim.vim
source $HOME/.config/nvim/plugs/nerdtree.vim
source $HOME/.config/nvim/plugs/nvim-treesitter.vim
source $HOME/.config/nvim/plugs/vim-fugitive.vim
source $HOME/.config/nvim/plugs/vim-rainbow.vim
source $HOME/.config/nvim/plugs/winresizer.vim

" Key Mappings {{{

" nnoremap : Normal mode key mappings
" inoremap : Insert mode key mappings
" vnoremap : Visual mode key mappings
" cnoremap : Command mode key mappings
" tnoremap : Terminal mode key mappings

""""" Enter normal mode """""
inoremap jk <esc>
inoremap kj <esc>
cnoremap jk <esc>
cnoremap kj <esc>
tnoremap jk <C-\><C-n>
tnoremap kj <C-\><C-n>

""""" Aliases """""
nnoremap <leader>o o<esc>|						" Create new line below without exiting normal mode
nnoremap <leader>u O<esc>|						" Create new line above without exiting normal mode
nnoremap <leader>h :wincmd h<cr>|				" Go to the left window
nnoremap <leader>j :wincmd j<cr>|				" Go to the down window
nnoremap <leader>k :wincmd k<cr>|				" Go to the up window
nnoremap <leader>l :wincmd l<cr>|				" Go to the right window
nnoremap <leader>f :Files<cr>|					" Open floating window for FZF file search
nnoremap <leader>b :Buffer<cr>|					" Open floating window for FZF buffer search
nnoremap <leader>m :Maps<cr>|					" Open floating window for FZF map search
nnoremap <leader>t :NERDTreeToggle<cr>|			" Toggle NERDTree
nnoremap <leader><tab> :vertical :terminal<cr>|	" Open a new terminal in vertical split
nnoremap <leader>i :ALEFix<cr>|					" Fix code formatting
vnoremap <leader>y "+y|							" Copy text to '+' register (Clipboard)
nnoremap <leader>p "+p|							" Paste text on next character/line from '+' register (Clipboard)
nnoremap <leader>P "+P|							" Paste text on the current character from '+' register (Clipboard)
vnoremap q :Commentary<cr>|						" Comment the selected line in visual mode
nnoremap <leader>q :Commentary<cr>|				" Comment the current line in normal mode
nnoremap <tab> <C-^>|							" Switch between recently opened buffer
nnoremap <leader>c :CocCommand<space>|			" Shortcut for writing ':CocCommand '
nnoremap <leader>; :ALEDetail<cr>|				" Show ALE linting message(info/warning/error) in floating window
nnoremap <leader>rl :source $MYVIMRC<cr>|		" Source Vim config
nnoremap <leader>v :e $MYVIMRC<cr>|				" Open $MYVIMRC
nnoremap <silent><A-k> :m .-2<CR>==|			" Move line up
nnoremap <silent><A-j> :m .+1<CR>==|			" Move line down
inoremap <silent><A-k> <Esc>:m .-2<CR>==gi|		" Move line up
inoremap <silent><A-j> <Esc>:m .+1<CR>==gi|		" Move line down
vnoremap <silent><A-k> :m '<-2<CR>gv=gv|		" Move selected lines up
vnoremap <silent><A-j> :m '>+1<CR>gv=gv|		" Move selected lines down

""""" Custom commands """""
" command! Reload :source $MYVIMRC
" command! Vimrc :e $MYVIMRC

" }}}

" Indentation {{{

" noexpandtab	: doesn't convert a tab to spaces
set noexpandtab
set copyindent
set shiftwidth=4
" tabstop       : the rendered length of a \t character
set tabstop=4
set softtabstop=4
set noautoindent
set backspace=indent,eol,start

" }}}

" Searching {{{

" Highlight search results
set hlsearch
" Ignore case(upper/lower) while searching
set ignorecase
" Ignore ignorecase when search pattern have Uppercase letters
set smartcase

" }}}

" Custom UI & Options {{{

set laststatus=2								" Show status line for each window
set number										" Show line number in front of each line
set relativenumber								" Show line number relative to the line number of cursor
set mouse=a										" Enables the use of mouse in all modes
set title										" Set the title of the window
set background=dark								" Set colorscheme according to the background that's provided
set splitright									" Puts the new split window on the right side of the current window
set cursorline									" Highlights the lint on which cursor is
hi CursorLine cterm=none ctermbg=233			" Customizing the color of cursor
hi Cursor cterm=none ctermbg=234				" customizing the color of cursorline
hi Visual cterm=none ctermbg=235 guibg=Black	" Customizing the color of the selected text in visual mode
hi YcmErrorSection ctermbg=88					" Customizing the color of error lines
hi YcmWarningSection ctermbg=238				" Customizing the color of warning lines
hi Whitespace guifg=#444444
set nowrap										" Long lines are not wrapped
set completeopt-=preview						" Don't show preview in another window
filetype plugin on								" Loads the ftplugin/<filetype>.vim file when a file of <filetype> is edited
syntax enable									" Enables syntax highlighting
set updatetime=100								" Swap file will be written to disk every 100ms
set nolist										" Don't show listchars
set listchars=tab:→\ ,trail:␣,extends:…			" Characters to show for the specified invisible chars

" }}}

" Autosave {{{

set hidden						" Hides the current buffer while opening another buffer on current window,
								" instead of yelling to save the modified buffer first
set autoread					" Reads the file again if it's modified outside of Vim
autocmd FocusLost * silent! wa	" Save all modified buffers when Vim loses focus
set autowriteall				" Save buffer when it gets hidden
								" autocmd BufHidden * w
								" Save modified buffers when many operations are performed like exiting vim

" }}}

" Setting temporary files' paths {{{
set directory=~/tmp/vim//
set backupdir=~/tmp/vim//
set undodir=~/tmp/vim//
" }}}
