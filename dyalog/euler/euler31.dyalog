⍝ vim: kmp=dyalog

+coins←⌽1 2 5 10 20 50 100 200
z←(⍴coins)⍴0
g←z{⍵+<\coins≤⍺-+/⍵×coins}⍣≡⍨⊣ ⍝ greedy choice
