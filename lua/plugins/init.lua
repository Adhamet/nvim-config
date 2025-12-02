return {
      -- NvChad core plugin
      {
            "NvChad/NvChad",
            lazy = false,
            branch = "v2.5",
            import = "nvchad.plugins",
            -- Ensure it loads first
            priority = 1000,
      },

      -- Code formatter (Conform.nvim)
      {
            "stevearc/conform.nvim",
            event = "BufWritePre", -- Enable format on save
            cmd = { "ConformInfo" },
            opts = require "configs.plugins.conform",
      },

      -- LSP Configuration
      {
            "neovim/nvim-lspconfig",
            event = { "BufReadPre", "BufNewFile" },
            config = function()
                  require("nvchad.configs.lspconfig").defaults()
                  require "configs.plugins.lspconfig"
            end,
      },

      -- File Explorer (nvim-tree)
      {
            "nvim-tree/nvim-tree.lua",
            cmd = { "NvimTreeToggle", "NvimTreeFocus" },
            opts = function()
                  return require "configs.plugins.tree"
            end,
            config = function(_, opts)
                  require("nvim-tree").setup(opts)
            end,
      },

      -- File icons
      {
            "nvim-tree/nvim-web-devicons",
            opts = function()
                  return { override = require "nvchad.icons.devicons" }
            end,
            config = function(_, opts)
                  require("nvim-web-devicons").setup(opts)
            end,
      },

      -- COMPLETION PLUGINS --

      -- Autocompletion engine
      {
            "hrsh7th/nvim-cmp",
            event = "InsertEnter",
            dependencies = {
                  -- Snippet engine (required by nvim-cmp)
                  {
                        "L3MON4D3/LuaSnip",
                        build = "make install_jsregexp", -- optional for advanced snippets
                        dependencies = "rafamadriz/friendly-snippets",
                        config = function()
                              require("configs.plugins.luasnip")
                        end,
                  },
            },
            opts = function()
                  return require "nvchad.configs.cmp"
            end,
      },

      -- LSP completion source
      { 
            "hrsh7th/cmp-nvim-lsp",
            event = "InsertEnter",
      },

      -- Buffer word completions
      ---- Using lazy.nvim
      { 
            "hrsh7th/cmp-buffer",
            event = "InsertEnter",
      },

      -- File path completions
      { 
            "hrsh7th/cmp-path",
            event = "InsertEnter",
      },

      -- Snippet completions
      {
            "saadparwaiz1/cmp_luasnip",
            event = "InsertEnter",
      },

      -- Syntax highlighting (Treesitter)
      {
            "nvim-treesitter/nvim-treesitter",
            event = { "BufReadPost", "BufNewFile" },
            cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
            build = ":TSUpdate",
            opts = {
                  ensure_installed = {
                        -- Core
                        "vim", "lua", "vimdoc", "query",
                        -- Web development
                        "html", "css", "javascript", "typescript",
                        -- Systems programming
                        "c", "cpp",
                        -- Python
                        "python",
                        -- Config files
                        "json", "yaml", "toml",
                        -- Markup
                        "markdown", "markdown_inline",
                  },
                  highlight = {
                        enable = true,
                        use_languagetree = true,
                  },
                  indent = { enable = true },
            },
            config = function(_, opts)
                  require("nvim-treesitter.configs").setup(opts)
            end,
      },
}
