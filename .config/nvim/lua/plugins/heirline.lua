return {
    "rebelot/heirline.nvim",
    config = function()
        local line_components = require("heirline.line_components")
        require("heirline").setup {
            statusline = {
                line_components.empty,
                line_components.vi_mode,
                line_components.empty,
                line_components.git,
                line_components.empty,
                line_components.status_icon,
                line_components.empty,
                line_components.diagnostics,
                line_components.align,
                line_components.empty,
                line_components.ruler,
                line_components.scroll_bar,
            },
            winbar = line_components.navic,
            tabline = {
                line_components.buffer_line,
                line_components.tab_pages,
            }
        }
    end,
    dependencies = {
        "nvim-navic",
        "gruvbox-baby",
    },
}
