-- nvim-tree configuration
-- This should RETURN the config table, not call setup() directly
-- The setup() is called from plugins/init.lua

local options = {
  sort = {
    sorter = "name",
  },
  view = {
    width = 20,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
}

-- Close nvim if only nvim-tree window is left open
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
      vim.cmd("quit")
    end
  end,
})

return options
