⎕IO←0
∇kh←{ ⍝ knot hash
  M←⍴ls←(⎕UCS⍵),17 31 73 47 23
  f←{(+/⍵)⌽ ⊃,/ (⌽¨@(0⍴⍨0<⊃⍵)) (⊃(⊂⍳256)∨.=0,⊃⍵)⊂⍺}
  r←{(⍺)f foldl ls,¨(M×⍵)+⍳M}
  ⊃,/≠/¨(⊂8⍴2)⊤¨(1=16|1+⍳256)⊂ (-(64×+/ls)++/⍳64×M)⌽ (⍳256)r foldl⍳64
}∇
+a←+/,sq←↑{kh'jxqlasbh-',⍕⍵}¨⍳128

⍝ prev pos    pos w/ prev pos
pdp←{⍵-1 0}¨  pd←⍸sq∧¯128↑¯1↓sq
pup←{⍵-¯1 0}¨ pu←⍸sq∧128↑1↓sq
prp←{⍵-0 1}¨  pr←⍸⍉(⍉sq)∧¯128↑¯1↓⍉sq
plp←{⍵-0 ¯1}¨ pl←⍸⍉(⍉sq)∧128↑1↓⍉sq
ds←(pdp pd)(pup pu)(prp pr)(plp pl)    ⍝ directions
f←{d←⊃ds[1?4] ⋄ ((⍵[⊃d[0]])@(⊃d[1]))⍵} ⍝ spread in random direction
g←{(⍵[pdp]≡⍵[pd])∧(⍵[prp]≡⍵[pr])}      ⍝ done
+b←1-⍨⍴∪, (f⍣g) ((1+⍳a)@(⍸sq))sq       ⍝ no regions
