-- init.lua
-- NeoVim configuration file

-- ### PLUGINS 
vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

paq 'neovim/nvim-lspconfig'
paq 'nvim-lua/completion-nvim'
paq 'nvim-lua/lsp_extensions.nvim'
paq 'vim-airline/vim-airline'
paq 'vim-airline/vim-airline-themes'
paq 'vimwiki/vimwiki'
paq 'edkolev/tmuxline.vim'
paq 'tomasiser/vim-code-dark'
paq 'tpope/vim-surround'

-- ### SETTINGS 
local global = vim.o
local window = vim.wo
local buffer = vim.bo

--- global options
global.swapfile = false
global.clipboard = 'unnamedplus'

--- window options
window.number = true
window.relativenumber = true

--- buffer options
buffer.syntax = 'ON'
buffer.expandtab = true
buffer.autoindent = true
buffer.shiftwidth = 4
buffer.softtabstop = 4
buffer.undofile = true

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
