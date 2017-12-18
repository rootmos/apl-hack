is←' 'ltov¨getfile'input_18.txt'                ⍝ instructions
rns←∪ '⍳↓↑', {⍵/⍨⍵∊lcase⎕A} ⊃,/⊃¨2⌷¨is          ⍝ register names (⍳ pc) (↑ inbox) (↓ outbox)
r←{rns⍳⍵}                                       ⍝ index of register ⍵
Is←1 2,¨I←r'↑' ⋄ Os←1 2,¨O←r'↓' ⋄ pc←r'⍳'       ⍝ special registers
ri←{1⍬⍬⍵@(r'⍳↓↑p')⊢ (⍴rns)⍴0}                   ⍝ initial register values for program ⍵
eo←{(∊1)≡⍵∊rns:⍺[r⍵] ⋄ ⍎⍵}                      ⍝ evaluate operand
set←{(⍺eo⊃⍵[3])⊣@(r⊃⍵[2])⊢⍺}
add←{(⍺eo⊃⍵[3])+@(r⊃⍵[2])⊢⍺}
mul←{(⍺eo⊃⍵[3])×@(r⊃⍵[2])⊢⍺}
mod←{(⍺eo⊃⍵[3])|@(r⊃⍵[2])⊢⍺}
jgz←{((0<⍺eo⊃⍵[2])×(¯1+⍺eo⊃⍵[3]))+@pc⊢⍺}
snd←{(⊂(⍺eo⊃⍵[2]),(⊃⊢))@O⊢⍺}                    ⍝ sound/send
go←{i←⊃is[⍵[pc]] ⋄ 1+@pc⊢⍵(⍎⊃i)i}               ⍝ evaluate instruction at pc
⍝ part one
rcv←{0≠⍺eo⊃⍵[2]:(⍺[O])@I⊢⍺ ⋄ ⍺}                 ⍝ recover
⊃⊃I⌷ go⍣{(⊂⍬)≢⍺[I]}⊢ri 0
⍝ part two
rcv←{(-⍬≡i)+@pc⊢(⊃i)(1↓i←⊃⍺[I])@((r⊃⍵[2]),I)⊢⍺} ⍝ receive or retry instruction
xch←{⍬⍬@Os⊢ (⌽¨¨⍵[⌽Os])((⊃,/),⍨)¨@Is⊢⍵}         ⍝ exchange messages
dl←{⍺[1 2,¨pc]≡⍵[1 2,¨pc]}                      ⍝ deadlock
3⌷ {xch((≢↑⊃xs[⊂2,O])+⊢)@3⊢xs←go¨@1 2⊢⍵}⍣dl (ri¨0 1),0
