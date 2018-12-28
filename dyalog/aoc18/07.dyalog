s←(↑getfile'07.input')[;6 37]
m←s[;2]{⍺,⊂⍵}⌸s[;1]
m←m⍪↑{⍵,⊂⍬}¨i←m[;1]~⍨∪,s
h←{(1=⍳⍴⍵)/⍵} ⍝ first without fill-element
p←{⍵~⍨sa m[;1]/⍨(∧/⍵∊⍨⊢)¨m[;2]} ⍝ next steps
{⍵,h p⍵}⍣≡⊃i
f←60+⎕A⍳m[;1] ⋄ x←⊂(i∊⍨m[;1])×C←f⌷⍨m[;1]⍳⊃i
2⌷{⍵+1,⍨⊂m[;1]∊5↑p(f=⊃⍵)/m[;1]}⍣((⊃⊣)≡(⊃⊢))x,C-1
