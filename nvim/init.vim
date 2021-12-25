set nocompatible
set encoding=utf-8
syntax enable 
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set number 
filetype plugin indent on  
set wildmode=longest,list,full
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set splitbelow splitright
set clipboard+=unnamedplus
set nobackup
set incsearch
set cursorline
set cursorcolumn
set termguicolors

"set spell
"set spelllang=en,el

" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sirver/ultisnips'
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'vim-airline/vim-airline'
call plug#end()

colorscheme dracula
let g:airline_theme='dracula'
set noshowmode

let g:UltiSnipsExpandTrigger = '</>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


