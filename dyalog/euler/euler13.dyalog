#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

)copy loaddata
ns←1⌷[2]↑⍎¨¯1↓LoadTEXT'euler13.input'
10⊥10↑10(⊥⍣¯1)+/ns
