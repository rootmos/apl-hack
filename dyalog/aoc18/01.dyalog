+/a←⍎¨getfile'01.input'
a⌷⍨⌊/⊃,/{⊂(1<⍴⍵)↑1↓⍵}⌸a←+\1000000⍴a
