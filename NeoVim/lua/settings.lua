-- settings.lua

local global = vim.o
local window = vim.wo
local buffer = vim.bo

-- global options
global.swapfile = false
global.clipboard = 'unnamedplus'

-- window options
window.number = true
window.relativenumber = true

-- buffer options
buffer.syntax = 'ON'
buffer.expandtab = true
buffer.autoindent = true
buffer.shiftwidth = 4
buffer.softtabstop = 4
buffer.undofile = true

vim.api.nvim_command('colorscheme codedark')
