⎕IO←0
p3←{1=⍴∪+/(⍵,⍵[3])[⍉0 3 4∘.{⍵+⍺}⍳3]}
pm←{xs←3↑⍵ ⋄ (1↑xs)=(⌊/xs)} ⍝ minimal number of outer numbers should be first
p←{(p3⍵)∧(pm⍵)}
P←{0=⍴⍵:{p⍵:⊂⍵⋄⍬}⍺ ⋄ ⊃,/((⍺,⊣)¨⍵),.∇((1↓⍵⌽⍨⊣)¨⍳⍴⍵)}
mp←⍬P(4 6 5 3 2 1) ⍝ magic 3-polygons
ss←{⍵[0 3 4 1 4 5 2 5 3]} ⍝ make a "Solution Set"
⌈/(10⊥⊣)¨ss¨mp
