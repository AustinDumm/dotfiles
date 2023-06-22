if not table.unpack then
    table.unpack = unpack
end
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
        require("which-key").register(
            {
                g = {
                    name = "[g]oto",
                    d = { function() vim.lsp.buf.definition() end, "[d]efinition" },
                    D = { function() vim.lsp.buf.declaration() end, "[D]efinition" },
                    y = { function() vim.lsp.buf.type_definition() end, "T[y]pe definition" },
                    i = { function() vim.lsp.buf.implementation() end, "[i]mplementation" },
                    r = { function() vim.lsp.buf.references() end, "[r]eferences" },
                },
                K = { function() vim.lsp.buf.hover() end, "Hover" },
                ["C-k"] = { function() vim.lsp.buf.signature_help() end, "Signature" },
            },
            {
                buffer = ev.buf
            }
        )
    end,
})
