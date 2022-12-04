set exrc
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes

nnoremap <SPACE> <Nop>
let mapleader=" "

call plug#begin()
Plug 'neoclide/coc.nvim'
Plug 'preservim/tagbar'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } ,
Plug 'gruvbox-community/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Termina
call plug#end()

let g:airline_theme='codedark'

"
" NerdTree stuff--------------
nmap <C-t> :NERDTreeToggle <CR>

"autocmd VimEnter * NERDTree


vnoremap <Space>" <Esc>`>a"<Esc>`<i"<Esc>vi"

" Split Navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" INDENT
vmap < <gv
vmap > >gv

" TERMINAL
noremap <Space>/ :split<CR> :resize 10<CR> :term<CR>

colorscheme tokyonight
let g:tokyonight_style = "night"

fun! TrimWhitespaces()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup Theone
    autocmd!
    autocmd BufWritePre * :call TrimWhitespaces()
augroup END

source ~/.config/nvim/cp.vim
