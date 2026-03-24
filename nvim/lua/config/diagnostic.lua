vim.diagnostic.config({
    underline = true,
    float = {
        border = "rounded",
    },
})

vim.keymap.set("n", "<leader>ds", vim.diagnostic.open_float, { desc = "[D]iagnostics [S]how" })
vim.keymap.set("n", "<leader>dn", function()
    vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "[D]iagnostics [N]ext" })
vim.keymap.set("n", "<leader>dp", function()
    vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "[D]iagnostics [P]revious" })
