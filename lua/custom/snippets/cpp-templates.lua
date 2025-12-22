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
            "using u32 = unsigned int;",
            "using u64 = unsigned long long;",
            "",
            "int main() {",
            "    std::ios::sync_with_stdio(false);",
            "    std::cin.tie(nullptr);",
            "",
            "",
            "",
            "    return 0;",
            "}",
        }
    }),
    s("allahT", {
        t{
            "#include <bits/stdc++.h>",
            "",
            "using i64 = long long;",
            "using u32 = unsigned int;",
            "using u64 = unsigned long long;",
            "",
            "void solve() {",
            "    ",
            "}",
            "",
            "int main() {",
            "    std::ios::sync_with_stdio(false);",
            "    std::cin.tie(nullptr);",
            "    ",
            "    int t;    std::cin >> t;",
            "    while (t--) {",
            "        solve();",
            "    }",
            "    ",
            "    return 0;",
            "}",
        }
    }),

    -- File Input/Output
    s("fileio", {
        t({
            'freopen("sumdiv.in", "r", stdin);',
            'freopen("sumdiv.out", "w", stdout);'
        })
    }),


    s("debugger", {
        t({
            "#ifdef LOCAL",
            '    #include "debug.h"',
            "#else",
            "    #define debug(...) 42",
            "#endif"
        })
    }),

    -- Bitwise utility macros
    s("bitmacros", {
        t({
            "#define MSB(x) (1LL << (63 - __builtin_clzll(x)))",
            "#define MSB_IDX(x) (63 - __builtin_clzll(x))",
            "#define LSB(x) ((x) & -(x))",
            "#define LSB_IDX(x) (__builtin_ctzll(x))",
            "#define DROP_LSB(x) ((x) & ((x) - 1))",
            "#define IS_POW2(x) ((x) && !((x) & ((x) - 1)))",
            "#define CLZ(x) (__builtin_clzll(x))   // undefined if x == 0",
            "#define CTZ(x) (__builtin_ctzll(x))   // undefined if x == 0",
        })
    }),
})

