local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Include plugins and their dependencies
local opts = {}

-- Inlude an external file e.g. plugins.lua
require("vim-options")
require("lazy").setup("plugins")

-- Ctrl + c => copy selection
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })


