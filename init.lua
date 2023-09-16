vim.g.mapleader = " "
vim.g.maplocalleader = ","

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
require("lazy").setup("plugins", opts)


vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.encoding="UTF-8"
vim.opt.termguicolors = true
vim.opt.guifont = {"DroidSansMono Nerd Font", "h11"}
vim.opt.background = "dark"
vim.cmd([[colorscheme nordfox]])

--Disable arrows
vim.keymap.set("n", "<Up>", "<Nop>", {noremap = true})
vim.keymap.set("n", "<Down>", "<Nop>", {noremap = true})
vim.keymap.set("n", "<Left>", "<Nop>", {noremap = true})
vim.keymap.set("n", "<Right>", "<Nop>", {noremap = true})

-- Workaround to avoid LSP repalcing Treesitter color highlight
-- See: https://github.com/NvChad/NvChad/issues/1907#issuecomment-1501275281
vim.highlight.priorities.semantic_tokens = 95

