be←↑(↑'/'ltov⊢)¨¨(⊂⊂1 3)⌷¨' 'ltov¨getfile'input_21.txt' ⍝ artist's book of enhancement rules
s←{0=2|⊃⍴⍵:(⊂⊢)⌺(2 2⍴2)⊢⍵ ⋄ ((⊂⊢)⌺3 3⊢⍵)[¯1+3×⍳3÷⍨⍴⍵]}  ⍝ split into 2x2 or 3x3 subarrays
l←⊃ be[;2](⌿⍨) be[;1]∊ (⊢,⍉¨)∘(⊢,⊖¨)∘(⊢,⌽¨)∘⊂           ⍝ lookup in book
≢⍸'#'= ⊃∘(⍪/,/)∘(l¨s)⍣5⊢ i←3 3⍴'.#...####'
≢⍸'#'= ⊃∘(⍪/,/)∘(l¨s)⍣18⊢ i
