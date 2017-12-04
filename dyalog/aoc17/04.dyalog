+/{∧/,(I⍴⍵)∨⍵∘.≢⍵}¨t←' 'split¨getfile'input_04.txt'
+/{∧/,(I⍴⍵)∨⍵∘.≢⍵}¨sa¨¨t

⍝ @inrick's solution
+/(∧/≢ep∘sa)¨t←' 'split¨getfile'input_04.txt'
+/(∧/≢ep∘sa)¨sa¨¨t
