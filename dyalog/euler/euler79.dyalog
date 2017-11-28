)copy dfns
di←10⊥⍣¯1⊣ ⍝ digits
ch←{⍺←-1 ⋄ cs←((⍵⍴2)⊤⊣)¨⍳2*⍵ ⋄ (m←⍺)≥0:({m=+/⍵}¨cs)/cs ⋄ cs} ⍝ choose
ps←{(⊂⍵){⍵/⍺}¨2ch⍴⍵} ⍝ all pairs
+cs←⊃,/(ps∘di∘⍎)¨getfile'p079_keylog.txt'
∨/(cs∊⍨∘⊂⌽)¨cs ⍝ conflicting constraints: no
