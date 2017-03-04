⍝ vim: kmp=dyalog

⎕SE.SALT.Load './','utils'
ps←#.utils.sieve 1000000
⍴({∧/ps∊⍨10⊥¨(ds⌽⍨⊣)¨⍳⍴ds←10⊥⍣¯1⊣⍵}¨ps)/ps

