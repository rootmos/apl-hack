T←2÷⍨⊣×1+⊢    ⍝ triangular number
P←2÷⍨⊣×1-⍨3×⊢ ⍝ pentagonal number
H←⊣×1-⍨2×⊢    ⍝ hexagonal number
(H⍳N)∩(P⍳N)∩(T⍳N←100000)
