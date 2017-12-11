ds←((3*÷2)1÷2)×[2]6 2⍴0 2 0 ¯2 1 1 ¯1 1 1 ¯1 ¯1 ¯1 ⍝ hexagon directions
cd←{ds[(∊'n')(∊'s')'ne' 'nw' 'se' 'sw'⍳⊂⍵;]}       ⍝ convert to direction
gs←{ds[⊃⍋ +/2*⍨⍵-[2]⍺+[2]ds;]}                     ⍝ greedy step from ⍺ towards w wrt euclidean distance
hd←{⊃⍵(⊢+1,(1↓⊢)gs⊣)⍣(1E¯6>∘(+/2*⍨⊢)⍵-(1↓⊣))0 0 0} ⍝ hexagonal distance
hd⊃+/st←cd¨','ltov⊃getfile'input_11.txt'
⌈/hd¨+\st
