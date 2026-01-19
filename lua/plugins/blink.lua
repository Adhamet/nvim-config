return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "none", -- Disable default keymaps
      ["<S-Up>"] = { "select_prev", "fallback" },
      ["<S-Down>"] = { "select_next", "fallback" },
      ["<Tab>"] = { "accept", "fallback" },
      ["<CR>"] = { "fallback" }, -- Just newline
      ["<C-space>"] = { "show", "hide" },
      ["<C-e>"] = { "hide", "fallback" },
    },
  },
}
