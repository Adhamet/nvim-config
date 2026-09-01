-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.relativenumber = false
vim.opt.hidden = true

vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"
vim.opt.cursorcolumn = true
vim.opt.list = false

vim.opt.swapfile = false


-- Better syntax highlighting
vim.opt.syntax = "Enable"


-- vim.opt.lazyredraw = true
vim.opt.ttyfast = true
vim.g.loaded_netrw = 1
vim.g.lodaded_netrwPlugin = 1
vim.opt.updatetime = 250 -- Default is 4000ms

vim.opt.termguicolors = true

vim.opt.clipboard = "unnamedplus"

vim.opt.smoothscroll = false

-- Block cursor in all modes, blinking in insert mode
vim.opt.guicursor = "n-v-c:block,i-ci-ve:block-blinkwait300-blinkon200-blinkoff150"



-- Instant jumps (no animation)
-- vim.opt.jumpoptions = ""
