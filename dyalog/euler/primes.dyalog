#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

trial_division ← { ({∧/0≠(1↓⍳⌊⍵*1÷2)|⍵}¨n)/n←1↓⍳⍵ }
+test_trial_division←(trial_division 50)≡2 3 5 7 11 13 17 19 23 29 31 37 41 43 47

sieve_rec←{ (⍴⍵)<⍺:⍵ ⋄ 0=⍺⌷⍵:(⍺+1)∇⍵ ⋄ ms←(⍴⍵)⍴(⍺-1) 1/0 1 ⋄ (⍺+1)∇⍵>(<\ms)<ms }
sieve←{ s←1 (⍵-1)/0 1 ⋄ (2 sieve_rec s)/⍳⍵ }
+test_sieve ← (sieve n)≡(trial_division n←1000)

factorize_rec←{ 1=⍵:⍬ ⋄ (⍺∇⍵÷×/qs),qs←(0=ps|⍵)/ps←(⍺≤⍵)/⍺ }
factorize ← { ⍵=1:1 ⋄ ⍺←sieve 1000 ⋄ {⍵[⍋⍵]} ⍺ factorize_rec ⍵ }
+test_factorize ← n≡(×/factorize)¨n←(⍳1000)

)save primes
)off
