⍝ vim: kmp=dyalog

p←{d≡⌽d←⍺⊥⍣¯1⊣⍵}
+/({(2p⍵)∧(10p⍵)}¨n)/n←⍳1-⍨10*6
