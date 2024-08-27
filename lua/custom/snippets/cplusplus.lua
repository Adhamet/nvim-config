local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp", {
    s("allah", {
      t{
        "#include <bits/stdc++.h>",
        "using namespace std;",
        "",
        "#define dbg(v) cout << \"Line(\" << __LINE__ << \") -> \" << #v << \" = \" << (v) << endl;",
        "#define F first",
        "#define S second",
        "#define el '\\n'",
        "",
        "using ll = long long;",
        "using pi = pair<int, int>;",
        "using pll = pair<ll, ll>;",
        "",
        "/*const int N = 20 + 5;*/",
        "/*const int oo = 1e9 + 20;*/",
        "",
        "int main() {",
        "\tios_base::sync_with_stdio(0), cin.tie(0), cout.tie(0);",
        "",
        "\t",
      },
      i(1),
      t{
        "",
        "",
        "\treturn 0;",
        "}"
      }
    })
  }
)

ls.add_snippets("cpp", {
	s("usaco", {
		t{
			"void setIO(string name = \"\") {",
			"\tif (name.size()) {",
			"\t\tfreopen((name+\".in\").c_str(), \"r\", stdin);",
			"\t\tfreopen((name+\".out\").c_str(), \"w\", stdout);",
			"\t}",
			"}"
		}
	})
})

