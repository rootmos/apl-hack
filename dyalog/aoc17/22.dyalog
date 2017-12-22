pm←(-⊣)↑(÷2÷ ⊣+(⍴⊢))↑⊢                                                ⍝ pad matrix ⍵ to dimension ⍺
n←1001 ⋄ ip←⊂2⍴⌈n÷2 ⋄ ds←(¯1 0)(0 1)(1 0)(0 ¯1)                       ⍝ NESW
N←2×M←(n n)pm'#'=↑getfile'input_22.txt'                               ⍝ initial maps
2⌷ {M[⊂⊃⍵]←t←~M[⊂⊃⍵] ⋄ ⍵+ds[1+4|d+⊃⌽⍵],t,d←1-2×t}⍣1E4⊢ ip,0,0         ⍝ 01=(clean)(infected)
2⌷ {N[⊂⊃⍵]←t←4|1+s←N[⊂⊃⍵] ⋄ ⍵+ds[1+4|d+⊃⌽⍵],(t=2),d←s-1}⍣10E6⊢ ip,0,0 ⍝ 0123=(clean)(weakened)(infected)(flagged)
