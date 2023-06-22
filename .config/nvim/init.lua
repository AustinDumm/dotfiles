vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.termguicolors = true

vim.g.python3_host_skip_check = 1
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0


vim.loader.enable()
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins", {
    install = {
        colorscheme = { "gruvbox-baby" },
    },
    change_detection = {
        enabled = true,
        notify = false,
    },
})

require('config')
require('keybindings')
