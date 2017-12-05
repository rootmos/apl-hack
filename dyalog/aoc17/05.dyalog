js←⍎¨getfile'input_05.txt' ⋄ N←⍴js
2⌷{js[p]←1+j←js[p←⊃⍵] ⋄ ⍵+j,1}⍣(((1>⊢)∨N<⊢)∘⊃⊣)1 0

js←⍎¨getfile'input_05.txt' ⋄ N←⍴js
2⌷{js[p]←3(⊢+>+(-≤))j←js[p←⊃⍵] ⋄ ⍵+j,1}⍣(((1>⊢)∨N<⊢)∘⊃⊣)1 0
