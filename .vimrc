if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin()
Plug 'Wombat'
Plug 'tomasr/molokai'
Plug 'nanotech/jellybeans.vim' 
Plug 'scrooloose/nerdcommenter'
Plug 'KabbAmine/zeavim.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'auto-pairs-gentle'
Plug 'terryma/vim-multiple-cursors'
Plug 'AutoComplPop'
Plug 'autoswap.vim'
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()
colorscheme jellybeans 

set t_Co=256

set number
set relativenumber

filetype plugin indent on
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set backspace=indent,eol,start
syntax enable
set wildmenu
set showmatch

set incsearch
set autoindent
set ignorecase
set laststatus=2
set scrolloff=10
set nohlsearch
nmap // <leader>ci
