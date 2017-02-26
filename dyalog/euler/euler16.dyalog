#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

⍝ naive implementation
+/10⊥⍣¯1⊣2*15

⍝ carry-the-one doubling algorithm
rs←{(-⍴⍵)↑¯1↓⍵} ⍝ shift right with fill element to the left
d←{(rs i)+m-10×i←⌊10÷⍨m←2×⍵}
+/(d⍣1000) (1 350/1 0)
