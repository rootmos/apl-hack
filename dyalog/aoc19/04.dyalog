⎕IO←0 ⋄ m←178416 ⋄ M←676461
a←{∨/=ep⍕⍵} ⍝ adjacent similar digits
i←{∧/≤ep⍎¨⍕⍵} ⍝ increasing digits
⍴A←{⍵/⍨(i∧a)¨⍵}m+⍳M-m ⍝ 1650
+/{∨/0 1 0⍷0,(=ep⍕⍵),0}¨A ⍝ 1129
