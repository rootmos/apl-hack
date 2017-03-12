⍝ vim: kmp=dyalog

⎕SE.SALT.Load './','utils'
twd←#.utils.triangle_without_diagonal

P←2÷⍨⊣×1-⍨3×⊢ ⍝ pentagonal number
p←{⍵∊P⍳⌊⍵*÷2} ⍝ test if ⍵ is a pentagonal number
f←{a←P⍺ ⋄ b←P⍵ ⋄ (p b+c)∧(p (c←a+b)):⊂(b c) ⋄ ⍬}
|-/⊃(f twd 2000)
