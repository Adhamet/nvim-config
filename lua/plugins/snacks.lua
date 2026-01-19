return {
    "folke/snacks.nvim",
    opts = {
        scroll = { enabled = false },
        animate = { enabled = false },
        terminal = {
            win = {
                position = "right", -- It's to the right now, so only height & width opts are running
                height = 0.4,
                width = 0.25,
                border = "rounded", -- Options: "none", "single", "double", "rounded", "solid", "shadow"
                title = " Terminal ", -- Custom title
                title_pos = "center", -- "left", "center", "right"
                footer = " Press <C-/> to close ", -- Custom footer
                footer_pos = "center",
                style = "terminal", -- Optional style
                backdrop = 60, -- Backdrop opacity (0-100, makes background darker)
                zindex = 50, -- Window stacking order
            },
            -- Override shell command
            -- cmd = "bash", -- or "zsh", "fish", etc.

            -- Environment variables
            -- env = {
            --   TERM = "xterm-256color",
            -- },
        },
        picker = {
            sources = {
                explorer = {
                    layout = {
                        layout = {
                            width = 25,
                        },
                    },
                },
            },
        },
    },
}
