m←¯2+(⌊3÷⍨⊢)
m 12 14 1969 100756
+/m⍎¨getfile'01.input'

f←(+/¯1↓((m⊃),⊢)⍣(0≥(m(⊃⊣))))¨
f 14 1969 100756 ⍝ 2 966 50346 
+/f⍎¨getfile'01.input' ⍝ 5120654
