+/{~∨/,(n∘.≠n←⍳⍴x)∧x∘.≡x←' 'split⍵}¨getfile'input_04.txt'

s←{⍵[⍋⍵]}
f←{(s⍺)≡(s⍵)}
+/{~∨/,(n∘.≠n←⍳⍴x)∧x(∘.f)x←' 'split⍵}¨getfile'input_04.txt'
