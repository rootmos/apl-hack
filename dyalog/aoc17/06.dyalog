i←11 11 13 7 0 15 5 5 4 4 1 1 7 1 15 11 ⋄ N←⍴i
rd←{⎕IO←0 ⋄ xs←N⍴0 ⋄ xs⊣({xs[⍵]←xs[⍵]+1 ⋄ N|⍵+1}⍣⍵)N|⍺} ⍝ redistribute ⍵ starting at ⍺
f←{n←⍵[i←⍵⍳⌈/⍵] ⋄ x←⍵ ⋄ x[i]←0 ⋄ x+i rd n}
1-⍨⍴cs←((f¨1↑⊢),⊢)⍣((1↑⊣)∊⊢)⊂i
(⍴cs)-(⌽cs)⍳(1↑cs)
