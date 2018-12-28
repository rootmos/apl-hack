s←(↑getfile'07.input')[;6 37]
m←s[;2]{⍺,⊂⍵}⌸s[;1]
m←m⍪↑{⍵,⊂⍬}¨i←m[;1]~⍨∪,s
h←{(1=⍳⍴⍵)/⍵} ⍝ first without fill-element
{⍵,h ⍵~⍨ sa m[;1]/⍨(∧/⍵∊⍨⊢)¨m[;2]}⍣≡⊃i
