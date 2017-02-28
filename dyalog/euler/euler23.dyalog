⍝ vim: kmp=dyalog

⎕SE.SALT.Load './','utils'
N←28123
ps←#.utils.sieve #.utils.isqrt N
ds←{ps #.utils.divisors ⍵}
a←({⍵<+/¯1↓ds⍵}¨ns)/ns←⍳N
+/(~{∨/a∊⍵-a}¨ns)/ns
