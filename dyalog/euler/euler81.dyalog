m←↑⍎¨getfile'./p081_matrix.txt' ⋄ M←⍴m
ppr←{⍵-0 1}¨pr←⍸0,[2](M-0 1)⍴1   ⋄ fr←{((⍵[pr]⌊⍵[ppr]+m[pr])@pr)⍵}
ppl←{⍵+0 1}¨pl←⍸((M-0 1)⍴1),[1]0 ⋄ fl←{((⍵[pl]⌊⍵[ppl]+m[pl])@pl)⍵}
ppd←{⍵-1 0}¨pd←⍸0,[1](M-1 0)⍴1   ⋄ fd←{((⍵[pd]⌊⍵[ppd]+m[pd])@pd)⍵}
ppu←{⍵+1 0}¨pu←⍸((M-1 0)⍴1),[1]0 ⋄ fu←{((⍵[pu]⌊⍵[ppu]+m[pu])@pu)⍵}
+e81←⊃⌽,{fd fr ⍵}⍣≡(m[1;1]@(⊂1 1))M⍴1E100
+e82←⌊⌿¯1↑[2]{fu fd fr ⍵}⍣≡m[;1],[2](M-0 1)⍴1E100
+e83←⊃⌽,{fl fu fd fr ⍵}⍣≡(m[1;1]@(⊂1 1))M⍴1E100
