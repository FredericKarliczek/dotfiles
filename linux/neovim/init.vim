" Plugins
call plug#begin(stdpath('data') . '/plugged')
    "" Autocomplete
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/lsp_extensions.nvim'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Install nvim-cmp
    Plug 'hrsh7th/nvim-cmp'

    " Install snippet engine (This example installs [hrsh7th/vim-vsnip](https://github.com/hrsh7th/vim-vsnip))
    Plug 'hrsh7th/vim-vsnip'

    " Install the buffer completion source
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-nvim-lsp'
    
    Plug 'windwp/nvim-autopairs'
    Plug 'tpope/vim-surround'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    "" Colorschemes
    Plug 'morhetz/gruvbox'
    Plug 'lifepillar/vim-solarized8'
    Plug 'arcticicestudio/nord-vim'
    Plug 'tyrannicaltoucan/vim-deep-space'
    Plug 'joshdick/onedark.vim'
    Plug 'Mofiqul/vscode.nvim'
    "" VimWiki
    Plug 'vimwiki/vimwiki'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'edkolev/tmuxline.vim'

call plug#end()


" VimWiki configuration
let g:vimwiki_list = [{'path': 'C:\DATA\Git Repositorys (private)\DigitalBrain\vaults\Digital Garden\', 'syntax': 'markdown', 'ext': '.md'}]

let g:airline_theme = 'dark'

" General
set clipboard+=unnamedplus
set noswapfile

" Ui
set number
set relativenumber
syntax on
set termguicolors
let g:vscode_style = "dark"
colorscheme vscode

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Indentation
set expandtab
set autoindent
set shiftwidth=4
set softtabstop=4
filetype plugin indent on

" Keyboard mappings
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

ino jk <Esc>

let mapleader="\<Space>"

lua << EOF
-- ### PLUGIN CONFIGURATIONS
require('lsp-config')
require('nvim-cmp-config')
require('nvim-treesitter-config')
require('telescope-config')
require('vimwiki-config')
require('nerdtree-config')
require('nvim-autopairs-config')
EOF
