)copy dfns
e←⍎⊃##.getfile'euler59.input'
ks←,L∘.,L∘.,L←96+⍳26 ⍝ keys
b←(8⍴2)⊤⊣
xor←{2⊥(b⍺)≠(b⍵)}
s←{+/(69=⍵)∨(101=⍵)∨(116=⍵)∨(84=⍵)} ⍝ word frequency of e and t
d←{k←(⍴⍺)⍴⍵ ⋄ k xor ⍺} ⍝ decrypt
x←({s(e d⍵)}¨ks){⍺(⊂⍵)}⌸ks ⋄ k←⊃⊃⊃x[⊃⍒1⌷[2]x;2] ⋄ +/(e d k)
