return {
    "SmiteshP/nvim-navic",
    dependencies = "nvim-lspconfig",
    opts = {
        lsp = {
            auto_attach = true,
            preference = {
                "java-language-server"
            },
        },
        highlight = true,
    }
}
