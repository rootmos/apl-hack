#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

trial_division ← {({∧/0≠(1↓⍳(⌊⍵*1÷2))|⍵}¨(1↓⍳⍵))/(1↓⍳⍵)}
trial_division 1000

)save primes
