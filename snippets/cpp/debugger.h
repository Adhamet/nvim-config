#pragma once

#ifdef LOCAL
#include <bits/stdc++.h>
using namespace std;

/* ---------- type traits ---------- */

template<typename T>
struct is_iterable {
private:
    template<typename U>
    static auto test(int) -> decltype(begin(declval<U>()), end(declval<U>()), true_type{});
    template<typename>
    static false_type test(...);
public:
    static constexpr bool value = decltype(test<T>(0))::value;
};

/* ---------- base printers ---------- */

void _print(const string& s) { cerr << '"' << s << '"'; }
void _print(const char* s)   { cerr << '"' << s << '"'; }

template<typename T>
typename enable_if<!is_iterable<T>::value, void>::type
_print(const T& x) {
    cerr << x;
}

/* ---------- pair ---------- */

template<typename A, typename B>
void _print(const pair<A,B>& p) {
    cerr << '(';
    _print(p.first);
    cerr << ", ";
    _print(p.second);
    cerr << ')';
}

/* ---------- iterable containers ---------- */

template<typename T>
typename enable_if<is_iterable<T>::value && !is_same<T,string>::value, void>::type
_print(const T& v) {
    cerr << '{';
    bool first = true;
    for (const auto& x : v) {
        if (!first) cerr << ", ";
        first = false;
        _print(x);
    }
    cerr << '}';
}

/* ---------- variadic ---------- */

void _debug() { cerr << '\n'; }

template<typename T, typename... Ts>
void _debug(const T& x, const Ts&... xs) {
    _print(x);
    if constexpr (sizeof...(xs)) {
        cerr << ", ";
        _debug(xs...);
    }
    cerr << '\n';
}

/* ---------- macro ---------- */

#define debug(...) \
    cerr << "[" << #__VA_ARGS__ << "] = ", _debug(__VA_ARGS__)

#else
#define debug(...) 42
#endif

