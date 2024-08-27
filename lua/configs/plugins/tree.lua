-- Type :help nvim-tree-opts to see available options
require("nvim-tree").setup({
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
})
require'nvim-web-devicons'.get_icons()

-- Close nvim if no other nvim file is open
vim.api.nvim_create_autocmd("BufEnter", {
    nested = true,
    callback = function()
        if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
            vim.cmd("quit")
        end
    end,
})



