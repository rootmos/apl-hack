⎕SE.SALT.Load './','utils'
ps←#.utils.sieve N←10000
C←(1+2×⍳N÷2)~ps
C[0⍳⍨C∊,ps ∘.{⍺+2×⍵*2} ⍳200]
