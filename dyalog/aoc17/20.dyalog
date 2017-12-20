i←⊖∘↑¨(⍎¨','ltov⊢)¨¨(⊂⊂2 4 6)⌷¨(⊂'<>')ltov¨getfile'input_20.txt'
mr←⊢(⌿⍨)((⌊/=⊢)⌷∘⍉)                        ⍝ ⍺mr⍵ select minimal rows of ⍵ wrt column ⍺
¯1+⊃⌽ 2mr 1mr (⊢,(⍳1⌷⍴)) ↑(+/|)¨i          ⍝ minimize wrt acceleration then wrt velocity
⍴ (⊢(/⍨)(1=+/)∘(⊢∘.≡⊢)∘(3⌷¨⊢))∘(+⍀¨)⍣100⊢i ⍝ run tick and remove collisions
