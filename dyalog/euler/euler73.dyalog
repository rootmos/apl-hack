p←{((÷2)>⍺÷⍵)∧((÷3)<⍺÷⍵)}
+/,(n∘.p n)∧1=n∘.∨n←⍳8 ⍝ naive solution

+/{+/1=⍵∨((⍵>2×n)∧(⍵<3×n))/n←⍳⍵}¨⍳12000
