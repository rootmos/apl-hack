#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

trial_division ← {({∧/0≠(1↓⍳(⌊⍵*1÷2))|⍵}¨n)/n←(1↓⍳⍵)}
trial_division 1000

∇factorize ← {
  ⍵=1: 1
  ⍺ ← trial_division 1000
  ps ← ⍺
  ks ← {(0=qs|⍵)/qs←((ps≤⍵)/ps)}
  g ← {
    ⍵=1: ⍬
    (∇(⍵÷(×/qs))),qs←(ks ⍵)
  }
  {⍵[⍋⍵]} g⍵
}∇
+test_factorize ← n≡(×/factorize)¨n←(⍳1000)

∇sieve←{
  N←⍵
  s←(0,(⍵-1)⍴¯1)
  m←{N⍴(((⍵-1)⍴1),0)}
  f←{
    N<i←⍵⍳¯1: ⍵
    x←⍵∧(m i)
    x[i]←1
    ∇x
  }
  (f s)/⍳N
}∇
+test_sieve ← (sieve n)≡(trial_division n←1000)

)save primes
