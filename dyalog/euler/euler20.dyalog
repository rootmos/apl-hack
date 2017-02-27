#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

+/10⊥⍣¯1!10 ⍝ naive implementation, same solution works in J: +/10#.^:_1!x:100

)copy dfns
+/⍎¨↑×nats/⍳100 ⍝ dfns to the rescue!
