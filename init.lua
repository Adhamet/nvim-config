-- Main settings ------------------------
vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- VSCode-Neovim integration keymaps
vim.keymap.set('n', '<C-j>', '<Cmd>call VSCodeNotify("workbench.action.togglePanel")<CR>')
vim.keymap.set('n', '<C-S-p>', '<Cmd>call VSCodeNotify("workbench.action.showCommands")<CR>')
-----------------------------------------

-- Bootstrap lazy.nvim ------------------
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- Use vim.uv instead of vim.loop (0.11.0+)
if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { 
    "git", 
    "clone", 
    "--filter=blob:none", 
    repo, 
    "--branch=stable", 
    lazypath 
  }
end

vim.opt.rtp:prepend(lazypath)

-- Load lazy configuration
local lazy_config = require("configs.plugins.lazy")

-- Setup plugins
require("lazy").setup({
  require("plugins"),
  { import = "plugins" },
}, lazy_config)
----------------------------------------

-- Custom configurations ----------------
-- Nvim Tree Configuration
require("configs.plugins.tree")

-- C++ Compilation Configuration
require("configs.languages.cpp_cp")

-- LSP Configuration
-- Note: LSP setup moved to configs/plugins/lspconfig.lua
-- which uses the new vim.lsp.config API (Neovim 0.11.0+)
----------------------------------------


-- Load NvChad theme --------------------
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")
----------------------------------------


-- Load core configurations -------------
require('options')
require('nvchad.autocmds')


-- Schedule mappings to load after other configs
vim.schedule(function()
  require "mappings"
end)
----------------------------------------
