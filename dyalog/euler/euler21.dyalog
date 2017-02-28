#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

am←{⍵=1:1 ⋄ +/(0=n|⍵)/n←⍳(⍵-1)}
+/({(b≠⍵)∧⍵=am(b←am⍵)}¨N)/N←⍳10000
