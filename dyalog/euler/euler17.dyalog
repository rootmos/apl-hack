#!/usr/bin/dyalog -script
⍝ vim: kmp=dyalog

d1←'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine' 'ten' 'eleven' 'twelve' 'thirteen' 'fourteen' 'fifteen' 'sixteen' 'seventeen' 'eighteen' 'nineteen'
d10←'ten' 'twenty' 'thirty' 'forty' 'fifty' 'sixty' 'seventy' 'eighty' 'ninety'
dash←{ ⍵=0:'' ⋄ '-',⊃d1[⍵] }
)erase f
∇f ← {
  ⍵≤19: ⊃d1[⍵]
  ⍵<100: (⊃d10[1⌷ds]),dash 2⌷ds←10 10⊤⍵
  0=2⌷ds←10 1000⊤⍵: (f ds[1]),' thousand'
  0=2⌷ds←10 100⊤⍵: (f ds[1]),' hundred'
  (f ds[1]),' hundred and ',f 2⌷ds←10 100⊤⍵
}∇
⊃+/(⍴∘{((⍵≠'-')∧(⍵≠' '))/⍵}∘f)¨⍳1000
