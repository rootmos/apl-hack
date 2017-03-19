⎕SE.SALT.Load './','utils'
twd←#.utils.triangle_without_diagonal
cs←(⍳10000)*3
⎕PP←17
scs←({⍵[⍋⍵]}¨⍕¨cs)
ps←{scs[⍺]≡scs[⍵]:⊂(cs[⍺],cs[⍵]) ⋄ ⍬}twd⍴scs
xs/⍨0≠xs←,(1⌷¨ps){4=⍴⍵:⌊/⍺,⍵ ⋄ ⍬}⌸(2⌷¨ps)
