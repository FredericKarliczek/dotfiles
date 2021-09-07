local map = vim.api.nvim_set_keymap

options = { noremap = true }
map('n', '<leader>n', ':NERDTreeToggle<CR>', options)
