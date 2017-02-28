#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

)copy dfns
)copy utils

ns←##.getfile'euler22.input'
+/(⍳⍴ns)×{+/ALPH⍳⍵}¨ns[⍋↑ns]
