⎕IO←0
w←{((⊂'RLUD'),⊂⎕D)words{⍵/⍨~','=⍵}⍵}¨getfile'03.input'
f←{d←⍵[0] ⋄ n←⍎1↓⍵ ⋄ d='R':n,0 ⋄ d='L':-n,0 ⋄ d='U':0,n ⋄ d='D':0,-n }
E←{{(⊂⍺),⊂⍵}ep(⊂0,0),(+\f¨⍵)}¨w ⍝ edges
d←{⊃{(0≠⍵)∧⍵÷⍵}-/⍵} ⍝ direction
q←{⍵≡1⌷{⍵[⍋⍵;]}↑⍺,⊂⍵} ⍝ line-segment membership test
x←{(A←d⍺)≡(B←d⍵): ⍬ ⋄ X←(⊃⍺)+A×⊃(⌹⍉2 2⍴A,-B)+.×⊃⍵-⍺ ⋄ (⍵ q X)∧(⍺ q X):X ⋄ ⍬} ⍝ intersection
⌊/{+/|⍵}¨{⍵/⍨~{(0 0≡⍵)∨⍬≡⍵}¨⍵},(⊃E[0])∘.x(⊃E[1]) ⍝ 5319
