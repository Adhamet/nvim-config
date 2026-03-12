return {
    "HiPhish/rainbow-delimiters.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
        local rainbow = require("rainbow-delimiters")
        
        vim.g.rainbow_delimiters = {
            strategy = {
                [""] = rainbow.strategy["global"],
                vim = rainbow.strategy["local"],
            },
            query = {
                [""] = "rainbow-delimiters",
                lua = "rainbow-blocks",
            },
            highlight = {
                "RainbowDelimiter1",
                "RainbowDelimiter2",
                "RainbowDelimiter3",
                "RainbowDelimiter4",
                "RainbowDelimiter5",
                "RainbowDelimiter6",
                "RainbowDelimiter7",
            },
        }
    end,
}
