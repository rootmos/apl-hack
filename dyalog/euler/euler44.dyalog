⍝ vim: kmp=dyalog

P←2÷⍨⊣×1-⍨3×⊢ ⍝ pentagonal number
p←{⍵∊P⍳⌊⍵*÷2} ⍝ test if ⍵ is a pentagonal number
f←{a←P⍺ ⋄ b←P⍵ ⋄ (p b+c)∧(p (c←a+b)):⊂(b c) ⋄ ⍬}
|-/⊃⍬{2000=⍵[1]:⍺ ⋄ ⍵[1]=⍵[2]: ⍺∇((⍵[1]+1) 1) ⋄ (⍺,⍵[1]f⍵[2])∇(⍵[1] (⍵[2]+1))}1 1
