-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

require("config.cpp_cp")

-- Disable Shift + Up / Down (LazyVim defaults)
vim.keymap.set({ "n", "i", "v" }, "<S-Up>", "<nop>")
vim.keymap.set({ "n", "i", "v" }, "<S-Down>", "<nop>")

-- Stop LazyVim from formatting/auto-indenting on save
vim.g.autoformat_enabled = false
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.b.autoformat = false
  end,
})

-- Statusline colors
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "StatusLine", {
      fg = "#c0c0c0",
      bg = "#1a1a1a",
      bold = false,
    })
    vim.api.nvim_set_hl(0, "StatusLineNC", {
      fg = "#c0c0c0",
      bg = "#1a1a1a",
    })
  end,
})
