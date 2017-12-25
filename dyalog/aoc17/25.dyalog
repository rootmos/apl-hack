rbp←{⍵⊂⍨ 1@1⊢ ¯1⌽⊃,/0=⍴¨⍵}getfile'input_25.txt'                      ⍝ raw blueprint
is←¯1↓⊃4⌷' 'ltov⊃⊃rbp                                                ⍝ initial state
sn←⍎⊃6⌷' 'ltov⊃2⌷⊃rbp                                                ⍝ no steps
pd←{1 ¯1['left' 'right'⍳⍵]}                                          ⍝ parse direction
bp←↑{⍵[1],↓⍉↑(⊂⍎¨⍵[3 7]),(⊂pd⍵[4 8]),⊂⍵[5 9]}¨{¯1↓⊃⌽' 'ltov⍵}¨¨1↓rbp ⍝ blueprint
li←{⊃bp[bp[;1]⍳⍺;2+⍵]}                                               ⍝ lookup instruction for state ⍺ wrt current value ⍵
t←10000⍴0 ⋄ ip←9000                                                  ⍝ initial tape and initial position
{t[⍵[2]]←⊃i←⍵[1]li t[⍵[2]] ⋄ i[3],⍵[2]+i[2]}⍣sn⊢(⊂is),ip ⋄ +/t
