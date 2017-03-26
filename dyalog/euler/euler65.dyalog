i←{⍵=⌊⍵}
p←{i(÷2)*⍨((⍵*2)-1)÷⍺} ⍝ ⍵ is a solution for x in x^2-⍺y^2=1
x←{1+⍣(⍵p⊣)1} ⍝ minimal solution for x when D is ⍵
n⌷⍨xs⍳⌈/xs←x¨n←(⍳7)~((⍳7)*2)
