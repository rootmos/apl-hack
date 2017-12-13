is←↑⍎¨':'~⍨¨getfile'input_13.txt' ⍝ initial state
f←⍸0=(2×is[;2]-1)|is[;1]+⊢        ⍝ rows where packet is caught
+/×/is[f 0;]
(1+⊢)⍣{⍬≡f⍺}0
