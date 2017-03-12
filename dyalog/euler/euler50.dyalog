⎕SE.SALT.Load './','utils'
ps←#.utils.sieve N←1000000
f←{N<q←+/⍵:⍬ ⋄ q∊ps:q ⋄ ⍬}
w←{h t←⍵ ⋄ 0=⍴t:⍺ ⋄ (⍺,f h)∇(⊂((1↓h),1↑t)),⊂1↓t}  ⍝ sliding window
no←{⍵+1⍳⍨ps>N÷⍵} ⍝ number of primes to select s.t. sums of an ⍵-tuple ≤ N
g←{qs←(no⍵)↑ps ⋄ ⍬w(⍵↑qs)(⍵↓qs)}
M←⌊(2×N)*÷2 ⍝ a bound on the number of terms that can yield a sum ≤ N (by arithmetic sum)
{⍵=0:⍬ ⋄ 0<⍴x←g⍵:x ⋄ ∇(⍵-1)}M ⍝ recurse downwards on number of terms, stop on first result
