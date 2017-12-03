)copy dfns
)copy salt

enableSALT
⎕SE.SALT.Load './utils'

⍝ global functions
⊢'#'⎕NS'#.utils.tc'
⊢'#'⎕NS'#.utils.di'
⊢'#'⎕NS'#.utils.isqrt'
⊢'#'⎕NS'#.utils.rs'
⊢'#'⎕NS'#.utils.split'
⊢'#'⎕NS'#.utils.pd'
⊢'#'⎕NS'#.utils.ib'
⊢'#'⎕NS'#.utils.ad'
⊢'#'⎕NS'#.utils.ic'

⎕SAVE 'repl'
)off
