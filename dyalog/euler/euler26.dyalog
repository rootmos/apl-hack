⍝ vim: kmp=dyalog

)copy dfns
∆m ← cache''
m←{(10(*nats)⍺)(-nats)10(*nats)⍵}
qm ← m memo ∆m
search←{n←⍺ ⋄ ⊃'0'=n(|nats)(⍵[1]qm⍵[2]): (⍵[1]-⍵[2]) ⋄ ⍵[1]=⍵[2]+1: n∇((⍵[1]+1),0) ⋄ n∇(⍵[1],⍵[2]+1) }
+cs←{(⎕←⍵) search (1 0)}¨⍳100
+d←cs⍳⌈/cs
cs[d]
1÷d
