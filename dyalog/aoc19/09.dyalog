⎕IO←0 ⍝ Intcode computer
E99←S←{⍺←0,(⊂⍬),(⊂⍬),0 ⋄ (⊂⍵),⊂⍺} ⋄ Si←{(⊂⍺),⍨¨@(⊂1 2)⊢⍵} ⋄ So←{⊃1⌷⊃1⌷⍵} ⍝ state
Ss←{99=o←100|⍎⊃⍵[⊂0,⍵[⊂1 0]]:'h' ⋄ 3=o:'i' ⋄ 'r'}
r←{M←⍵ ⋄ (⌽(¯1+⍴⍺)↑(-1+⍴⍺)↑⍎¨⊃⍺){⍺=1:⍵ ⋄ ⊃M[⍎⍵]}¨1↓⍺} ⍝ read from memory: ⍺ instruction w/ parameters, ⍵ memory
rp←{{'0'@(⍸'2'=⍵)⊢⍵}¨@0⊢⍺[3]+big¨@(1+⍸2=⌽(¯1+⍴⍵)↑(-1+⍴⍵)↑⍎¨⊃⍵)⊢⍵} ⍝ relative -> position mode, ⍺ state, ⍵ instruction w/ parameters
b←{o←⍺rp⊢4↑(⊃⍺)↓⍵ ⋄ (⍺⍺/(3↑o)r⍵)@(⍎⊃o[3])⊢⍵} ⍝ binary ops
E1←{(4+@0⊢⍺)S(⍺(+big)b⍵)} ⋄ E2←{(4+@0⊢⍺)S(⍺(×big)b⍵)}
E3←{o←⍺rp⊢2↑(⊃⍺)↓⍵ ⋄ 0=⍴⊃⍺[2]:⍺S⍵ ⋄ (2+@0⊢1↓¨@2⊢⍺)S(⍺[⊂2 0])@(⍎⊃o[1])⊢⍵} ⍝ input
E4←{P←(⍺rp⊢2↑(⊃⍺)↓⍵)r⍵ ⋄ (2+@0⊢(⊂P[0]),⍨¨@1⊢⍺)S⍵} ⍝ output
E5←{P←(⍺rp⊢3↑(⊃⍺)↓⍵)r⍵ ⋄ 0≠big⊢P[0]:((⍎⊃P[1])@0⊢⍺)S⍵ ⋄ (3+@0⊢⍺)S⍵} ⍝ jump-if-true
E6←{P←(⍺rp⊢3↑(⊃⍺)↓⍵)r⍵ ⋄ 0=big⊢P[0]:((⍎⊃P[1])@0⊢⍺)S⍵ ⋄ (3+@0⊢⍺)S⍵} ⍝ jump-if-false
E7←{o←⍺rp⊢4↑(⊃⍺)↓⍵ ⋄ (4+@0⊢⍺)S(<big/(3↑o)r⍵)@(⍎⊃o[3])⊢⍵} ⍝ less
E8←{o←⍺rp⊢4↑(⊃⍺)↓⍵ ⋄ (4+@0⊢⍺)S(=big/(3↑o)r⍵)@(⍎⊃o[3])⊢⍵} ⍝ equal
E9←{P←(⍺rp⊢2↑(⊃⍺)↓⍵)r⍵ ⋄ (2+@0⊢(⍎⊃P[0])+@3⊢⍺)S⍵} ⍝ rel base
Ee←{(⊃⍵[1])(⍎'E',⍕100|⍎⊃⍵[⊂0,⍵[⊂1 0]])⊃⍵[0]} ⋄ E←Ee⍣{'h'≡Ss⍺} ⍝ eval
P←{⍵⊆⍨~','=⍵}{'¯'@(⍸⍵='-')⊢⍵} ⍝ parse
M←{(⊂⍺⍴⊂1⍴'0'),⍨¨@0⊢⍵} ⍝ extend memory
⊃So⊢E⊢200M⊢(⊂1⍴'1')Si⊢S⊢P⊃getfile'09.input' ⍝ 3454977209
⊃So⊢E⊢200M⊢(⊂1⍴'2')Si⊢S⊢P⊃getfile'09.input' ⍝ 50120
