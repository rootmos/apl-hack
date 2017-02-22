#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

)copy primes

n ← 600851475143
ps ← trial_division⌊n*1÷2
¯1↑(0=ps|n)/ps
