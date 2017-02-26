#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

)copy loaddata
ns←1⌷[2]↑⍎¨¯1↓LoadTEXT'euler67.input'
f←{n←⍵ ⋄ ns[n;⍳n]←ns[n;⍳n]+{⌈/((1-⍵)⌽(n+1)↑1 1)/ns[(n+1);⍳(n+1)]}¨⍳n}
f¨⌽⍳¯1+1⌷⍴ns
⊃ns
