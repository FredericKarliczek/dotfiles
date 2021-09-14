" Plugins
call plug#begin(stdpath('data') . '/plugged')
    "" Autocomplete
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    Plug 'nvim-lua/lsp_extensions.nvim'
    
    Plug 'windwp/nvim-autopairs'
    Plug 'tpope/vim-surround'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    Plug 'morhetz/gruvbox'
    "" VimWiki
    Plug 'vimwiki/vimwiki'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

call plug#end()


" VimWiki configuration
let g:vimwiki_list = [{'path': 'C:\DATA\Git Repositorys (private)\DigitalBrain\vaults\Digital Garden\', 'syntax': 'markdown', 'ext': '.md'}]

let g:airline_theme = 'gruvbox'

" General
set clipboard+=unnamedplus
set noswapfile

" Ui
set number
set relativenumber
syntax on
colorscheme gruvbox

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
ino kj <Esc>

let mapleader="\<Space>"

" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()

lua << EOF
-- ### PLUGIN CONFIGURATIONS
require('telescope-config')
require('vimwiki-config')
require('nerdtree-config')
require('nvim-autopairs-config')
EOF
