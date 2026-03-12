return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        -- Only install languages you actually use
        ensure_installed = {
            "cpp",
            "bash",
            "c",
            "cpp",
            "lua",
            "markdown",
            "vim",
            "vimdoc",
        },

        -- Disable features you don't need
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false, -- Keep false for speed
        },
        indent = { enable = true },

        -- Disable incremental selection if you don't use it
        incremental_selection = { enable = false },
    },
}
