return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "plenary.nvim",
        },
        opts = {
            file_ignore_patterns = { ".git/" },
            defaults = {
                layout_config = {
                    width = 0.80,
                    prompt_position = "bottom",
                    preview_cutoff = 80,
                    horizontal = { mirror = false },
                    vertical = { mirror = false },
                },
            },
            layout_defaults = {
                horizontal = {
                    { preview_width = 0.6 }
                },
            },
        },
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        dependencies = "telescope.nvim",
        config = function()
            require("telescope").load_extension("ui-select")
        end
    }
}
