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
    prompt_position = "bottom",
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_defaults = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = { "*.exe", "*.msi" },
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 0,
    width = 0.75,
    preview_cutoff = 120,
    results_height = 1,
    results_width = 0.8,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
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


local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
	cwd = "C:/data/Git Repositorys (private)/dotfiles/NeoVim/",
    })
end

return M
