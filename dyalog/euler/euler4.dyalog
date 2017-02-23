#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

p ← {d≡⌽d←10(⊥⍣¯1)⍵}
{⌈/(p¨xs)/xs ← ,(⍳⍵)∘.×(⍳⍵)}999
