⍝ vim: kmp=dyalog

cs⍳⌈/cs←{+/,N ∘.{⍺<⍵:0 ⋄ 0≥c←(p-⍺)-⍵:0 ⋄ ((⍺*2)+(⍵*2))=c*2} N←⍳p←⍵}¨⍳1000
