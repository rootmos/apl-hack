⍝ vim: kmp=dyalog

1+1

86÷4

7×2

9*3 ⍝ Powers, yo

x ← 7
x+1 ⍝ Should be 8, yo

y ← 1 2 3
y×2 ⍝ scalar multiplication
y×7 7 7 ⍝ point-wise multiplication

1 2 3 - 4 4 4

⍝ y×2 2 ⍝ length-error (trying to do point-wise multiplication)

1⌈2 ⍝ max
3⌊4 ⍝ min

3⌈1 2 3 4 ⍝ max distributes
1 2 3 4⌈3 ⍝ on both sides

3⌊1 2 3 4 ⍝ same for min
1 2 3 4⌊3

x ← 2 3 ⍴ 1 2 3 4 5 6  ⍝ ⍴ makes matrixes (dyadic)
x
⍴ x                    ⍝ and finds the size (monadic)

2 2 2 ⍴ 1 2 3 4 5 6 7 8  ⍝ I can haz more dimensions?

+/1 2 3  ⍝ The /-operator distributes
×/2 3 4

⌈/1 2 3 4  ⍝ / can be used to find max of a list

Avg ← {(+/⍵)÷(⍴⍵)}  ⍝ Can make functions
Avg 1 2 3 4

Avg2 ← {+/⍵÷⍴⍵} ⍝ and not use parethesis, how should this be read?
Avg2 1 2 3 4

1 2 3 4
⍴1 2 3 4
÷⍴1 2 3 4            ⍝ monadic ÷ seems to translate to 1÷
1 2 3 4÷⍴1 2 3 4
+/1 2 3 4÷⍴1 2 3 4   ⍝ so, does this imply that Dyalog/APL is right-associative?

x ← 10 11 12 13
x[1]
x[1 2 3 1 1]
x[2 3] ← 0 0
x
x[1 4] ← 1
x

⍳8     ⍝ iota makes natural numbers

x ← 20 21 22 23
x[⍳⍴x] ← 1
x

salaries ← 4225 1619 3706 2240 2076 1389 3916 3918 4939 2735
categories ← 3 1 3 2 2 1 3 3 3 2
rates ← 8 5 2 ÷ 100
+/salaries×rates[categories]

salaries > 3000
(categories=3)∧(salaries>3000) ⍝ logicy-things

+/(salaries≤2240) ⍝ counting things

(salaries≥3706)/⍳⍴salaries

1 2 3 4 5 ∊ 2 4
'foo' ∊ 'o'

l ← 15 40 63 18 27 40 33 29 40 88
w ← 29 63 40 33 50
(l ∊ w) / ⍳⍴l           ⍝ which positions in l belong to the set w?
l ⍳ w                   ⍝ index-of


area ← 17 50 59 84 89
discount ← 9 8 6 5 4 2

84∊area
area⍳84
area⍳1

d ← {discount[area⍳⍵]}
d 17
d 59
d 1

AlphLower ← 'abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ'
AlphUpper ← 'ABCDEFGHIJKLMNOPQRSTUVWXYZ ABCDEFGHIJKLMNOPQRSTUVWXYZ*'

Tale ← 'Le Petit Chaperon-Rouge a bouffé le Loup'
AlphUpper[AlphLower⍳Tale]

l ← 15 40 63 18 27 40 33 29 40 88
4↓l   ⍝ drop four
3↑l   ⍝ take three
¯2↓l  ⍝ drop last two
¯3↑l  ⍝ take last three

tome ← 56 59 67 64 60 61 68 73 78 75 81 84
(1↓tome)-(¯1↓tome)
growth ← {100×((1↓⍵)÷(¯1↓⍵))-1}
growth tome

⌽1 2 3 4
⌽2 3 ⍴ 1 2 3 4 5 6

⊖1 2 3 4
⊖2 3 ⍴ 1 2 3 4 5 6

⍉1 2 3 4
⍉2 3 ⍴ 1 2 3 4 5 6

1 2 3 4 ∘.× 2 3

(⍳10) ∘.× (⍳10)  ⍝ the multiplication tables

m ← 2 3 ⍴ 15 40 63 18 27 ⍝ Chapter B.5
m
m[1;]
m[;2]
m[2;3]
m[1 2;1 3]

m ← 2 3 ⍴ 15 40 63 18 27
l ← 15 40 63 18 27 40 33 29 40 88
2⌷l
(1 2)(1 3)⌷m

One ← 2 2⍴8 6 2 4 ⍝ Chapter B.6
Two ← 'Hello'
NesMat ← 2 3 ⍴ 'Dyalog' 44 Two 27 One (2 3⍴1 2 0 0 0 5)
NesMat

)copy display
DISPLAY NesMat

DISPLAY (4 8) (1 4) 10 (9 5) ⍝ Chapter C.7
+/(4 8) (1 4) 10 (9 5)  ⍝ note that it doesn't nest the + into the nested vectors

1 2 3 +.× 4 5 6 ⍝ inner product a la @inrick

1 2 3 ×.× 4 5 6 ⍝ "produc-inner product" a la @inrick - variant 2

l ← 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1
l/⍳⍴l ⍝ this @inrick calls where, see k's &

l ← 17 7 15
⍋3 2 4 1    ⍝ grade up
l[⍋l]       ⍝ used here for sorting
⍒3 2 4 1    ⍝ grade down
l[⍒l]

1÷⍨2 ⍝ commute, this becomes the same as 2÷1
2÷⍨1 ⍝ this becomes the same as 1÷2

0⍴0 ⍝ empty arrays
⍴0⍴0
2 0⍴0
⍴2 0⍴0

⍝ " 5 years of production, on 2 assembly lines, and for 12 months per year. "
+prod ← 5 2 12 ⍴ 26 16 22 17 21 44 25 22 23 44 41 33 43 36 47 49 30 22 57 20 45 60 43 22 44 21 58 57 17 43 47 17 43 26 53 23 29 19 23 38 53 47 38 22 40 57 35 26 37 27 53 26 29 46 25 26 30 20 32 16 56 55 25 47 38 27 39 59 20 28 42 25 21 57 55 44 16 54 26 16 55 56 45 45 16 55 26 20 27 55 36 39 43 38 50 16 27 23 56 41 53 60 39 47 44 47 17 28 24 35 61 26 22 35 24 20 31 35 47 37

⍝ Axis (Chapter C.8)
+/[1]prod ⍝ sum over all years
+/[2]prod ⍝ sum over all assembly lines
+/[3]prod ⍝ sum over whole year (sum over months)

+/prod ⍝ same as +/[3]
+⌿prod ⍝ same as +/[1]


+tam ← 3 4 ⍴ 2 3 5 8 8 4 6 2 5 9 1 4 9 7 8

tam×2
tam×[1]1 2 3 ⍝ × can be used with an axis (Chapter C.8.1)
tam×[2]1 2 3 4

⍝ C.11.2 Replication
0 1 2 3 / 1 2 3 4
0 1 2 3 / ⍳4       ⍝ this is equivalent to &0 1 2 3 in k

{⍵+5}¨1 2 3  ⍝ each (' is the k equivalent)

m ← 2 3 ⍴ 15 40 63 18 27 15
DISPLAY m
+/m
+⌿m

n ← (15 40 63) (18 27 15)
DISPLAY n
+/¨n
