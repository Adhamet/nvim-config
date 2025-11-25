require "nvchad.options"

-- add yours here!
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 6
vim.opt.tabstop = 6
vim.opt.softtabstop = 6
vim.opt.hidden = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"
vim.opt.cursorcolumn = true
vim.opt.hlsearch = true
vim.opt.clipboard = "unnamedplus"

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
