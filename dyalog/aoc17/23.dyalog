is←{∧/⍵∊'-',⎕D:⍎⍵ ⋄ 1=⍴⍵:⊃⍵ ⋄ ⍵}¨¨3↑¨' 'ltov¨getfile'input_23.txt'
rns←∪ '⍳⍺', (⊢(/⍨)(lcase⎕A)∊⍨⊢) 2⌷¨is   ⍝ register names (⍳ pc) (⍺ accumulator)
r←rns⍳⊢ ⋄ pc←r'⍳' ⋄ A←r'⍺'              ⍝ index of register ⍵ and special registers
eo←r⌷,                                  ⍝ evaluate operand
set←{(⍺eo⍵[3])@(r⍵[2])⊢⍺}
sub←{(⍺eo⍵[3])-⍨@(r⍵[2])⊢⍺}
mul←{1+@A⊢ (⍺eo⍵[3])×@(r⍵[2])⊢⍺}        ⍝ accumulate multiplications
jnz←{((0≠⍺eo⍵[2])×¯1+⍺eo⍵[3])+@pc⊢⍺}
go←{i←⊃is[⍵[pc]] ⋄ 1+@pc⊢ ⍵(⍎⊃i)i}      ⍝ evaluate instruction at pc
A⌷ go⍣(~(⍳⍴is)∊⍨(pc⌷⊣))⊢ 1@pc⊢(⍴rns)⍴0  ⍝ part one
+/ 0pco¨107900+17×0,⍳(124900-107900)÷17 ⍝ part two
