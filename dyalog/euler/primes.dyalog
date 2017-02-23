#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

trial_division ← {({∧/0≠(1↓⍳(⌊⍵*1÷2))|⍵}¨n)/n←(1↓⍳⍵)}
trial_division 1000

∇factorize ← {
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

)save primes
