rns←sa∪⊃¨ls←' 'ltov¨getfile'input_08.txt'    ⍝ register names
opn←(1⍴'>') (1⍴'<') '>=' '==' '<=' '!='      ⍝ operator names
ops←'>' '<' '≥' '=' '≤' '≠'                  ⍝ operators
r←(⍴rns)⍴0                                   ⍝ initial registers
∇f←{
  ~⍎(⍕r[rns⍳⍵[5]]),ops[opn⍳⍵[6]],⊃⍵[7]:r     ⍝ evaluate condition
  r[rns⍳⍵[1]]+←1 ¯1['inc' 'dec'⍳⍵[2]]×⍎⊃⍵[3] ⍝ modify register
  r                                          ⍝ return current registers
}∇
+b←⌈/⌈/¨f¨ls
+a←⌈/r
