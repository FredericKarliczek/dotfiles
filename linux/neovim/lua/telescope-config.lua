require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    path_display = {},
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}


-- ### KEYMAPPING 
local map = vim.api.nvim_set_keymap
options = { noremap = true }

map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', options)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', options)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', options)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', options)
map('n', '<leader>fvc', ':lua require("telescope-config").search_dotfiles()<CR>', options)
map('n', '<leader>fo', ':lua require("telescope.builtin").oldfiles()<CR>', options)
map('n', '<leader>fw', ':lua require("telescope-config").search_wikifiles()<CR>', options)

local M = {}

local dotfilesPath = "C:/DATA/Git/private/dotfiles/NeoVim/"
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
	cwd = dotfilesPath,
    })
end

local wikiPath = 'C:/DATA/Git/private/digital_garden'
M.search_wikifiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
	cwd = wikiPath,
    })
end

return M
