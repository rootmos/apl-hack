#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

split ← { ⍵≡⍬:⍬ ⋄ 0=⍴⍵:⍬ ⋄ n←⍵⍳⍺ ⋄ (⊂(n-1)↑⍵),⍺∇(n↓⍵) }
+split_test_1 ← (1 1)(2 2 2)(3 3 3 3) ≡ 0 split 1 1 0 2 2 2 0 3 3 3 3
+split_test_2 ← 'aa' 'bbb' ≡ ' ' split 'aa bbb'
+split_test_3 ← ⍬≡' ' split ''
+split_test_4 ← ⍬≡' ' split ⍬

)save utils
)off
