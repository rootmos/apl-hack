#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

trial_division ← {({∧/0≠(1↓⍳(⌊⍵*1÷2))|⍵}¨(1↓⍳⍵))/(1↓⍳⍵)}
trial_division 1000

∇factorize ← {
  ⍺ ← trial_division 1000
  ps ← ⍺
  ks ← {(0=(ps≤⍵)/ps|⍵)/((ps≤⍵)/ps)}
  g ← {
    ⍵=1: ⍬
    ⍵ {⍵,g(⍺÷(×/⍵))} (ks ⍵)
  }
  {⍵[⍋⍵]} g⍵
}∇
+test_factorize ← ∧/(⍳1000)=(×/factorize)¨(⍳1000)

)save primes
