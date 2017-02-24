#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

)copy loaddata
)copy utils

ls←LoadTEXT 'euler11.input'
{0≡⍵:⍬ ⋄ ⍎⍵}¨¨{' ' split ⍵}¨ls
