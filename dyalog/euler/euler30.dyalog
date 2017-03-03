⍝ vim: kmp=dyalog

N←4
+/1↓({⍵=+/N*⍨10⊥⍣¯1⊣⍵}¨⍳m)/⍳m←+/N*⍨N⍴9
