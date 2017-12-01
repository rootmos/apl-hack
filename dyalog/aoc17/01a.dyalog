)copy dfns
di←10⊥⍣¯1⊣ ⍝ digits

a←{+/⍵/⍨⍵=¯1⌽⍵}
a di 1122
a di 1234
a⊃⍎¨getfile'input_01a.txt'

b←{+/⍵/⍨⍵=(-2÷⍨⍴⍵)⌽⍵}
b di 1212
b di 123123
b⊃⍎¨getfile'input_01a.txt'
