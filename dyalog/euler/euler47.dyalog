⎕SE.SALT.Load './','utils'
ps←#.utils.sieve N←1000
fs←ps #.utils.factorize⊣
1⍳⍨(4⍴4)⍷⊃,/{⍴∪fs⍵}¨⍳200000
