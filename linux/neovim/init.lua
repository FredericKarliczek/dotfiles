-- init.lua
-- NeoVim configuration file

-- ### PLUGINS 
vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

paq 'neovim/nvim-lspconfig'
paq 'nvim-lua/completion-nvim'
paq 'nvim-lua/lsp_extensions.nvim'

-- paq { 'neoclide/coc.nvim' , branch='release'}

paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'

paq 'windwp/nvim-autopairs'

paq 'vimwiki/vimwiki'
-- paq 'michal-h21/vim-zettel'
paq 'junegunn/fzf'
paq 'junegunn/fzf.vim'

-- paq 'tpope/vim-fugitive'
paq 'vim-airline/vim-airline'
paq 'vim-airline/vim-airline-themes'
paq 'edkolev/tmuxline.vim'
paq 'tpope/vim-surround'
paq 'easymotion/vim-easymotion'
-- colorschemes
-- paq 'tomasiser/vim-code-dark'
paq 'FredericKarliczek/vim-code-dark'
paq 'morhetz/gruvbox'

paq 'SirVer/ultisnips'
paq 'hunza/vim-snippets'

-- ### SETTINGS 
local global = vim.o
local window = vim.wo
local buffer = vim.bo

--- global options
global.swapfile = false
global.clipboard = 'unnamedplus'

--global.shell = 'powershell.exe'
--global.shellcmdflag = '-NoProfile -NoLogo -NonInteractive -Command'
--global.shellpipe = '|'
--global.shellredir = '>'

--- window options
window.number = true
window.relativenumber = true
window.colorcolumn = '+1'

--- buffer options
buffer.syntax = 'ON'
buffer.undofile = true
buffer.textwidth = 80

---- indentation
buffer.tabstop = 4
buffer.shiftwidth = 4
buffer.expandtab = true
vim.api.nvim_command('filetype indent on')

vim.api.nvim_command('filetype plugin on')
--- colorscheme
vim.api.nvim_command('colorscheme codedark')

-- ### KEYMAPPING 
local map = vim.api.nvim_set_keymap

--- set leader to space
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

options = { noremap = true }
map('i', 'jk', '<Esc>', options)
map('i', 'kj', '<Esc>', options)

--- switch off arrow keys
map('i', '<down>', '<Nop>', options)
map('i', '<right>', '<Nop>', options)
map('i', '<left>', '<Nop>', options)
map('i', '<up>', '<Nop>', options)

map('n', '<down>', '<Nop>', options)
map('n', '<right>', '<Nop>', options)
map('n', '<left>', '<Nop>', options)
map('n', '<up>', '<Nop>', options)

map('t', '<Esc>', '<C-\\><C-n>', options)
-- buffer control
map('n', '<Leader>b', ':buffers<CR>', options)
map('n', '<Leader>bn', ':bn<CR>', options)

-- tab constrol
map('n', '<Leader>th', ':tabp<CR>', options)
map('n', '<Leader>tl', ':tabn<CR>', options)
map('n', '<Leader>tk', ':tabr<CR>', options)
map('n', '<Leader>tj', ':tabl<CR>', options)
map('n', '<Leader>te', ':tabe ', options)


-- ### LSP CONFIGURATION
require('lsp-config')
--require('compe-config')
require('bash-lsp')
require('python-lsp')
require('completion-nvim')

-- ### PLUGIN CONFIGURATIONS
require('telescope-config')
require('vimwiki-config')
require('nerdtree-config')
require('nvim-autopairs-config')
