return {
	{
		"NvChad/NvChad",
		lazy = false,
		branch = "v2.5",
		import = "nvchad.plugins",
	},

  	{
	  	"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		opts = require "configs.plugins.conform",
	},

	-- lsp config
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require "configs.plugins.lspconfig"
		end,
	},

	-- nvim tree
	{
		"nvim-tree/nvim-tree.lua"
	},
	{
		"nvim-tree/nvim-web-devicons"
	},

	-- LANGUAGE SUPPORT PLUGINS
	-- Autocompletion plugin
	{ "hrsh7th/nvim-cmp" },
	-- LSP source for nvim-cmp
	{ "hrsh7th/cmp-nvim-lsp" },
	-- Snippet engine and snippet pack
	{
		"L3MON4D3/LuaSnip",
		config = function()
			require("configs.plugins.luasnip")
		end
	},
	{ "saadparwaiz1/cmp_luasnip" },
	-- Additional language support plugins
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
			"vim", "lua", "vimdoc",
			"html", "css"
			},
		},
	},
}

