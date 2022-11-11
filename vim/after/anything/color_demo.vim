let num = 255
while num >= 0
  exec 'hi bg_'.num.' ctermbg='.num.' ctermfg=white'
  exec 'syn match bg_'.num.' "ctermbg='.num.':...." containedIN=ALL'
  call append(0,'ctermbg='.num.':....')
  let num = num - 1
endwhile
let num =255
while num >= 0
  exec 'hi fg_'.num.' ctermfg='.num.' '
  exec 'syn match fg_'.num.' "ctermfg='.num.':...." containedIN=ALL'
  call append(0,'ctermfg='.num.':....')
  let num = num - 1
endwhile
  
