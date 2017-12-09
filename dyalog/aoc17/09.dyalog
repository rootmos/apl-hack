cn←⊢∧(~¯1⌽⊢)                     ⍝ cancel next
sm←⊢∨(¯1⌽⊢)                      ⍝ smear 1s
dw←{(~⍺⍺⍵)/⍵}                    ⍝ drop where
rc←(sm∘cn '!'=⊢)dw               ⍝ conservatively remove cancelled chars
gi←{¯1⌽ cn (~1⌽'>'=⍵)∧('<'=⍵)}dw ⍝ conservatively clean one interior garbage char
s←{+/('{'=⍵)×+\('{'=⍵)+(-'}'=⍵)} ⍝ score
s (sm'<'=⊢)dw cl←(gi⍣≡) l←(rc⍣≡) ⊃getfile'input_09.txt'
(⍴l)-⍴cl
