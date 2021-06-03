-- init.lua
-- NeoVim configuration file

-- ### PLUGINS 
vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

paq 'neovim/nvim-lspconfig'
paq 'nvim-lua/completion-nvim'
paq 'nvim-lua/lsp_extensions.nvim'

paq { 'neoclide/coc.nvim' , branch='release'}

paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'

paq 'windwp/nvim-autopairs'

paq 'tpope/vim-fugitive'
paq 'vim-airline/vim-airline'
paq 'vim-airline/vim-airline-themes'
paq 'vimwiki/vimwiki'
paq 'edkolev/tmuxline.vim'
paq 'tpope/vim-surround'
paq 'easymotion/vim-easymotion'
paq 'preservim/nerdtree'
-- colorschemes
paq 'cocopon/iceberg.vim'
paq 'tomasiser/vim-code-dark'
paq 'drewtempelmeyer/palenight.vim'
paq 'morhetz/gruvbox'
paq 'sainnhe/gruvbox-material'

paq 'famiu/nvim-reload'

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

--- buffer options
buffer.syntax = 'ON'
buffer.undofile = true

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
