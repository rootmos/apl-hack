#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

)copy loaddata
ns←1⌷[2]↑⍎¨¯1↓LoadTEXT'euler67.input'
f←{0=n←¯1+⍴r←⍵:⍵ ⋄ (1⌷ns[n;⍳n])+{⌈/((1-⍵)⌽(⍴r)↑1 1)/r}¨⍳n}
f⍣≡ns[⊃⍴ns;]
