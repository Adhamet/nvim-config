local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp", {
    -- main template
    s("allah", {
        t{
            "#include <bits/stdc++.h>",
            "",
            "using i64 = long long;",
            "",
            "int main() {",
            "      std::ios::sync_with_stdio(false);",
            "      std::cin.tie(nullptr);",
            "",
            "",
            "",
            "      return 0;",
            "}",
        }
    }),
    s("allahT", {
        t{
            "#include <bits/stdc++.h>",
            "",
            "using i64 = long long;",
            "",
            "void solve() {",
            "      ",
            "}",
            "",
            "int main() {",
            "      std::ios::sync_with_stdio(false);",
            "      std::cin.tie(nullptr);",
            "      ",
            "      int t;      std::cin >> t;",
            "      while (t--) {",
            "            solve();",
            "      }",
            "      ",
            "      return 0;",
            "}",
        }
    }),

    -- usaco
    s("usaco", {
        t{
            "void setIO(string name = \"\") {",
            "      if (name.size()) {",
            "            freopen((name+\".in\").c_str(), \"r\", stdin);",
            "            freopen((name+\".out\").c_str(), \"w\", stdout);",
            "      }",
            "}"
        }
    }),
})

