pv←{⍺⍺/¨⍵⊂⍨2|⍳⍴⍵} ⍝ pairwise: +pv 1 2 3 4 ≡ 3 7

f←{'[- :]#'segs⍵}¨getfile'04.input.sorted'
gs←{⍵/⍨⊃,/~1=⍴¨⍵}(⊃,/9=⍴¨f)⊂f
s←⊃∘⊃¨+/¨{(⍺≤⍳60)∧⍵>⍳60}pv¨{⍎¨⊃,/5⌷¨1↓⍵}¨gs
i←{⍎⊃⍵[⊂1 7]}¨gs
m←i{⍺,+/⍵}⌸s
{⍺×⍵⍳⌈/⍵}/m⌷⍨{⍵⍳⌈/⍵}+/¨m[;2]
{⍵×m[⍺;1]}/{⊃⍸⍵∊⌈/,⍵}↑m[;2]
