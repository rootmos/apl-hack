⍝ vim: kmp=dyalog

N←100
a←b←1+⍳N-1
⍴((⍳⍴xs)=xs⍳xs)/xs←,a ∘.* b
