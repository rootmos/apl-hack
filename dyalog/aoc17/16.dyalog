⎕IO←0
il←','ltov⊃getfile'input_16.txt'
dm←{'s'=t←⊃⍵:t,⍎1↓⍵ ⋄ a←'/'ltov 1↓⍵ ⋄ t='x':t,⍎¨a ⋄ t='p':t,⊃¨a}¨il
s←(-⊢)⌽⊣ ⋄ x←{⍺[⌽⍵]@⍵⊢⍺} ⋄ p←⊣x⍳ ⍝ move fns
d←{⍵ {⍺(⍎⊃⍵)1↓⍵} foldl dm}       ⍝ dance
d ps←'abcdefghijklmnop'          ⍝ part one
c←⊃{(1+⊃⍵),d 1↓⍵}⍣(ps≡1↓⊣)⊢0,ps  ⍝ find cycle
d⍣(c|1E9)⊢ps                     ⍝ part two
