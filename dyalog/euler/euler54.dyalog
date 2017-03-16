)copy dfns
hs←((10⍴5↑1)⊂⍎)¨##.getfile'euler54.input'
hi←{⍵[⍒⍵]}⊃¨                                       ⍝ rank by highest value
ks←{(1⌷x)/⍨⊃,/⍺=⍴¨2⌷x←⍉{⍺ ⍵}⌸⊃¨⍵}                  ⍝ ⍺-of-a-kind
p1←{(1=⍴⍵)/⍵}2ks⊣                                  ⍝ one pair
p2←{(2=⍴⍵)/⍵}2ks⊣                                  ⍝ two pairs
tk←3ks⊣                                            ⍝ three of a kind
st←{x/⍨{∧/1=(¯1↓⍵)-(1↓⍵)}x←hi⍵}                    ⍝ straight
fl←{(hi⍵)/⍨⊃1=⍴∪2⊃¨⍵}                              ⍝ flush
fh←{(t,p)/⍨(⍴p←p1⍵)∧(⍴t←tk⍵)}                      ⍝ full house (rank by tk first)
fk←4ks⊣                                            ⍝ four of a kind
sf←{(fl⍵)/⍨⍴st⍵}                                   ⍝ straight flush
rf←{(fl⍵)/⍨14 13 12 11 10≡hi⍵}                     ⍝ royal flush
rs←{(rf⍵)(sf⍵)(fk⍵)(fh⍵)(fl⍵)(st⍵)(tk⍵)(p2⍵)(p1⍵)} ⍝ find ranks
f∆←{⊃(⍺≠⍵)/(⍺>⍵)}                                  ⍝ select first difference
c←{a←⊃¨rs⍺ ⋄ b←⊃¨rs⍵ ⋄ a≡b:(hi⍺)f∆(hi⍵) ⋄ a f∆ b}  ⍝ compare hands
+/(c⌿¨hs)
