⍝ vim: kmp=dyalog

)clear
⎕SE.SALT.Load './','utils'

N←1000
ps←#.utils.sieve 1000
b←(ps<N)/ps ⍝ since otherwise n=0 does not generate a prime
as←(⌽-⍳(N-1)),0,⍳(N-1)
drop ← {((⍬≢⊣)¨⍵)/⍵}
pairs←drop ,(as ∘.{ps∊⍨(⍺+⍵+1):⍺ ⍵ ⋄ ⍬} b)
s←{(⍺{ps∊⍨(⍺*2)+(⍺×⍵[1])+⍵[2]}¨⍵)/⍵}
×/⊃⊃2⌷{(⍵[1]+1),⊂(⍵[1]s⊃⍵[2])}⍣{1=⍴⊃⍺[2]}(2 pairs)

