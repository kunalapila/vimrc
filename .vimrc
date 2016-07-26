if empty(glob('~/.vim/autoload/plug.vim'))
    !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
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
Plug 'derekwyatt/vim-scala'
Plug 'bronson/vim-trailing-whitespace'
Plug 'StanAngeloff/php.vim'
Plug 'suan/vim-instant-markdown'
call plug#end()
colorscheme jellybeans

set t_Co=256

set number
set relativenumber

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start
syntax enable
set wildmenu
set showmatch

set incsearch
set autoindent
set ignorecase
set smartcase
set laststatus=2
set scrolloff=10
set nohlsearch
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅,eol:¬
nmap // <leader>ci
"nmap <F5> :w !pdflatex %<return>
cmap w!! w !sudo tee % >/dev/null
let g:Powerline_symbols = 'fancy'

hi Normal ctermbg=none
highlight NonText ctermbg=none
autocmd FileType tex nnoremap <CR> :w \| let x=system('pdflatex ' . expand('%:r') . '.tex ; evince ' . expand('%:r') . '.pdf &')<CR><CR>
