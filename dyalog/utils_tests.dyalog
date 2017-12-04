:Namespace utils_tests

∇tests
  ⎕CS'#.utils'

  'isqrt' tc 1 1 1 2 2 2 2 2 3 ≡ isqrt 1 2 3 4 5 6 7 8 9

  'di' tc 1 2 3 4 ≡ di 1234

  'rs 0' tc 0 1 2 3 ≡ rs 1 2 3 4
  'rs 1' tc 0 1 2 3 ≡ 1 rs 1 2 3 4
  'rs 2' tc 0 0 0 1 ≡ 3 rs 1 2 3 4
  'rs 3' tc (2 3 ⍴ 0 0 0 1 2 3) ≡ rs 2 3 ⍴ 1 2 3 4 5 6

  'ic 1' tc 1 0 2 0 3 0 4 0 5 ≡ 0ic⍳5
  'ic 2' tc (1⍴1) ≡ 0 ic ⍳1
  'ic 3' tc (1⍴1) ≡ 0 ic 1
  'ic 4' tc ⍬ ≡ 0 ic ⍬

  'sa 1' tc 1 2 3 ≡ sa 1 3 2
  'sa 2' tc ⍬ ≡ sa ⍬
  'sa 3' tc 'aac' 'ab' ≡ sa 'ab' 'aac'
  'sd 1' tc 3 2 1 ≡ sd 1 3 2
  'sd 2' tc ⍬ ≡ sd ⍬
  'sd 3' tc 'ab' 'aac' ≡ sd 'aac' 'ab'

  'I 1' tc (3 3⍴1 0 0 0 1 0 0 0 1) ≡ I 3
  'I 2' tc (1 1⍴1) ≡ I 1
  'I 3' tc (0 0⍴0) ≡ I 0
  'I 4' tc (1 1⍴1) ≡ I 1⍴1

  'ep' tc (1 2)(2 3) ≡ ,ep 1 2 3

  'pd 1' tc 1 5 ≡ pd 1 2 7
  'pd 2' tc ⍬ ≡ pd 1

  'ib' tc 1 1 0 0 ≡ (3 3ib⊢)¨(2 2) (3 2) (2 4) (0 2)

  'ad 1' tc (3 3)(3 2)(3 1)(2 3)(2 2)(2 1)(1 3)(1 2)(1 1) ≡ 3 3 ad 2 2
  'ad 2' tc (2 2)(2 1)(1 2)(1 1) ≡ 3 3 ad 1 1

  'split 1' tc (1 1)(2 2 2)(3 3 3 3) ≡ 0 split 1 1 0 2 2 2 0 3 3 3 3
  'split 2' tc 'aa' 'bbb' ≡ ' ' split 'aa bbb'
  'split 3' tc ⍬≡' ' split ''
  'split 4' tc ⍬≡' ' split ⍬


  'trial_division' tc (trial_division 50)≡2 3 5 7 11 13 17 19 23 29 31 37 41 43 47

  'sieve' tc (sieve n)≡(trial_division n←1000)
  'factorize' tc n≡(×/factorize_with_sieve)¨n←(⍳10000)
  'divisors' tc (divisors_trial_division¨n)≡divisors_with_sieve¨n←⍳10000


  'triangle' tc ((1 1) (2 1) (2 2) (3 1) (3 2) (3 3))≡ {⊂(⍺ ⍵)} triangle 3
  'triangle_without_diagonal' tc ((2 1) (3 1) (3 2))≡ {⊂(⍺ ⍵)} triangle_without_diagonal 3

  ⎕←'all tests passed'
∇

∇bench
  ⎕CS'#.utils'
  'cmpx' ⎕CY 'dfns'

  cmpx 'trial_division 10000' 'sieve 10000'

  ps1k←sieve isqrt 1000
  ps20k←sieve isqrt 20000

  cmpx 'divisors_trial_division¨⍳1000' '{ps1k divisors ⍵}¨⍳1000'
  cmpx 'divisors_trial_division¨⍳20000' '{ps20k divisors ⍵}¨⍳20000'
  cmpx 'divisors_trial_division¨⍳40000' '{ps20k divisors ⍵}¨⍳40000'
∇

:EndNamespace
