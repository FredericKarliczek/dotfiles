local cmp = require'cmp'
cmp.setup({
    snippet = {
    },
    mapping = {
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp'},
        { name = 'buffer'},
    }
})



