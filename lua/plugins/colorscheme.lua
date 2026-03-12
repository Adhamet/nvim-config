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
            colorscheme = "qwen",
            lsp = {
                semantic_tokens = true,
            },
        },
    },
}
