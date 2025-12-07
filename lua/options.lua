require "nvchad.options"

-- add yours here!
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.hidden = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"
vim.opt.cursorcolumn = true
vim.opt.hlsearch = true
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.api.nvim_create_autocmd("BufWritePre",
      {
            pattern = "*",
            callback = function()
                  local sw = vim.bo.shiftwidth
                  vim.cmd("retab " .. sw)
            end,
      }
)
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
