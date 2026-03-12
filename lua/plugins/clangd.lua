return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            clangd = {
                on_attach = function(client, bufnr)
                    -- Disable semantic tokens so treesitter takes full control
                    -- This allows custom treesitter queries (like @variable.caller) to work
                    client.server_capabilities.semanticTokensProvider = nil
                end,
            },
        },
    },
}
