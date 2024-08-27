-- Main settings ------------------------
vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-----------------------------------------

-- Bootstrap lazy and all plugins ------
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require("configs.plugins.lazy")
require("lazy").setup({
	require("plugins"),
	{ import = "plugins" },
}, lazy_config)
----------------------------------------

-- Nvim Tree Configuration
require("configs.plugins.tree")
-- C++ Compilation Configuration
require("configs.languages.cpp_cp")
-- LSP pyright setup (configuration)
require'lspconfig'.pyright.setup{}

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require('options')
require('nvchad.autocmds')

vim.schedule(function()
  require "mappings"
end)
