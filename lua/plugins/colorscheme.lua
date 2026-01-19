return {
    {
        "RRethy/base16-nvim",
        lazy = false, -- Load immediately
        priority = 1000, -- Load before other plugins
        -- config = function()
        --     vim.cmd("colorscheme base16-apathy")
        -- end,
    },
    {
        "vague-theme/vague.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other plugins
        -- config = function()
        --     -- NOTE: you do not need to call setup if you don't want to.
        --     require("vague").setup({
        --         -- optional configuration here
        --     })
        --     vim.cmd("colorscheme vague")
        -- end
    },
    -- Using Lazy
    {
        "navarasu/onedark.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        -- config = function()
        --     require('onedark').setup {
        --         style = 'darker'
        --     }
        --     require('onedark').load()
        --     vim.cmd("colorscheme onedark")
        -- end
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = function()
                -- Clear all highlights, use terminal colors
                vim.cmd("highlight clear")

                -- Transparent backgrounds
                vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
                vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
                vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
                vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
                vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })
                vim.api.nvim_set_hl(0, "LineNr", { fg = "#767676", bg = "NONE" })
                vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#f2f2f2", bg = "NONE" })
                vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1a1a2e" })
                vim.api.nvim_set_hl(0, "StatusLine", { fg = "#cccccc", bg = "#1a1a1a" })
                vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#767676", bg = "#1a1a1a" })
                vim.api.nvim_set_hl(0, "Pmenu", { fg = "#cccccc", bg = "#1a1a1a" })
                vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#012456", bg = "#3a96dd" })

                -- Campbell syntax colors (matching your zsh/ls)
                vim.api.nvim_set_hl(0, "Comment", { fg = "#767676", italic = true })
                vim.api.nvim_set_hl(0, "String", { fg = "#13a10e" })           -- green (executables/git)
                vim.api.nvim_set_hl(0, "Keyword", { fg = "#3b78ff" })          -- bright blue (cpp files)
                vim.api.nvim_set_hl(0, "Function", { fg = "#3a96dd" })         -- cyan (symlinks/user)
                vim.api.nvim_set_hl(0, "Type", { fg = "#b4009e" })             -- magenta (headers)
                vim.api.nvim_set_hl(0, "Number", { fg = "#13a10e" })           -- yellow (txt/md)
                vim.api.nvim_set_hl(0, "Constant", { fg = "#f2f2f2" })         -- bright white
                vim.api.nvim_set_hl(0, "Identifier", { fg = "#cccccc" })       -- white (files)
                vim.api.nvim_set_hl(0, "Statement", { fg = "#3b78ff" })        -- bright blue
                vim.api.nvim_set_hl(0, "PreProc", { fg = "#c19c00" })          -- yellow
                vim.api.nvim_set_hl(0, "Special", { fg = "#3a96dd" })          -- cyan
                vim.api.nvim_set_hl(0, "Error", { fg = "#e74856" })            -- Campbell red
                vim.api.nvim_set_hl(0, "Todo", { fg = "#012456", bg = "#c19c00" })

                -- Visual selection
                vim.api.nvim_set_hl(0, "Visual", { bg = "#1a2a4a" })

                -- Search
                vim.api.nvim_set_hl(0, "Search", { bg = "#1a2a4a" })
                vim.api.nvim_set_hl(0, "IncSearch", { fg = "#012456", bg = "#f2f2f2" })
            end,
        },
    },
}
