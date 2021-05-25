vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

-- Add your packages

paq 'neovim/nvim-lspconfig'
paq 'nvim-lua/completion-nvim'
paq 'nvim-lua/lsp_extensions.nvim'
paq 'vim-airline/vim-airline'
paq 'vim-airline/vim-airline-themes'
paq 'vimwiki/vimwiki'
paq 'edkolev/tmuxline.vim'
paq 'tomasiser/vim-code-dark'

-- Package configuration
-- Airline
vim.g.airline_powerline_fonts = true
