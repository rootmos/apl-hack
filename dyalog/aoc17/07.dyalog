ns←{⍵[1],(⍎⊃⍵[2]),⊂2↓⍵}¨ls←' 'ltov¨getfile'input_07.txt' ⋄ N←⍴ns
cs←{⊃⍵[3]}                         ⍝ children of node ⍵
pn←{ns/⍨((⊂⊃⍵)∊(cs⊢))¨ns}          ⍝ parent node of ⍵
⊃r←⊃(pn⊃)⍣{~⍴pn⊃⍺}ns               ⍝ root node
fn←{⊃ns/⍨(⍵≡⊃)¨ns}                 ⍝ fetch node with name ⍵
wo←{0=⍴cs⍵:⍵[2] ⋄ ⍵[2]++/∇∘fn¨cs⍵} ⍝ weight of node ⍵
∇f←{                               ⍝ find unbalanced sub-tree and the desired weight
  ws←(⊣,(⊂⊢))⌸wo∘fn¨cs⍵            ⍝ weight -> child indexes
  i←1⍳⍨(⊃⍴)¨ws[;2]                 ⍝ the row with only one child
  uc←fn⊃ws[⊂(i 2) 1]⌷cs⍵           ⍝ unbalanced child
  uc,ws[1+2|i;1]                   ⍝ append the desired weight
}∇
b←{1=⍴∪wo∘fn¨cs⍵}                  ⍝ node ⍵ is balanced
n[2]+n[4]-wo n←f⍣(b⊣)r             ⍝ iterate until node is balanced
