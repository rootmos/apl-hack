#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

⍝ naive solution for 10
N ← ⍳10000
({∧/0=(⍳10)|⍵}¨N)/N

)clear
)copy primes
ps ← trial_division 1000
∇f ← {
  ⍵=1: 0⍴0
  ⍵ {⍵,f(⍺÷(×/⍵))} (ps {(0=(⍺≤⍵)/⍺|⍵)/((⍺≤⍵)/⍺)} ⍵)
}∇

∧/(⍳1000)=(×/f)¨(⍳1000) ⍝ verify factorization

