f←{(⍵[2]↓(x↓⍨-⊃⍵)),⊂(x↑⍨-⊃⍵),⊂⍵[2]↑x←∇⍣(⊃⍵)⊢2↓⍵}
+/⍣≡↑⍣≡g←f⍎⊃getfile'08.input'
{1=⍴⍵:+/⊃⍵ ⋄ +/(0,⍨∇¨¯1↓⍵)⌷⍨(⍴⍵)⌊¨¯1↑⍵}⊃g
