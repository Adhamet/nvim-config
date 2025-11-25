local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
-- local i = ls.insert_node

ls.add_snippets("cpp", {
      -- mod arithmetic
      s("modArithmeticOps", {
            t{
                  "inline i64 addm(i64 a, i64 b) { return (a += b) >= MOD? a - MOD: a; }",
                  "inline i64 subm(i64 a, i64 b) { return (a -= b) < 0? a + MOD: a; }",
            }
      }),

      -- russian peasant
      s("russianPeasant", {
            t{
                  "i64 russianMul(i64 a, i64 b) {",
                  "      i64 res = 0;",
                  "      a %= MOD;",
                  "      while (b) {",
                  "            if (b & 1) res = addm(res, a);",
                  "            a = addm(a, a);",
                  "            b >>= 1;",
                  "      }",
                  "      return res;",
                  "}",
            }
      }),

      -- Binary Exponentiation
      s("binexp", {
            t{
                  "i64 binexp(i64 a, i64 b) {",
                  "      i64 res = 1;",
                  "      a %= MOD;",
                  "      while (b) {",
                  "            if (b & 1) res = russianMul(res, a);",
                  "            a = russianMul(a, a);",
                  "            b >>= 1;",
                  "      }",
                  "      return res;",
                  "}",
            }
      }),

      -- Sieve optimized with Odd counting and ignoring all evens (already div by 2)
      s("sieveOdd", {
            t{
                  "// O(nloglogn)",
                  "std::vector<int> primes;",
                  "void sieveOdd(int n) {",
                  "      if (n < 2) return;",
                  "      int m = (n - 1) / 2;",
                  "      std::vector<bool> isPrime(m + 1, true);",
                  "",
                  "      for (int i = 1; (2*i+1)*(2*i+1) <= n; i++) if (isPrime[i]) {",
                  "            for (int j = ((2*i+1)*(2*i+1) - 1)/2; j <= m; j += (2*i+1))",
                  "                  isPrime[j] = false;",
                  "      }",
                  "",
                  "      primes.push_back(2);",
                  "      for (int i = 1; i <= m; i++) if (isPrime[i]) primes.push_back(2*i+1);",
                  "}",
            }
      }),

      -- Lazy SPF (Contains: factorization, numDivs, sumDivs, mobius, euler-totient)
      s("lazySPF", {
            t{
                  "struct SPF {",
                  "      int N;",
                  "      std::vector<int> spf;",
                  "      std::vector<int> numDiv, mobius, totient;",
                  "      std::vector<i64> sumDiv;",
                  "      bool spfDone = false;",
                  "      bool numDivDone = false, sumDivDone = false, mobiusDone = false, totientDone = false;",
                  "",
                  "      SPF(int n) : N(n) {}",
                  "",
                  "      // Explicitly compute SPF once",
                  "      void computeSPF() {",
                  "            if (spfDone) return;",
                  "            spf.resize(N+1); std::iota(spf.begin(), spf.end(), 0);",
                  "            for(int i=2;i*i<=N;i++)",
                  "                  if(spf[i]==i) for(int j=i*i;j<=N;j+=i) if(spf[j]==j) spf[j]=i;",
                  "            spfDone = true;",
                  "      }",
                  "",
                  "      // Compute multiplicative functions, assumes SPF is already computed",
                  "      void compute(bool wantNumDiv=false, bool wantSumDiv=false, bool wantMobius=false, bool wantTotient=false) {",
                  "            assert(spfDone && \"SPF must be computed first!\");",
                  "            if (wantNumDiv && !numDivDone) { numDiv.assign(N+1,1); numDiv[0]=0; numDivDone=true; }",
                  "            if (wantSumDiv && !sumDivDone) { sumDiv.assign(N+1,1); sumDiv[0]=0; sumDivDone=true; }",
                  "            if (wantMobius && !mobiusDone) { mobius.assign(N+1,1); mobiusDone=true; }",
                  "            if (wantTotient && !totientDone) { totient.assign(N+1,0); totient[0]=0; totient[1]=1; totientDone=true; }",
                  "",
                  "            for(int i=2;i<=N;i++){",
                  "                  int p = spf[i], cnt=0, x=i;",
                  "                  while(x%p==0) x/=p, cnt++; // dont need for count if going to factorize already",
                  "                  if (wantNumDiv) numDiv[i] = numDiv[x]*(cnt+1); // (exp1 + 1)*(exp2 + 1)*...*(expn + 1)",
                  "                  if (wantSumDiv) sumDiv[i] = sumDiv[x]*((pow(p,cnt+1)-1)/(p-1)); // watchout for pow <--------",
                  "                  if (wantMobius) mobius[i] = (x % p == 0 ? 0 : -mobius[x]);",
                  "                  if (wantTotient) totient[i] = (x % p == 0 ? totient[x]*p : totient[x]*(p-1));",
                  "            }",
                  "      }",
                  "",
                  "      // Factorize x <= N, assumes SPF is already computed",
                  "      std::vector<std::pair<int,int>> factorize(int x) {",
                  "            assert(spfDone && \"SPF must be computed first!\");",
                  "            std::vector<std::pair<int,int>> factors;",
                  "            while (x > 1) {",
                  "                  int p = spf[x], cnt = 0;",
                  "                  while (x % p == 0) { x /= p; cnt++; }",
                  "                  factors.push_back({p, cnt});",
                  "            }",
                  "            return factors;",
                  "      }",
                  "};",
            }
      }),

      -- extended gcd
      s("extGCD", {
            t({
                  "int extGCD(int a, int b, int& x, int& y) {",
                  "      x = 1, y = 0;",
                  "      int x1 = 0, y1 = 1, a1 = a, b1 = b;",
                  "      while (b1) {",
                  "            int q = a1 / b1;",
                  "            std::tie(x, x1) = std::make_tuple(x1, x - q * x1);",
                  "            std::tie(y, y1) = std::make_tuple(y1, y - q * y1);",
                  "            std::tie(a1, b1) = std::make_tuple(b1, a1 - q * b1);",
                  "      }",
                  "      return a1;",
                  "}"
            })
      })
})

