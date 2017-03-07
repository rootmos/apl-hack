⍝ vim: kmp=dyalog

)copy dfns
+/({2÷⍨⍵×⍵+1}⍳30)∊⍨(+/'ABCDEFGHIJKLMNOPQRSTUVWXYZ'⍳⊣)¨##.getfile'euler42.input'
