ds←(1 0)(0 1)(¯1 0)(0 ¯1)                 ⍝ directions
ml←(⊂⍬)@{~⍵∊⎕A}⊢ m←↑getfile'input_19.txt' ⍝ map labels
md←{⊂⍵[2;2]×⍵[ds+⊂2 2]}⌺3 3⊢m≠' '         ⍝ map directions
ip←⊂1,⍸m[1;]≠' '                          ⍝ initial position
nd←{(ds⍳⍺)⌷v←⊃md[⍵]:⍺ ⋄ 1⍴ds[(⍸v)~ds⍳-⍺]} ⍝ next direction wrt current direction ⍺ and current position ⍵
2↓ {d@1⊢ (1,d←⍵[1]nd⍵[2])+@3 2⊢ ml[⍵[2]],⍨¨@4⊢ ⍵}⍣(2⌷≡¨) ds[1],ip,0,⊂⍬
