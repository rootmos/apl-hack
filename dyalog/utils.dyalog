⍝ vim: kmp=dyalog
:Namespace utils

tc←{~⍵:('test-case failed: ',⍺)⎕SIGNAL 90 ⋄ ⎕←'test-case ok: ',⍺}

isqrt←⌊(÷2)*⍨⊢          ⍝ integer square root
di←10⊥⍣¯1⊢              ⍝ digits
rs←{⍺←1 ⋄ (-⍴⍵)↑(-⍺)↓⍵} ⍝ shift right and fill with identity element to the left
ep←{(¯1↓⍵)⍺⍺¨(1↓⍵)}     ⍝ each pair (from k's ':)
pd←-⍨ep⊢                ⍝ pairwise difference
ic←{1↓⊃,/⍺,¨⍵}          ⍝ intercalate vector ⍵ with element ⍺
I←{n←⊃⍵ ⋄ n n⍴1,n⍴0}    ⍝ ⍵×⍵ identity matrix

sa←{⍵[⍋↑⍵]} ⍝ sort ascending
sd←{⍵[⍒↑⍵]} ⍝ sort descending

ib←⍱/(1 1>⊢)∨<                            ⍝ ⍵ is in bounds of matrix w/ dim ⍺
ad←{ps/⍨(⍺ib⊢)¨ps←,(2-⍳3)∘.(⍵+⊣,⊢)(2-⍳3)} ⍝ neighbors of ⍵ in matrix w/ dim ⍺

split←{⍵≡⍬:⍬ ⋄ 0=⍴⍵:⍬ ⋄ n←⍵⍳⍺ ⋄ (⊂(n-1)↑⍵),⍺∇(n↓⍵)} ⍝ split vector ⍵ using separator ⍺

trial_division ← { ({∧/0≠(1↓⍳⌊⍵*1÷2)|⍵}¨n)/n←1↓⍳⍵ }
sieve_rec←{ (⍴⍵)<⍺:⍵ ⋄ 0=⍺⌷⍵:(⍺+1)∇⍵ ⋄ ms←(⍴⍵)⍴(⍺-1) 1/0 1 ⋄ (⍺+1)∇⍵>(<\ms)<ms }
sieve←{ s←1 (⍵-1)/0 1 ⋄ (2 sieve_rec s)/⍳⍵ }

factorize ← {
  ⍵=1:1
  ps ← ⍺
  {⍵[⍋⍵]} ⍬ { 1=⍵:⍺ ⋄ (⍺,js)∇⍵÷×/js←((ks≡⍬)⍴⍵),ks←(0=qs|⍵)/qs←((ps≤isqrt ⍵)/ps) } ⍵
}

factorize_with_sieve ← {(sieve isqrt ⍵) factorize ⍵}

divisors_trial_division ← {(0=m|⍵)/m←⍳⍵}
divisors ← {⍵=1:1⍴1 ⋄ {⍵[⍋⍵]} {⍺}⌸{×/((m⍴2)⊤⍵)/qs}¨⍳2*m←⍴qs←⍺ factorize ⍵}
divisors_with_sieve ← {(sieve isqrt ⍵) divisors ⍵}

nums←⎕D
alph←(819⌶)⎕A
ALPH←⎕A

triangle←{
  N←⍵
  z←⎕IO
  ⍬⍺⍺{n m←⍵ ⋄ n=N+z:⍺ ⋄ n<m: ⍺∇((n+1) z) ⋄ (⍺,n ⍺⍺ m)∇(n (m+1))}z z
}

triangle_without_diagonal←{
  N←⍵
  z←⎕IO
  ⍬⍺⍺{n m←⍵ ⋄ n=N+z:⍺ ⋄ n=m: ⍺∇((n+1) z) ⋄ (⍺,n ⍺⍺ m)∇(n (m+1))}z z
}

triangle_without_diagonal_vector←{
  v←⍵
  N←⍴v
  z←⎕IO
  ⍬⍺⍺{n m←⍵ ⋄ n=N+z:⍺ ⋄ n=m: ⍺∇((n+1) z) ⋄ (⍺,v[n] ⍺⍺ v[m])∇(n (m+1))}z z
}

:EndNamespace
