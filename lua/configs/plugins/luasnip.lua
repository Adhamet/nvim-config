local ls = require("luasnip")

ls.config.set_config({
  history = true,
  updateevents = "TextChanged,TextChangedI",
  override_builtin = true,
})

require("luasnip.loaders.from_lua").load({ paths = vim.fn.stdpath("config") .. "/lua/custom/snippets" })
