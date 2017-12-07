ns←{⍵[1],(⍎⊃⍵[2]),⊂2↓⍵}¨ls←' 'ltov¨getfile'input_07.txt' ⋄ N←⍴ns
po←{⍺[1]∊⊃⍵[3]}                   ⍝ node ⍵ is parent of node ⍺
rn←{0=+/po⍵}                      ⍝ node ⍵ is a root node in
pn←{N<i←1⍳⍨(⍵po⊢)¨ns:⍬ ⋄ ⊃ns[i]}  ⍝ parent node of ⍵
⊃r←(pn⍣{⍬≡pn⍺})⊃ns                ⍝ root node
fn←{⊃ns[1⍳⍨(⍵≡(⊃⊢))¨ns]}          ⍝ fetch node with name ⍵
ln←{0=⍴⊃⍵[3]}                     ⍝ ⍵ is a leaf node
wo←{ln⍵:⍵[2] ⋄ ⍵[2]++/∇¨fn¨⊃⍵[3]} ⍝ weight of node ⍵
b←{ln⍵:1 ⋄ ∧/=ep wo¨fn¨⊃⍵[3]}     ⍝ node ⍵ is balanced
∇f←{                              ⍝ find unbalanced sub-tree and the desired weight
  i←1⍳⍨1⌷⍉ws←{(⍴⍵),⍺}⌸wo¨fn¨⊃⍵[3]
  (fn⊃i⌷⊃⍵[3]),ws[1+2|i;2]
}∇
x[2]+x[4]-wo x←(f⍣(b⊣))r          ⍝ iterate until node is balanced
