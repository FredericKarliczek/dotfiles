vim.diagnostic.config({
    underline = true,
    float = {
        border = "rounded",
    },
})

vim.keymap.set("n", "<leader>dis", vim.diagnostic.open_float, { desc = "[D]iagnostics [S]how" })
vim.keymap.set("n", "<leader>din", function()
    vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "[D]iagnostics [N]ext" })
vim.keymap.set("n", "<leader>dip", function()
    vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "[D]iagnostics [P]revious" })
