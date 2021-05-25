-- keybindings.lua

local map = vim.api.nvim_set_keymap

-- set leader to space
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

options = { noremap = true }
map('i', 'jk', '<Esc>', options)

-- switch off arrow keys
map('i', '<down>', '<Nop>', options)
map('i', '<right>', '<Nop>', options)
map('i', '<left>', '<Nop>', options)
map('i', '<up>', '<Nop>', options)

map('n', '<down>', '<Nop>', options)
map('n', '<right>', '<Nop>', options)
map('n', '<left>', '<Nop>', options)
map('n', '<up>', '<Nop>', options)
