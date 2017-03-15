)copy dfns
)copy display

hs←((10⍴5↑1)⊂⍎)¨##.getfile'euler54.input'
q←{⊃,/⍴¨(⊂⊢)⌸⊃¨⍵}                         ⍝ group by number
p1←{1=+/2=q⍵}                             ⍝ one pair
p2←{2=+/2=q⍵}                             ⍝ two pairs
t←{+/3=q⍵}                                ⍝ three of a kind
st←{{∧/1=(¯1↓⍵)-(1↓⍵)}{⍵[⍒⍵]}⊃¨⍵}         ⍝ straight
fl←{1=⍴∪2⊃¨⍵}                             ⍝ flush
fh←{(t⍵)∧p1⍵}                             ⍝ full house
f←{+/4=q⍵}                                ⍝ four of a kind
sf←{(st⍵)∧fl⍵}                            ⍝ straight flush
rf←{(14 13 12 11 10≡{⍵[⍒⍵]}⊃¨⍵)∧fl⍵}      ⍝ royal flush
