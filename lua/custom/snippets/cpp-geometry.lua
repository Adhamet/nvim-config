local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp", {
    -- points 2d long double 
    s("dpoints2d", {
        t{
            "struct Pt {",
            "    long double x, y;",
            "    Pt() : x(0), y(0) {}",
            "    Pt(long double _x, long double _y) : x(_x), y(_y) {}",
            "",
            "    inline Pt operator+(const Pt &o) const { return {x + o.x, y + o.y}; }",
            "    inline Pt operator-(const Pt &o) const { return {x - o.x, y - o.y}; }",
            "    inline Pt operator*(long double k) const { return {x * k, y * k}; }",
            "    inline Pt operator/(long double k) const { return {x / k, y / k}; }",
            "",
            "    inline bool operator==(const Pt &o) const { return fabsl(x - o.x) < 1e-9 && fabsl(y - o.y) < 1e-9; }",
            "    inline bool operator!=(const Pt &o) const { return !(*this == o); }",
            "    inline bool operator<(const Pt &o) const { return x < o.x || (fabsl(x - o.x) < 1e-9 && y < o.y); }",
            "",
            "    inline long double dot(const Pt &o) const { return x * o.x + y * o.y; }",
            "    inline long double cross(const Pt &o) const { return x * o.y - y * o.x; }",
            "    inline long double norm2() const { return x * x + y * y; }",
            "    inline long double norm() const { return sqrtl(norm2()); }",
            "",
            "    inline Pt unit() const { long double n = norm(); return {x / n, y / n}; }",
            "};",
        }
    }),

    -- points 2d long long
    s("ipoints2d", {
        t{
            "struct Pt {",
            "    long long x, y;",
            "    Pt() : x(0), y(0) {}",
            "    Pt(long long _x, long long _y) : x(_x), y(_y) {}",
            "",
            "    inline Pt operator+(const Pt &o) const { return {x + o.x, y + o.y}; }",
            "    inline Pt operator-(const Pt &o) const { return {x - o.x, y - o.y}; }",
            "    inline Pt operator*(long long k) const { return {x * k, y * k}; }",
            "    inline Pt operator/(long long k) const { return {x / k, y / k}; }",
            "",
            "    inline bool operator==(const Pt &o) const { return x == o.x && y == o.y; }",
            "    inline bool operator!=(const Pt &o) const { return !(*this == o); }",
            "    inline bool operator<(const Pt &o) const { return x < o.x || (x == o.x && y < o.y); }",
            "",
            "    inline long long dot(const Pt &o) const { return x * o.x + y * o.y; }",
            "    inline long long cross(const Pt &o) const { return x * o.y - y * o.x; }",
            "    inline long double norm2() const { return 1.0L * x * x + 1.0L * y * y; }",
            "    inline long double norm() const { return sqrtl(norm2()); }",
            "",
            "    inline Pt unit() const { long double n = norm(); return {(long long)roundl(x / n), (long long)roundl(y / n)}; }",
            "};",
        }
    })
})

