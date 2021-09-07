local map = vim.api.nvim_set_keymap
options = { noremap = true }

map('n', '<silent> gd', '<cmd> lua vim.lsp.buf.definition()<CR>', options)


