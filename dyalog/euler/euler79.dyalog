)copy dfns
di←10⊥⍣¯1⊣ ⍝ digits
ch←{⍺←-1 ⋄ cs←((⍵⍴2)⊤⊣)¨⍳2*⍵ ⋄ (m←⍺)≥0:({m=+/⍵}¨cs)/cs ⋄ cs} ⍝ choose
ps←{(⊂⍵){⍵/⍺}¨2ch⍴⍵} ⍝ all pairs
+cs←⊃,/(ps∘di∘⍎)¨getfile'p079_keylog.txt'
∨/(cs∊⍨∘⊂⌽)¨cs ⍝ conflicting constraints: no

as←(⊃,/1↑¨cs) ⋄ bs←(⊃,/1↓¨cs)
f←{n←(⍴x←∪⍵) ⋄ n=1:(⊂x,⍺),n ⋄ ⍺,n}
xs←bs f⌸as ⍝ dict: digits -> # other digits the digit's constrained to preceede
10⊥⊃,/(1⌷[2]xs)[⍋2⌷[2]xs] ⍝ sort keys by values
