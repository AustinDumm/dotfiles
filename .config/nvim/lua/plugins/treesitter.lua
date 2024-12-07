return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        enusure_installed = {
            "c",
            "rust",
            "lua",
            "luadoc",
            "vimdoc",
            "markdown",
        },
        sync_install = false,
        auto_install = false,
        highlight = {
            enable = true
        },
        additional_vim_regex_highlighting = false,
    },
    main = "nvim-treesitter.configs",
    build = function()
        vim.api.nvim_command('TSUpdate')
    end
}
