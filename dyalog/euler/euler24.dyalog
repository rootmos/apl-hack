⍝ vim: kmp=dyalog

ds←'0123456789'
rs←{(-⍴⍵)↑¯1↓⍵} ⍝ shift right and fill with identity element to the left
edge←{1⍳⍨⌽<\⌽⍺<⍵}  ⍝ first element of ⍵ to strictly exceed ⍺
{ ⍺←⍬ ⋄ gs←ds~⍺ ⋄ 1=⍵:⍺,gs ⋄ n←⍴gs ⋄ x←rs+\n⍴!(n-1) ⋄ d←x edge ⍵ ⋄ (⍺,gs[d])∇⍵-x[d] } 1000000
