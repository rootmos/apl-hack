⍝ vim: kmp=dyalog

⎕SE.SALT.Load './','utils'
ps←#.utils.sieve 1000

N←1000
bs←(ps<N)/ps ⍝ otherwise n=0 does not generate a prime
as←N-⍨⍳1-⍨2×N
drop←{((⍬≢⊣)¨⍵)/⍵}
n1←{ps∊⍨(⍺+⍵+1):⍺ ⍵⋄⍬} ⋄ pairs←drop,(as∘.n1 bs) ⍝ all pairs such that n=1 generate a  prime
s←{(⍺{ps∊⍨(⍺*2)+(⍺×⍵[1])+⍵[2]}¨⍵)/⍵}  ⍝ select pairs from ⍵ such that ⍺ generates a prime
×/⊃⊃2⌷{(⍵[1]+1),⊂(⍵[1]s⊃⍵[2])}⍣{1=⍴⊃⍺[2]}(2 pairs) ⍝ iterate until only one pair is left
