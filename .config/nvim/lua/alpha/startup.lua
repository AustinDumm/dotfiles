local function padding(amount)
    return {
        type = "padding",
        val = amount,
    }
end

local title = {
    type = "text",
    val = "Neovim",
    opts = {
        hl = "Type",
        position = "center",
    },
}

local header = {
    type = "group",
    val = {
        padding(10),
        title,
        padding(10),
    },
}

local quit_button = {
    type = "button",
    val = "Quit",
    on_press = function() vim.cmd([[q]]) end,
    opts = {
        keymap = { "", "q", ":qa<CR>", { desc = "Quit" } },
        shortcut = "q",
        align_shortcut = "right",
        hl_shortcut = "Keyword",
        position = "center",
        width = 50,
    },
}

local last_session_button = {
    type = "button",
    val = "Last Session",
    on_press = function() vim.cmd([[SessionManager load_last_session]]) end,
    opts = {
        keymap = { "", "l", ":SessionManager load_last_session<CR>", { desc = "Quit" } },
        shortcut = "l",
        align_shortcut = "right",
        hl_shortcut = "Keyword",
        position = "center",
        width = 50,
    },
}

local projects_button = {
    type = "button",
    val = "Workspaces",
    on_press = function() require("telescope").extensions.projects.projects() end,
    opts = {
        keymap = { "", "w", "<leader>fw", {} },
        shortcut = "w",
        align_shortcut = "right",
        hl_shortcut = "Keyword",
        position = "center",
        width = 50,
    },
}

local open_dir_button = {
    type = "button",
    val = "Open Directory",
    on_press = function() vim.cmd("e .") end,
    opts = {
        keymap = { "", "d", "<cmd>lua vim.cmd('e .')<CR>", {} },
        shortcut = "d",
        align_shortcut = "right",
        hl_shortcut = "Keyword",
        position = "center",
        width = 50,
    },
}

local find_file_button = {
    type = "button",
    val = "Find",
    on_press = function() require("telescope.builtin").find_files() end,
    opts = {
        keymap = { "", "f", "<leader>ff", {} },
        shortcut = "f",
        align_shortcut = "right",
        hl_shortcut = "Keyword",
        position = "center",
        width = 50,
    },
}

local buttons = {
    type = "group",
    val = {
        last_session_button,
        projects_button,
        open_dir_button,
        find_file_button,
        quit_button,
    },
    opts = {
        spacing = 1,
    },
}

return {
    layout = {
        header,
        buttons,
    },
}
