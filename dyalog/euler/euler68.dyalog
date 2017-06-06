)copy dfns
⎕IO←0
p5←{1=⍴∪+/(⍵,⍵[5])[⍉0 5 6∘.{⍵+⍺}⍳5]}
pm←{xs←5↑⍵ ⋄ (1↑xs)=(⌊/xs)} ⍝ minimal number of outer numbers should be first
p←{(p5⍵)∧(pm⍵)}
P←{0=⍴⍵:{p⍵:⊂⍵⋄⍬}⍺ ⋄ ⊃,/((⍺,⊣)¨⍵),.∇((1↓⍵⌽⍨⊣)¨⍳⍴⍵)}
mp←⍬P 1+⍳10 ⍝ magic polygons
ss←{⍵[,((⍳10),5)[⍉0 5 6∘.{⍵+⍺}⍳5]]} ⍝ make a "Solution Set"
(⌈nats)/({⊃16=⍴⍵}¨ns)/ns←{⊃,/⍕¨⍵}¨ss¨mp
