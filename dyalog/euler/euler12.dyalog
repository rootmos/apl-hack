#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

)copy utils

⍝ naive implementation
(<\100≤{+/0=(⍳⍵)|⍵}¨ts)/ts←+\⍳1000

⍝ prime factorization implementation
ts←1↓+\⍳20000
ps←sieve (isqrt ⌈/ts)
(<\500≤{×/1+1⌷[2]{⍴⍵}⌸ps factorize ⍵}¨ts)/ts
