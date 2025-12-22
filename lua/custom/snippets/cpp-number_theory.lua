local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
-- local i = ls.insert_node

ls.add_snippets("cpp", {
    -- Modular integer type (modint)
    s("mint", {
        t({
            "class Z {",
            "    int val = 0;",
            "",
            "public:",
            "    constexpr Z() = default;",
            "    template<class T> constexpr Z(const T &v): val((MOD + v % MOD) % MOD) {}",
            "    constexpr Z(const Z &z) = default;",
            "    constexpr int operator()() const { return val; }",
            "    constexpr Z pow(unsigned long long b) const {",
            "        Z ans = 1;",
            "        for (Z a = *this; b; b >>= 1, a *= a)",
            "            if (b & 1) ans *= a;",
            "        return ans;",
            "    }",
            "    constexpr Z inv() const { return pow(MOD - 2); }",
            "    constexpr Z& operator += (Z a) { val += a.val; if (val >= MOD) val -= MOD; return *this; }",
            "    constexpr Z& operator -= (Z a) { val -= a.val; if (val < 0) val += MOD; return *this; }",
            "    constexpr Z& operator *= (Z a) { val = 1LL * val * a.val % MOD; return *this; }",
            "    constexpr Z& operator /= (Z a) { return *this *= a.inv(); }",
            "    friend constexpr Z operator + (Z a, Z b) { return a += b; }",
            "    friend constexpr Z operator - (Z a, Z b) { return a -= b; }",
            "    friend constexpr Z operator * (Z a, Z b) { return a *= b; }",
            "    friend constexpr Z operator / (Z a, Z b) { return a /= b; }",
            "    friend constexpr bool operator<(const Z &a, const Z &b) { return a.val < b.val; }",
            "    friend constexpr bool operator>(const Z &a, const Z &b) { return a.val > b.val; }",
            "    friend constexpr bool operator<=(const Z &a, const Z &b) { return a.val <= b.val; }",
            "    friend constexpr bool operator>=(const Z &a, const Z &b) { return a.val >= b.val; }",
            "    friend constexpr bool operator==(const Z &a, const Z &b) { return a.val == b.val; }",
            "    friend constexpr bool operator!=(const Z &a, const Z &b) { return a.val != b.val; }",
            "    friend std::ostream& operator<<(std::ostream &os, Z a) {",
            "        return os << a();",
            "    }",
            "};"
        })
    }),

    s("modinv_1_to_m", {
        t({
            "// Assumes m is prime",
            "std::vector<int> modinv_1_until_m(int m) {",
            "    std::vector<int> inv(m+1);",
            "    inv[1] = 1;",
            "    for(int i=2; i<=m; ++i) {",
            "        inv[i] = int((i64)(MOD - MOD/i) * inv[MOD % i] % MOD);",
            "    }",
            "    return inv;",
            "}",
        })
    }),

    -- russian peasant
    s("russianPeasant", {
        t{
            "i64 russianMul(i64 a, i64 b) {",
            "    i64 res = 0;",
            "    a %= MOD;",
            "    while (b) {",
            "        if (b & 1) res = addm(res, a);",
            "        a = addm(a, a);",
            "        b >>= 1;",
            "    }",
            "    return res;",
            "}",
        }
    }),

    -- Binary Exponentiation
    s("binexp", {
        t{
            "i64 binexp(i64 a, i64 b) {",
            "    i64 res = 1;",
            "    a %= MOD;",
            "    while (b) {",
            "        if (b & 1) res = russianMul(res, a);",
            "        a = russianMul(a, a);",
            "        b >>= 1;",
            "    }",
            "    return res;",
            "}",
        }
    }),

    -- Sieve optimized with Odd counting and ignoring all evens (already div by 2)
    s("sieveOdd", {
        t{
            "// O(nloglogn)",
            "std::vector<int> primes;",
            "void sieveOdd(int n) {",
            "    if (n < 2) return;",
            "    int m = (n - 1) / 2;",
            "    std::vector<bool> isPrime(m + 1, true);",
            "",
            "    for (int i = 1; (2*i+1)*(2*i+1) <= n; i++) if (isPrime[i]) {",
            "        for (int j = ((2*i+1)*(2*i+1) - 1)/2; j <= m; j += (2*i+1))",
            "            isPrime[j] = false;",
            "    }",
            "",
            "    primes.push_back(2);",
            "    for (int i = 1; i <= m; i++) if (isPrime[i]) primes.push_back(2*i+1);",
            "}",
        }
    }),

    s("spfFactorizer", {
        t{
            "struct SPF {",
            "    int N;",
            "    std::vector<int> spf;",
            "",
            "    SPF(int n) : N(n) {}",
            "",
            "    // Explicitly compute SPF once",
            "    void computeSPF() {",
            "        if (spfDone) return;",
            "        spf.resize(N+1); std::iota(spf.begin(), spf.end(), 0);",
            "        for(int i=2;i*i<=N;i++)",
            "            if(spf[i]==i) for(int j=i*i;j<=N;j+=i) if(spf[j]==j) spf[j]=i;",
            "        spfDone = true;",
            "    }",
            "",
            "    // Factorize x <= N, assumes SPF is already computed",
            "    std::vector<std::pair<int,int>> factorize(int x) {",
            "        assert(spfDone && \"SPF must be computed first!\");",
            "        std::vector<std::pair<int,int>> factors;",
            "        while (x > 1) {",
            "            int p = spf[x], cnt = 0;",
            "            while (x % p == 0) { x /= p; cnt++; }",
            "            factors.push_back({p, cnt});",
            "        }",
            "        return factors;",
            "    }",
            "};",
        }
    }),

    -- extended gcd
    s("extGCD", {
        t{
            "int extGCD(int a, int b, int& x, int& y) {",
            "    x = 1, y = 0;",
            "    int x1 = 0, y1 = 1, a1 = a, b1 = b;",
            "    while (b1) {",
            "        int q = a1 / b1;",
            "        std::tie(x, x1) = std::make_tuple(x1, x - q * x1);",
            "        std::tie(y, y1) = std::make_tuple(y1, y - q * y1);",
            "        std::tie(a1, b1) = std::make_tuple(b1, a1 - q * b1);",
            "    }",
            "    return a1;",
            "}",
        }
    }),

    -- Euler Totient Function (phi)
    s("phi", {
        t({
            "// Euler Totient Function",
            "// Computes phi(n) in O(sqrt(n))",
            "i64 phi(i64 n) {",
            "    i64 res = n;",
            "    for (i64 p = 2; p * p <= n; ++p) {",
            "        if (n % p == 0) {",
            "            while (n % p == 0) n /= p;",
            "            res -= res / p;",
            "        }",
            "    }",
            "    if (n > 1) res -= res / n;",
            "    return res;",
            "}",
        })
    }),


    -- Euler Totient for all 1..n (linear sieve)
    s("phi_1_to_n", {
        t({
            "// Euler Totient Function for all 1..n (Linear Sieve)",
            "// Time: O(n), Space: O(n)",
            "std::vector<i64> phi_1_to_n(int n) {",
            "    std::vector<i64> phi(n + 1);",
            "    std::vector<int> primes;",
            "    std::vector<bool> isComposite(n + 1, false);",
            "",
            "    phi[1] = 1;",
            "    for (int i = 2; i <= n; ++i) {",
            "        if (!isComposite[i]) {",
            "            primes.push_back(i);",
            "            phi[i] = i - 1;",
            "        }",
            "        for (int p : primes) {",
            "            if ((i64)p * i > n) break;",
            "            isComposite[p * i] = true;",
            "            if (i % p == 0) {",
            "                phi[p * i] = phi[i] * p;",
            "                break;",
            "            } else {",
            "                phi[p * i] = phi[i] * (p - 1);",
            "            }",
            "        }",
            "    }",
            "    return phi;",
            "}",
        })
    })
})

