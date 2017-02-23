#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

∇pt ← {
  p ← {(⍵*2)=(⍺*2)+(⍳⍺)*2}
  ⍺≥⍵: ⍬
  ~∨/ps←⍺p⍵: ⍬
  ps/(⍵{⍵,a,⍺}¨⍳a←⍺)
}∇
ps ← ⊃,/,N ∘.pt N←⍳500
×/¨({1000=+/⍵}¨ps)/ps
