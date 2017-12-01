⍝ vim: kmp=dyalog
:Namespace utils

tc←{~⍵:('test-case failed: ',⍺)⎕SIGNAL 90 ⋄ ⎕←'test-case ok: ',⍺}

isqrt←⌊(1÷2)*⍨⊢ ⍝ integer square root
di←10⊥⍣¯1⊣ ⍝ digits
rs←{⍺←1 ⋄ (-⍴⍵)↑(-⍺)↓⍵} ⍝ shift right and fill with identity element to the left
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

nums←'0123456789'
alph←'abcdefghijklmnopqrstuvwxyz'
ALPH←'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

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
