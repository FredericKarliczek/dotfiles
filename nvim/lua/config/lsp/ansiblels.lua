---@brief
---
--- https://github.com/ansible/vscode-ansible
---
--- Language server for the ansible configuration management tool.
---
--- `ansible-language-server` can be installed via `npm`:
---
--- ```sh
--- npm install -g @ansible/ansible-language-server
--- ```

---@type vim.lsp.Config
return {
    cmd = { "ansible-language-server", "--stdio" },
    settings = {
        ansible = {
            python = {
                interpreterPath = "python",
            },
            ansible = {
                path = "ansible",
            },
            executionEnvironment = {
                enabled = false,
            },
            validation = {
                enabled = true,
                lint = {
                    enabled = true,
                    path = "ansible-lint",
                },
            },
        },
    },
    filetypes = { "yaml", "yml" },
    root_markers = { "ansible.cfg", ".ansible-lint" },
    ---opts = function(_, _)
    ---    vim.filetype.add({
    ---        extension = {
    ---            yaml = "yaml.ansible",
    ---            yml = "yaml.ansible",
    ---        },
    ---        pattern = {
    ---            ["*/playbooks/*.yml"] = "ansible-yaml",
    ---            ["*/playbooks/*.yaml"] = "ansible-yaml",
    ---        },
    ---    })
    ---end,
}
