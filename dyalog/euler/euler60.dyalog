)copy dfns
⎕SE.SALT.Load './','utils'
⍴ps←#.utils.sieve 10000
p←1##.pco⊣
t←{⍵<⌈/⍺:0 ⋄ a←⍕¨⍺ ⋄ b←⍕⍵ ⋄ ∧/((p∘⍎b,⊣)¨a),(p∘⍎b,⍨⊣)¨a}
g←{(⍵,⊣)¨ps/⍨(⍵t⊣)¨ps}
⍴⎕←g2←⊃,/g¨ps
⍴⎕←g3←⊃,/g¨g2
⍴⎕←g4←⊃,/g¨g3
+/⎕←⊃g4[⊃⍋+/¨g4]
⍴⎕←g5←⊃,/g¨g4
+/⎕←⊃g5[⊃⍋+/¨g5]
