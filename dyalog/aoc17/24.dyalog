i←sa¨⍎¨¨'/'ltov¨getfile'input_24.txt'
f←{(⊂⍵),¨ i[⍸⌽(⊃⌽⍵)=↑i]}
g←{⍵/⍨ 1,((⍳⍴)=⊢⍳⊢) sa¨ ,ep⍵}
⌈/ +/¨ +ep¨ xs←{∪g¨ ⊃,/f¨⍵}⍣≡ 0 ⍝ 1940
⌈/ +/¨ +ep¨ xs/⍨⊃,/(⊢=⌈/)⍴¨xs   ⍝ 1928
