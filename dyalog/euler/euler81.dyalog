)copy dfns

m←↑⍎¨getfile'm.txt' ⋄ M←⍴m
i←⊂(⊂1 1),1 1⌷m
np←{((∧/M≥⊣)¨qs)/qs←(⍵+⊣)¨((⊂1 0),(⊂0 1))} ⍝ next positions
z←⊣{(⊂⍺),⍵}¨⊢ ⍝ zip
f←{p←⊃⍵[1] ⋄ 0=⍴qs←np p:⍬ ⋄ qs z ⍵[2]+{⍵⌷m}¨qs} ⍝ do steps
g←{xs[⍋{⍵[2]}¨xs←(f⊃⍵),1↓⍵]} ⍝ apply next iteration & sort
d←{M≡⊃⊃⍺} ⍝ done
2⌷⊃(g⍣d)i
