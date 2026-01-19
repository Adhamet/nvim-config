return {
    -- Disable mini.animate completely (all animations)
    { "nvim-mini/mini.animate", enabled = false },

    -- Disable the function context highlighting animation
    { "nvim-treesitter/nvim-treesitter-context", enabled = false },

    -- Disable indent scope animation
    { "nvim-mini/mini.indentscope", enabled = false },

    -- Heavy/slow UI plugins
    { "folke/noice.nvim", enabled = false },
    { "rcarriga/nvim-notify", enabled = false },
    { "stevearc/dressing.nvim", enabled = false },
    { "nvimdev/dashboard-nvim", enabled = false },
    { "lukas-reineke/indent-blankline.nvim", enabled = false },
    { "folke/flash.nvim", enabled = false },
    { "folke/todo-comments.nvim", enabled = false },

    {
        "neovim/nvim-lspconfig",
        opts = {
            -- Disable inlay hints animations
            inlay_hints = { enabled = false },
            servers = {
                clangd = {
                    capabilities = {
                        textDocument = {
                            completion = {
                                completionItem = {
                                    snippetSupport = false,
                                }
                            },
                        },
                    },
                },
            },
        },
    },
}
