⍝ Intcode computer
⎕IO←0 ⋄ Ei←{'invalid op'} ⋄ o←{100|⍵[⊃⍺]} ⋄ A←{(⍺+⊃⍵),1↓⍵}
r←{P←1↓⍺ ⋄ M←⍵ ⋄ (⌽(⍴P)↑(-2+⍴P)↑⍎¨⍕⊃⍺){M⌷⍨⍣(~⍺)⊢⍵}¨P} ⍝ ⍺ instruction w/ parameters, ⍵ memory
b←{(⍺⍺/(3↑(⊃⍺)↓⍵)r⍵)@(⍵[3+⊃⍺])⊢⍵} ⍝ binary op
E8←{8≠⍺o⍵:⍺Ei⍵ ⋄ P←(3↑(⊃⍺)↓⍵)r⍵ ⋄ (4A⍺)E0(P[0]=P[1])@(⍵[3+⊃⍺])⊢⍵ } ⍝ equal
E7←{7≠⍺o⍵:⍺E8⍵ ⋄ P←(3↑(⊃⍺)↓⍵)r⍵ ⋄ (4A⍺)E0(P[0]<P[1])@(⍵[3+⊃⍺])⊢⍵ } ⍝ less
E6←{6≠⍺o⍵:⍺E7⍵ ⋄ P←(3↑(⊃⍺)↓⍵)r⍵ ⋄ 0=P[0]:(P[1]@0⊢⍺)E0⍵ ⋄ (3A⍺)E0⍵ } ⍝ jump-if-false
E5←{5≠⍺o⍵:⍺E6⍵ ⋄ P←(3↑(⊃⍺)↓⍵)r⍵ ⋄ 0≠P[0]:(P[1]@0⊢⍺)E0⍵ ⋄ (3A⍺)E0⍵ } ⍝ jump-if-true
E4←{4≠⍺o⍵:⍺E5⍵ ⋄ P←(2↑(⊃⍺)↓⍵)r⍵ ⋄ ((2+⊃⍺),(⊂(⊃⍺[1]),P[0]),⍺[2])E0⍵} ⍝ output
E3←{3≠⍺o⍵:⍺E4⍵ ⋄ ((2+⊃⍺),⍺[1],⊂1↓⊃⍺[2])E0(⊃⊃⍺[2])@(⍵[1+⊃⍺])⊢⍵} ⍝ input
E1←{1=⍺o⍵:(4A⍺)E0(⍺+b⍵) ⋄ 2=⍺o⍵:(4A⍺)E0(⍺×b⍵) ⋄ ⍺E3⍵}
E0←{99=⍺o⍵:(⊂⍵),⊂⍺ ⋄ ⍺E1⍵}
E←{⍺←⍬ ⋄ ⊃1⌷⊃1⌷(0,(⊂⍬),⊂⍺)E0⍵} ⋄ P←⍎{'¯'@(⍸⍵='-')⊢⍵}

⌈/0{0=⍴⍵:⍺ ⋄ (⊃((⊃⍵),⍺)E⊢P⊃getfile'07.input')∇1↓⍵}¨↓pmat 5 ⍝ 70597
