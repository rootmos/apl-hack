⎕IO←0
∇kh←{ ⍝ knot hash
  M←⍴ls←(⎕UCS⍵),17 31 73 47 23
  f←{(+/⍵)⌽ ⊃,/ (⌽¨@(0⍴⍨0<⊃⍵)) (⊃(⊂⍳256)∨.=0,⊃⍵)⊂⍺}
  r←{(⍺)f foldl ls,¨(M×⍵)+⍳M}
  ⊃,/≠/¨((8⍴2)⊤⊢)¨(1=16|1+⍳256)⊂ (-(64×+/ls)++/⍳64×M)⌽ (⍳256)r foldl⍳64
}∇
+a←+/,sq←↑{kh 'jxqlasbh-',⍕⍵}¨⍳128

⍝ pos w/ prev            prev pos          spread in direction
md←⍸sq∧¯128↑¯1↓sq      ⋄ mdp←{⍵-1 0}¨md  ⋄ fd←{(⍵[mdp]@md)⍵}
mu←⍸sq∧128↑1↓sq        ⋄ mup←{⍵-¯1 0}¨mu ⋄ fu←{(⍵[mup]@mu)⍵}
mr←⍸⍉(⍉sq)∧¯128↑¯1↓⍉sq ⋄ mrp←{⍵-0 1}¨mr  ⋄ fr←{(⍵[mrp]@mr)⍵}
ml←⍸⍉(⍉sq)∧128↑1↓⍉sq   ⋄ mlp←{⍵-0 ¯1}¨ml ⋄ fl←{(⍵[mlp]@ml)⍵}
f←{i←1?4 ⋄ i=0:fd⍵ ⋄ i=1:fu⍵ ⋄ i=2:fr⍵ ⋄ fl⍵} ⍝ random direction
g←{(⍵[mdp]≡⍵[md])∧(⍵[mrp]≡⍵[mr])}             ⍝ done
+b←1-⍨⍴∪, (f⍣g) ((1+⍳a)@(⍸sq))sq              ⍝ no regions
