⎕SE.SALT.Load './','utils'
ps←#.utils.sieve 10000
s←{ds[⍋ds←⍕⍵]}
f←{∆←⍺-⍵ ⋄ ~ps∊⍨q←⍺+∆:⍬ ⋄ ((s⍺)≡s⍵)∧((s⍺)≡s q):,/⍕¨(⍵,⍺,q) ⋄ ⍬}
f #.utils.triangle_without_diagonal_vector ps
