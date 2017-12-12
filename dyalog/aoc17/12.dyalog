⎕IO←0
ps←⍎¨¨2↓¨' 'ltov¨','~⍨¨getfile'input_12.txt'             ⍝ pipes
g←{⊃1⌷{(⊂w~⍨∪(⊃i⌷ps),1↓⊃⍵),⊂w←(i←⊃⊃⍵),⊃1⌷⍵}⍣{0=⍴⊃⍺}⍵,⊂⍬} ⍝ group containing ⍵
⍴g 0
⍴∪⊃¨sa¨g¨⍳⍴ps
