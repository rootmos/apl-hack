#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

collatz ← {⍺←1 ⋄ ⍵=1:⍺ ⋄ 0=2|⍵:(⍺+1)∇⍵÷2 ⋄ (⍺+1)∇1+3×⍵ }
l⍳⌈/l←collatz¨n←⍳1E6
