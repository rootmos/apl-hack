sl←{¯1+2×⍵} ⍝ side length of square ⍵
py←{⍵=1:1⍴0 ⋄ s0,(-s1),(-s0←(⍵-1)-⍳sl⍵-1),s1←(sl⍵)⍴(⍵-1)}
px←{⍵=1:1⍴0 ⋄ 1⌽s1,s0,(-s1←(sl⍵)⍴(⍵-1)),-s0←(⍵-1)-⍳sl⍵-1}
ds←⊃,/{(|py⍵)+|px⍵}¨⍳1000
⍝ds[1] ⋄ ds[12] ⋄ ds[1024]
+a←ds[368078]

m←(M←2⍴sl N←5)⍴0 ⋄ C←⌈M÷2
ps←(⊃,/py¨⍳N)(C+⊣,⊢)¨(⊃,/px¨⍳N) ⍝ positions in the spiral
m[⊂C]←1
+b←xs⌷⍨1⍳⍨368078<xs←{+m[⊂⍵]←+/(m⌷⍨⊢)¨M ad⍵}¨1↓ps
⍝m
