#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

split ← { ⍵≡⍬:⍬ ⋄ 0=⍴⍵:⍬ ⋄ n←⍵⍳⍺ ⋄ (⊂(n-1)↑⍵),⍺∇(n↓⍵) }
+split_test_1 ← (1 1)(2 2 2)(3 3 3 3) ≡ 0 split 1 1 0 2 2 2 0 3 3 3 3
+split_test_2 ← 'aa' 'bbb' ≡ ' ' split 'aa bbb'
+split_test_3 ← ⍬≡' ' split ''
+split_test_4 ← ⍬≡' ' split ⍬

stoi ← {10⊥(((⍳10)-1),0)['0123456789'⍳⍵]}
+stoi_test_1 ← 0=stoi'0'
+stoi_test_2 ← 8=stoi'08'
+stoi_test_3 ← 107=stoi'107'
+stoi_test_4 ← ⍬≡stoi¨⍬

)save utils
)off
