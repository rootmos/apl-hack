⎕SE.SALT.Load './','utils'
ps←#.utils.sieve 1000000
n←6
choices←{⍵[⍋+/¨⍵]}((n⍴2)⊤⊣)¨⍳1-⍨2*n
qs←{⍵/⍨⊃,/n=⍴¨⍵}10⊥⍣¯1¨ps
p←{1=⍴∪⍺/⍵:10⊥⍵ ⋄ ⍬}
{⍵/⍨1⌷[2]↑8=⍴¨⍵}⊃,/{2⌷[2](((~⍵)/⊣)¨qs){⍺ (⊃,/⍵)}⌸(⍵p⊣)¨qs}¨choices
