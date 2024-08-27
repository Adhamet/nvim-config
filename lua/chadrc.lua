-- This file needs to have the same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

local options = {

	base46 = {
		theme = "oxocarbon", -- default theme
		hl_add = {},
		hl_override = {
			Comment = { fg = "#a0a0a0" },
			["@comment"] = { fg = "#a0a0a0" },
			CursorLine = { bg = "#2E3440" },
			CursorColumn = { bg = "#2E3440" },
			NvimTreeExecFile = { fg = "#ffa0a0" },
			NvimTreeSpecialFile = { fg = "#ff80ff", underline = true },
			NvimTreeSymlink = { fg = "Yellow", italic = true },
			NvimTreeImageFile = { link = "Title" },
		},
		integrations = {},
		changed_themes = {},
		transparency = true,
		theme_toggle = { "oxocarbon" },
	},

	ui = {
		cmp = {
		icons = true,
		lspkind_text = true,
		style = "default", -- default/flat_light/flat_dark/atom/atom_colored
	},

	telescope = { style = "borderless" }, -- borderless / bordered

	statusline = {
  		theme = "default", -- default/vscode/vscode_colored/minimal
		-- default/round/block/arrow separators work only for default statusline theme
	  	-- round and block will work for minimal theme only
		separator_style = "default",
		order = nil,
		modules = nil,
		},

		-- lazyload it when there are 1+ buffers
    tabufline = {
		enabled = true,
		lazyload = true,
		order = { "treeOffset", "buffers", "tabs", "btns" },
		modules = nil,
    },	


	nvdash = {
		load_on_startup = false,
	
	  	header = {
		  	"           ▄ ▄                   ",
			"       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
			"       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
			"    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
			"  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
			"  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
			"▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
			"█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
			"    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
		},

		buttons = {
				{ "  Find File", "Spc f f", "Telescope find_files" },
				{ "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
				{ "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
				{ "  Bookmarks", "Spc m a", "Telescope marks" },
				{ "  Themes", "Spc t h", "Telescope themes" },
				{ "  Mappings", "Spc c h", "NvCheatsheet" },
			},
		},
	},

	term = {
		winopts = { number = false, relativenumber = false },
		sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
		float = {
		relative = "editor",
		row = 0.3,
		col = 0.25,
		width = 0.5,
		height = 0.4,
		border = "single",
		},
	},

	lsp = { signature = true },

	cheatsheet = {
		theme = "grid", -- simple/grid
		excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" }, -- can add group name or with mode
	},

	mason = { cmd = true, pkgs = {} },
}

local status, chadrc = pcall(require, "chadrc")
return vim.tbl_deep_extend("force", options, status and chadrc or {})
