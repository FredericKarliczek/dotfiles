vim.filetype.add({
    extension = {
        yml = "yaml.ansible",
    },

    pattern = {
        ["*/playbooks/*.yml"] = "yml",
        ["*/roles/*.yml"] = "yml",
    },
})
