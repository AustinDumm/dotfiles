return {
    {
        "williamboman/mason.nvim",
        build = function()
            require("mason.api.command").MasonUpdate()
        end,
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "mason.nvim"
        },
        opts = {
            ensure_installed = { "lua_ls", "rust_analyzer" },
        }
    }
}
