return {
    {
        "RRethy/base16-nvim",
        lazy = false, -- Load immediately
        priority = 1000, -- Load before other plugins
        -- config = function()
        --     vim.cmd("colorscheme base16-flexoki-dark")
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
                vim.o.background = "dark"
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

            -- Light Theme
            -- colorscheme = function()
            --     vim.o.background = "light"
            --     vim.cmd("highlight clear")
            --
            --     local light = vim.o.background == "light"
            --
            --     vim.api.nvim_set_hl(0, "MsgArea", { fg = light and "#000000" or "#cccccc" })
            --     vim.api.nvim_set_hl(0, "ModeMsg",  { fg = light and "#000000" or "#cccccc" })
            --     vim.api.nvim_set_hl(0, "MoreMsg",  { fg = light and "#000000" or "#cccccc" })
            --     vim.api.nvim_set_hl(0, "Question", { fg = light and "#000000" or "#cccccc" })
            --
            --     vim.api.nvim_set_hl(0, "Normal",      { bg = "NONE" })
            --     vim.api.nvim_set_hl(0, "NormalNC",    { bg = "NONE" })
            --     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
            --     vim.api.nvim_set_hl(0, "SignColumn",  { bg = "NONE" })
            --     vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })
            --
            --     vim.api.nvim_set_hl(0, "LineNr",       { fg = light and "#1a3a3c" or "#767676", bg = "NONE" })
            --     vim.api.nvim_set_hl(0, "CursorLineNr", { fg = light and "#000000" or "#f2f2f2", bg = "NONE" })
            --     vim.api.nvim_set_hl(0, "CursorLine",   { bg = light and "#5a7e80" or "#1a1a2e" })
            --     vim.api.nvim_set_hl(0, "StatusLine",   { fg = light and "#000000" or "#cccccc", bg = light and "#5a7e80" or "#1a1a1a" })
            --     vim.api.nvim_set_hl(0, "StatusLineNC", { fg = light and "#1a3a3c" or "#767676", bg = light and "#5a7e80" or "#1a1a1a" })
            --     vim.api.nvim_set_hl(0, "Pmenu",        { fg = light and "#000000" or "#cccccc", bg = light and "#8ab0b2" or "#1a1a1a" })
            --     vim.api.nvim_set_hl(0, "PmenuSel",     { fg = "#ffffff", bg = "#0055aa" })
            --     vim.api.nvim_set_hl(0, "Visual",       { bg = light and "#3a6a6c" or "#1a2a4a" })
            --     vim.api.nvim_set_hl(0, "Search",       { bg = light and "#3a6a6c" or "#1a2a4a" })
            --     vim.api.nvim_set_hl(0, "IncSearch",    { fg = "#ffffff", bg = "#0055aa" })
            --
            --     -- These are the key fixes — dark enough to read on #719496
            --     vim.api.nvim_set_hl(0, "Comment",    { fg = light and "#0a2a2c" or "#767676", italic = true })
            --     vim.api.nvim_set_hl(0, "Identifier", { fg = light and "#000000" or "#cccccc" })
            --     vim.api.nvim_set_hl(0, "Constant",   { fg = light and "#000000" or "#f2f2f2" })
            --
            --     -- Syntax (darkened slightly so they pop against teal instead of washing out)
            --     vim.api.nvim_set_hl(0, "String",    { fg = light and "#005500" or "#13a10e" })
            --     vim.api.nvim_set_hl(0, "Keyword",   { fg = light and "#0000cc" or "#3b78ff" })
            --     vim.api.nvim_set_hl(0, "Function",  { fg = light and "#004488" or "#3a96dd" })
            --     vim.api.nvim_set_hl(0, "Type",      { fg = light and "#7b0099" or "#b4009e" })
            --     vim.api.nvim_set_hl(0, "Number",    { fg = light and "#005500" or "#13a10e" })
            --     vim.api.nvim_set_hl(0, "Statement", { fg = light and "#0000cc" or "#3b78ff" })
            --     vim.api.nvim_set_hl(0, "PreProc",   { fg = light and "#7a5500" or "#c19c00" })
            --     vim.api.nvim_set_hl(0, "Special",   { fg = light and "#004488" or "#3a96dd" })
            --     vim.api.nvim_set_hl(0, "Error",     { fg = "#cc0000" })
            --     vim.api.nvim_set_hl(0, "Todo",      { fg = "#ffffff", bg = "#7a5500" })
            -- end,
        },
    },
}
