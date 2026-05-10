return {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
        "jay-babu/mason-nvim-dap.nvim",
        "theHamsta/nvim-dap-virtual-text",
    },

    config = function()
        local dap = require("dap")
        vim.keymap.set("n", "<leader>det", dap.toggle_breakpoint, { desc = "[D]ebugger [T]oggle breakpoint" })
        vim.keymap.set("n", "<leader>dec", dap.continue, { desc = "[D]ebugger [C]ontinue" })
        vim.keymap.set("n", "<leader>dei", dap.step_into, { desc = "[D]ebugger Step [I]nto" })
        vim.keymap.set("n", "<leader>deo", dap.step_over, { desc = "[D]ebugger Step [O]over" })
        vim.keymap.set("n", "<leader>deu", dap.step_out, { desc = "[D]ebugger Step [U]ot" })
        vim.keymap.set("n", "<leader>der", dap.repl.open, { desc = "[D]ebugger Open [R]epl" })
        vim.keymap.set("n", "<leader>deq", function()
            dap.terminate()
            require("dapui").close()
            require("nvim-dap-virtual-text").toggle()
        end, { desc = "[D]ebugger [T]erminate" })
        vim.keymap.set("n", "<leader>deb", dap.list_breakpoints, { desc = "[D]ebugger List [B]reakpoints" })
        vim.keymap.set("n", "<leader>dee", function()
            dap.set_exception_breakpoints({ "all" })
        end, { desc = "[D]ebugger Set [E]xception Breakpoints" })

        local dapui = require("dapui")
        dapui.setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end
    end,
}
