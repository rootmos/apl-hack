m←↑⍎¨getfile'./p081_matrix.txt' ⋄ M←⍴m
ds←2 2⍴1 0 0 1                          ⍝ directions
np←{{⍵/⍨∧/¨0≤M-¨⍵} ↓⍵+[2]ds}            ⍝ next positions
pp←{{⍵/⍨∧/¨0<⍵} ↓⍵+[2]-ds}              ⍝ previous positions
gs←1↓⌽1↓{(⊂∪⊃,/np¨⊃⍵),⍵}⍣{0=⍴⊃⍺}⊂⊂1 1   ⍝ generations
⊃⌽, m {(⌊/⍺[pp⍵])(+@(⊂⍵))⍺} foldl ⊃,/gs
