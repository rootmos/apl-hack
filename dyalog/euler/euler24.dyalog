⍝ vim: kmp=dyalog

ds←'0123456789'
rs←{(-⍴⍵)↑¯1↓⍵}
f ← { gs←ds~⍺ ⋄ 1=⍵:⍺,gs ⋄ n←⍴gs ⋄ x←rs+\n⍴!(n-1) ⋄ d←(⌽<\⌽x<⍵)⍳1 ⋄ (⍺,gs[d])∇⍵-x[d] }
⍬ f 1000000
