return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        {
            "folke/neoconf.nvim",
            cmd = "Neoconf",
            config = true
        },
        {
            "folke/neodev.nvim",
            opts = { experimental = { pathStrict = true } },
            "mason.nvim",
            "mason-lspconfig.nvim"
        },
    },
    config = function()
        require("mason-lspconfig").setup_handlers {
            function(server_name)
                require("lspconfig")[server_name].setup {}
            end,
            ["lua_ls"] = function()
                require("lspconfig").lua_ls.setup {
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { "vim" }
                            }
                        }
                    }
                }
            end,
        }
        require("lsp")
    end,
}
