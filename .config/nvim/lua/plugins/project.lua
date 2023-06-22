return {
    "ahmedkhalf/project.nvim",
    config = function()
        require("project_nvim").setup {
            manual_mode = false,
            detection = { "lsp", "pattern" },
            patterns = { ".git" },
            show_hidden = true,
            scope_chdir = "global",
            silent_chdir = true,
            datapath = vim.fn.stdpath("data"),
        }
        require("telescope").load_extension("projects")
    end,
    dependencies = "telescope.nvim",
}
