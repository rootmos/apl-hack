#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

)copy dfns
{⍺+¯1↓⍵⌈1⌽⍵}/⍎¨##.getfile'euler67.input'
