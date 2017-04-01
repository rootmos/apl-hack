⍝ vim: kmp=dyalog

+xs←?10⍴20
{⍵[⍋⍵]}xs

+x ← 16 (⊥⍣¯1) 350685
+b ←'0123456789abcdef'
+y ← b[x]
16⊥b⍳y

⍝ floating point even square predicate is correct enough
s1←{⍵=⌊⍵}(÷2)*⍨⊣
s1⍳10

s2←{N←⍵ ⋄ N=1{⍵≥N:⍵ ⋄ (⍺+1)∇(⍵+(2×⍺)+1)}1}¨⍨⊣
s2⍳10

∨/(s1⍳N)=s2⍳N←10000

p←{0=1000|⍵:⎕←⍵ ⋄ ⍵}
1+⍣{(s1⍵)≠s2(p⍵)}1

)copy dfns
N←10000
##.cmpx 's1⍳N' 's2⍳N'

