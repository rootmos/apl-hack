#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

)copy utils

ps←sieve 100
{+/{(⍵≠n)/⍵}{⍺}⌸{×/((m⍴2)⊤⍵)/qs}¨⍳2*m←⍴qs←ps factorize (n←⍵)}¨1↓⍳10000

