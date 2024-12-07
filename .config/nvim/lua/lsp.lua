-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        require("which-key").add(
            {
                { "gd", function() vim.lsp.buf.definition() end, desc = "[d]efinition", buffer = ev.buf },
                { "gD", function() vim.lsp.buf.declaration() end, desc = "[D]efinition", buffer = ev.buf },
                { "gy", function() vim.lsp.buf.type_definition() end, desc = "T[y]pe definition", buffer = ev.buf },
                { "gI", function() vim.lsp.buf.implementation() end, desc = "[i]mplementation", buffer = ev.buf },
                { "gr", function() vim.lsp.buf.references() end, desc = "[r]eferences", buffer = ev.buf },
                { "K", function() vim.lsp.buf.hover() end, desc = "Hover", buffer = ev.buf },
                { "C-k", function() vim.lsp.buf.signature_help() end, desc = "Signature", buffer = ev.buf },
            }
        )
    end,
})

require("lspconfig").sourcekit.setup {
    cmd = {os.getenv("SWIFT_TOOLCHAIN") .. "/usr/bin/sourcekit-lsp"}
}

require("lspconfig").gleam.setup({})

