m←↑getfile'example_19.txt' ⍝ map
i←1,⍸' '≠m[1;] ⍝ initial position
ds←(1 0)(0 1)(¯1 0)(0 ¯1) ⍝ directions
Ds←ds⍳-ds ⍝ opposite directions
md←{⊂(c⍴⍨c∊⎕A),⍨(' '≠c←⍵[2;2])×' '≠⍵[ds+⊂2 2]}⌺3 3⊢m ⍝ map directions
nd←{⍵[⍺]:⍺ ⋄ ⊃⍸1=0@(Ds[⍺])⊢⍵} ⍝ next direction (current direction ⍺) (⍵ map directions array)
