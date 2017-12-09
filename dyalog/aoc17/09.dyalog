rc←{⍵/⍨~{⍵∨¯1⌽⍵}{⍵∧~¯1⌽⍵}'!'=⍵}          ⍝ remove cancelled chars
gi←{⍵/⍨~{¯1⌽⍵}{⍵∧~¯1⌽⍵}(~1⌽'>'=⍵)∧'<'=⍵} ⍝ clean one garbage char
s←{+/('{'=⍵)×+\('{'=⍵)+(-'}'=⍵)}         ⍝ score
s {(('<'≠⍵)∧('>'≠⍵))/⍵} cl←(gi⍣≡) l←(rc⍣≡) ⊃getfile'input_09.txt'
(⍴l)-⍴cl
