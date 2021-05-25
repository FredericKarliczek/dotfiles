" Plugins
call plug#begin('~/appdata/local/nvim/plugged')
  "" Autocomplete
  Plug 'neovim/nvim-lspconfig'
  "" Status Line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tomasiser/vim-code-dark'
  "" VimWiki
  Plug 'vimwiki/vimwiki'

call plug#end()

" Airline configuration
let g:airline_powerline_fonts = v:true
let g:airline_theme = 'vim-code-dark'

" VimWiki configuration
let g:vimwiki_list = [{'path': 'C:\DATA\Git Repositorys (private)\DigitalBrain\vaults\Digital Garden\', 'syntax': 'markdown', 'ext': '.md'}]


" General
set clipboard+=unnamedplus

" Ui
set number
set relativenumber
syntax on
colorscheme codedark

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
