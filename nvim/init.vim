"======================================
"general sets
"======================================

syntax on
set mouse=a
set exrc
set guicursor=a:block
set relativenumber
set nohlsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu 
set nowrap 
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set termguicolors
set scrolloff=8
set incsearch
set signcolumn=yes
set encoding=UTF-8
set splitright
set splitbelow
set colorcolumn=0

highlight ColorColumn ctermbg=0 guibg=yellow
" Give more space for displaying messages.
" set cmdheight=2

" Ignore Files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'airblade/vim-gitgutter'

"To undo and redo stuff
Plug 'mbbill/undotree'

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'windwp/nvim-ts-autotag'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/cmp-nvim-lsp-document-symbol'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

Plug 'morhetz/gruvbox'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Airline - Economy class
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

"nvim terminal escape
tnoremap <C-H> <C-\><C-N><C-W><C-H>
tnoremap <C-J> <C-\><C-N><C-W><C-J>
tnoremap <C-K> <C-\><C-N><C-W><C-K>
tnoremap <C-L> <C-\><C-N><C-W><C-L>

inoremap <C-]> <C-X><C-]>

" Nerdtree
" nnoremap <leader>nf :NERDTreeFocus<CR>
" nnoremap <leader>n :NERDTree<CR>
" nnoremap <C-T> :NERDTreeToggle<CR>
" nnoremap <leader>ns :NERDTreeFind<CR>

augroup TheOriginalStove
    autocmd!
    autocmd FileType yaml,yml,js,json,vue,css,scss setlocal ts=2 sts=2 sw=2 expandtab
augroup END

let g:NERDTreeSortHiddenFirst=1
let g:NERDTreeShowHidden=1
lua require("turts")

