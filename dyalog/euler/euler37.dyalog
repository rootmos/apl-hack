⍝ vim: kmp=dyalog

⎕SE.SALT.Load './','utils'
ps←#.utils.sieve 1000000

+/4↓({ds←10⊥⍣¯1⊣⍵ ⋄ ns←⍳¯1+⍴ds ⋄ f←{ps∊⍨10⊥⍵↓ds} ⋄ ∧/(f¨ns),f¨-ns}¨ps)/ps
