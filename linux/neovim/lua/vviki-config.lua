vim.g.vviki_root = "C:/DATA/Git/private/digital_garden"
-- ### KEYMAPPING 
local map = vim.api.nvim_set_keymap
options = { noremap = true }

map('n', '<leader>ww', ':e C:/DATA/Git/private/digital_garden/+Home.adoc<CR>', options)


