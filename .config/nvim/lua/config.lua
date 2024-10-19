vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.clipboard = "unnamedplus"
vim.opt.belloff = "all"
vim.opt.undodir = vim.fn.stdpath("config") .. "/undo"
vim.opt.undofile = true
vim.opt.grepprg = "rg --vimgrep --smart-case --no-heading"
vim.opt.mouse = ""
vim.opt.completeopt = "menu"

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.o.showtabline = 2
vim.cmd([[au FileType * if index(['wipe', 'delete'], &bufhidden) >= 0 | set nobuflisted | endif]])

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
local number_group = vim.api.nvim_create_augroup("NumberGroup", {})
vim.api.nvim_create_autocmd("ModeChanged", {
    group = number_group,
    callback = function()
        local mode = vim.fn.mode(1)
        local mode_start = string.sub(mode, 1, 1)
        local can_edit = vim.bo.modifiable or not vim.bo.readonly
        vim.opt.relativenumber = can_edit and (mode_start == "n" or mode_start == "v" or mode_start == "V" or mode == "CTRL-V")
        vim.opt.number = can_edit
    end
})

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.splitkeep = "screen"


vim.keymap.set(
    "n",
    "<leader>?",
    function() vim.cmd("WhichKey") end,
    {
        desc = "Start WhichKey"
    }
)


vim.opt.termguicolors = true
