⎕IO←0
il←','ltov⊃getfile'input_16.txt'
dm←{'s'=t←⊃⍵:t,⍎1↓⍵ ⋄ a←'/'ltov 1↓⍵ ⋄ t='x':t,⍎¨a ⋄ t='p':t,⊃¨a}¨il
s←(-⊢)⌽⊣ ⋄ x←{⍺[⌽⍵]@⍵⊢⍺} ⋄ p←⊣x⍳        ⍝ move fns
d←{⍵ {⍺(⍎⊃⍵)1↓⍵} foldl dm}              ⍝ dance
{⍵[1,1E9|⍨⍴⍵]} {∪⍵,⊂d⊃⌽⍵}⍣≡ ⊂16↑lcase⎕A ⍝ find cycle and find answers
