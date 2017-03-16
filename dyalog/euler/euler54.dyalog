)copy dfns
hs←((10⍴5↑1)⊂⍎)¨##.getfile'euler54.input'
hi←{{⍵[⍒⍵]}⊃¨⍵}                                    ⍝ highest card
ps←{(1⌷[2]x)/⍨⊃,/2=⍴¨2⌷[2]x←{⍺ ⍵}⌸⊃¨⍵}             ⍝ pairs
p1←{1=⍴p←ps⍵:p ⋄ ⍬}
p2←{2=⍴p←ps⍵:p ⋄ ⍬}
tk←{(1⌷[2]x)/⍨⊃,/,3=⍴¨2⌷[2]x←{⍺ ⍵}⌸⊃¨⍵}            ⍝ three of a kind
st←{{∧/1=(¯1↓⍵)-(1↓⍵)}x←{⍵[⍒⍵]}⊃¨⍵:1⍴⊃x ⋄ ⍬}       ⍝ straight
fl←{⊃1=⍴∪2⊃¨⍵:hi⍵ ⋄ ⍬}                             ⍝ flush
fh←{(⍴p←p1⍵)∧(⍴t←tk⍵):t,p ⋄ ⍬}                     ⍝ full house (rank by tk first)
fk←{(1⌷[2]x)/⍨⊃,/,4=⍴¨2⌷[2]x←{⍺ ⍵}⌸⊃¨⍵}            ⍝ four of a kind
sf←{⍴st⍵:fl⍵ ⋄ ⍬}                                  ⍝ straight flush
rf←{⊃(14 13 12 11 10≡{⍵[⍒⍵]}⊃¨⍵)∧⍴fl⍵:1⍴14 ⋄ ⍬}    ⍝ royal flush
rs←{(rf⍵)(sf⍵)(fk⍵)(fh⍵)(fl⍵)(st⍵)(tk⍵)(p2⍵)(p1⍵)} ⍝ find ranks
c←{a←⊃¨rs⍺ ⋄ b←⊃¨rs⍵ ⋄ a≡b:⊃(x≠y)/(x←hi⍺)>(y←hi⍵) ⋄ ⊃(a≠b)/(a>b)} ⍝ compare hands
+/(c⌿¨hs)
