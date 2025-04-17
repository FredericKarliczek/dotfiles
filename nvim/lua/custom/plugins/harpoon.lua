return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	enabled = true,
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	config = function()
		local harpoon = require("harpoon")
		harpoon.setup({
			global_settings = {
				save_on_toggle = true,
				save_on_change = true,
			},
		})

		vim.keymap.set("n", "<leader>h", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, {
			desc = "[H]arpoon",
		})
		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end, {
			desc = "[H]arpoon [A]dd file",
		})
		vim.keymap.set("n", "<leader>1", function()
			harpoon:list():select(1)
		end, {
			desc = "Harpoon 1",
		})
		vim.keymap.set("n", "<leader>2", function()
			harpoon:list():select(2)
		end, {
			desc = "Harpoon 2",
		})
		vim.keymap.set("n", "<leader>3", function()
			harpoon:list():select(3)
		end, {
			desc = "Harpoon 3",
		})
		vim.keymap.set("n", "<leader>4", function()
			harpoon:list():select(4)
		end, {
			desc = "Harpoon 4",
		})

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<leader>hp", function()
			harpoon:list():prev()
		end, {
			desc = "[H]arpoon [P]revious",
		})

		vim.keymap.set("n", "<leader>hn", function()
			harpoon:list():next()
		end, {
			desc = "[H]arpoon [N]ext",
		})
	end,
}
