⍝ vim: kmp=dyalog

p←{(⍺[1]≠⍵[2])∧(⍺[2]=⍵[1])∧(⍵[2]×10⊥⍺)=(⍺[1]×10⊥⍵)}
⊃×/10⊥¨¨(,N∘.p N)/,(N∘.{⍺ ⍵}N←,(⍳9)∘.,(⍳9))
