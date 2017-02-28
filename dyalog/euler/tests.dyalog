#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

)copy salt
enableSALT
⎕SE.SALT.Load './','utils'

)cs utils

+split_test_1 ← (1 1)(2 2 2)(3 3 3 3) ≡ 0 split 1 1 0 2 2 2 0 3 3 3 3
+split_test_2 ← 'aa' 'bbb' ≡ ' ' split 'aa bbb'
+split_test_3 ← ⍬≡' ' split ''
+split_test_4 ← ⍬≡' ' split ⍬

+isqrt_test ← 1 1 1 2 2 2 2 2 3 ≡ isqrt 1 2 3 4 5 6 7 8 9

+test_trial_division←(trial_division 50)≡2 3 5 7 11 13 17 19 23 29 31 37 41 43 47
+test_sieve ← (sieve n)≡(trial_division n←1000)
+test_factorize ← n≡(×/factorize_with_sieve)¨n←(⍳10000)

+test_divisors ← (divisors_trial_division¨n)≡divisors_with_sieve¨n←⍳10000

)cs
)copy dfns
##.cmpx '#.utils.trial_division 10000' '#.utils.sieve 10000'
ps1k←#.utils.sieve #.utils.isqrt 1000
ps20k←#.utils.sieve #.utils.isqrt 20000
##.cmpx '#.utils.divisors_trial_division¨⍳1000' '{ps1k #.utils.divisors ⍵}¨⍳1000'
##.cmpx '#.utils.divisors_trial_division¨⍳20000' '{ps20k #.utils.divisors ⍵}¨⍳20000'
##.cmpx '#.utils.divisors_trial_division¨⍳40000' '{ps20k #.utils.divisors ⍵}¨⍳40000'

)off
