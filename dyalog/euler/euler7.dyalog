#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

)copy primes
ps←trial_division 200000
1↑(10001-1)↓ps
