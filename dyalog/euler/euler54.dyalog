)copy dfns
hs←((10⍴5↑1)⊂⍎)¨##.getfile'euler54.input'
hi←{{⍵[⍒⍵]}⊃¨⍵}                                    ⍝ highest card
ks←{(1⌷[2]x)/⍨⊃,/⍺=⍴¨2⌷[2]x←{⍺ ⍵}⌸⊃¨⍵}             ⍝ ⍺-of-a-kind
p1←{1=⍴p←2ks⍵:p ⋄ ⍬}                               ⍝ one pair
p2←{2=⍴p←2ks⍵:p ⋄ ⍬}                               ⍝ two pairs
tk←{3ks⍵}                                          ⍝ three of a kind
st←{{∧/1=(¯1↓⍵)-(1↓⍵)}x←{⍵[⍒⍵]}⊃¨⍵:1⍴⊃x ⋄ ⍬}       ⍝ straight
fl←{⊃1=⍴∪2⊃¨⍵:hi⍵ ⋄ ⍬}                             ⍝ flush
fh←{(⍴p←p1⍵)∧(⍴t←tk⍵):t,p ⋄ ⍬}                     ⍝ full house (rank by tk first)
fk←{4ks⍵}                                          ⍝ four of a kind
sf←{⍴st⍵:fl⍵ ⋄ ⍬}                                  ⍝ straight flush
rf←{⊃(14 13 12 11 10≡{⍵[⍒⍵]}⊃¨⍵)∧⍴fl⍵:1⍴14 ⋄ ⍬}    ⍝ royal flush
rs←{(rf⍵)(sf⍵)(fk⍵)(fh⍵)(fl⍵)(st⍵)(tk⍵)(p2⍵)(p1⍵)} ⍝ find ranks
c←{a←⊃¨rs⍺ ⋄ b←⊃¨rs⍵ ⋄ a≡b:⊃(x≠y)/(x←hi⍺)>(y←hi⍵) ⋄ ⊃(a≠b)/(a>b)} ⍝ compare hands
+/(c⌿¨hs)
