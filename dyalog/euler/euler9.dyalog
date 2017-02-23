#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

∇pt ← {
  ⍺≥⍵: ⍬
  t ← {⍵{⍵,a,⍺}¨⍳a←⍺}
  p ← {(⍵×⍵)=(⍺×⍺)+as×as←⍳⍺}
  (⍺p⍵)/⍺t⍵
}∇
ps ← ⊃,/,N ∘.pt N←⍳600
×/¨({1000=+/⍵}¨ps)/ps
