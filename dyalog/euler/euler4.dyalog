#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

d ← {(n⍴10)⊤⍵}
tz ← {((⌽⍵∊⍳9)⍳1)-1} ⍝ find number of trailing zeros
r ← {⍵{⌽(-⍵)⌽⍺}tz⍵}
p ← {∧/(r(d⍵))=(d⍵)}

n ← 4
xs ← (⍳99) ∘.× (⍳99)
⌈/(p¨,xs)/,xs

n ← 6
xs ← (⍳999) ∘.× (⍳999)
⌈/(p¨,xs)/,xs
