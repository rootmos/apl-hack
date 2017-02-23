#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

⍝ naive solution for 10
N ← ⍳10000
({∧/0=(⍳10)|⍵}¨N)/N

)copy primes
ps←trial_division 100
+qs←{ps factorize ⍵}¨⍳20
f←{(⌈/{+/n=⍵}¨qs)*⍨n←⍵}
+m←⌈/⌈/¨qs
×/f¨(ps≤m)/ps
