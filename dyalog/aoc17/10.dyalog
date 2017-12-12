⎕IO←0 ⋄ in←'120,93,0,90,5,80,129,74,1,165,204,255,254,2,50,113' ⋄ N←256
xor←{b←8⍴2 ⋄ b⊥(b⊤⍺)≠(b⊤⍵)}                     ⍝ 8-bit XOR
hx←{'0123456789abcdef'[16 16⊤⍵]}                ⍝ hex encoding of 8-bit integer ⍵
f←{(+/⍵)⌽ ⊃,/ (⌽¨@(0⍴⍨0<⊃⍵)) (⊃(⊂⍳N)∨.=0,⊃⍵)⊂⍺} ⍝ rotate first ⍵[0] elements of ⍺ and skip ahead ⍵[0]+⍵[1]
r←{(⍺)f foldl ls,¨(M×⍵)+⍳M}                     ⍝ perform round ⍵ on ⍺
rs←{(-(⍵×+/ls)++/⍳⍵×M)⌽ (⍳N)(r)foldl⍳⍵}         ⍝ ⍵ rounds
M←⍴ls←⍎in                      ⋄ ×/2↑ rs 1
M←⍴ls←(⎕UCS in),17 31 73 47 23 ⋄ ⊃,/hx¨xor/¨(1=16|1+⍳N)⊂rs 64
