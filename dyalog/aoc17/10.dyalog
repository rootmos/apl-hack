in←'120,93,0,90,5,80,129,74,1,165,204,255,254,2,50,113' ⋄ N←256
xor←{b←8⍴2 ⋄ b⊥(b⊤⍺)≠(b⊤⍵)}
hx←{⎕IO←0 ⋄ '0123456789abcdef'[16 16⊤⍵]}
f←{0=⍵[1]:⍵[2]⌽⍺ ⋄ (+/⍵)⌽ ⊃,/{⊂⌽⊃⍵}at{1 0} (⊃+/(⊂⍳⍴⍺)=¨1 (⍵[1]+1))⊂⍺} ⍝ rotate first ⍵[1] elements of ⍺ and skip ahead ⍵[1]+⍵[2]
r←{(⍵)f foldl i←ls,¨((⍴ls)×⍺-1)+1-⍨⍳⍴ls}                              ⍝ perform round ⍺ on ⍵
rs←{(-(⍵×(+/ls))+(+/1-⍨⍳⍵×⍴ls))⌽ (1-⍨⍳N)(r⍨)foldl⍳⍵}                  ⍝ ⍵ rounds
ls←⍎in ⋄ ×/2↑ rs 1
ls←(⎕UCS in),17 31 73 47 23 ⋄ ⊃,/hx¨xor/¨(1=16|⍳N)⊂rs 64
