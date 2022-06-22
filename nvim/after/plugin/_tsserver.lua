local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.code_actions.eslist,
        null_ls.builtins.formatting.prettier
    },
})
