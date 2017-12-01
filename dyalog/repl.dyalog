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

⎕SAVE 'repl'
)off
