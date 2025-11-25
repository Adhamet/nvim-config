local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp", {
      -- grid directions
      s("grid4Dir", {
            t{
                  "const int dr[] = {-1, 0, 1, 0};",
                  "const int dc[] = {0, -1, 0, 1};"
            }
      }),
      s("grid8Dir", {
            t{
                  "const int dr[] = {-1, 0, 1, -1, 1, -1, 0, 1};",
                  "const int dc[] = {-1, -1, -1, 0, 0, 1, 1, 1};"
            }
      }),
})

