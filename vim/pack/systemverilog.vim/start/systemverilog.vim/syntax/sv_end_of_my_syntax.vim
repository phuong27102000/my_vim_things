syn match svObjectFunctions "\.\(num\|size\|delete\|exists\|first\|last\|next\|prev\|insert\|pop_front\|pop_back\|push_front\|push_back\|find\|find_index\|find_first\|find_first_index\|find_last\|find_last_index\|min\|max\|reverse\|sort\|rsort\|shuffle\|sum\|product\|and\|or\|xor\)\>\(\s\|\n\)*("me=e-1
syn match svUvmObject       "\<uvm_\w\+"
syn match svUvmObject       "\`uvm_\w\+"
syn match svUvmDef          "\<UVM_[A-Z_]\+"
syn match svOtherFunction   "\$\(formatf\|format\|sformatf\|sformat\|test\$plusargs\|value\$plusargs\)"
syn match svOtherDelimiter  "\(\[\|]\)"
syn match svOtherOperator   "\(\.\|,\|;\)"
syn match svUserDef         "\`[A-Z][A-Za-z0-9_]\+"
syn match svOperator        "#"
syn keyword svType mailbox semaphore

hi! default link svUvmDef         String
hi! default link svOtherFunction  Function
hi! default link svOtherDelimiter Delimiter
hi! default link svOtherOperator  Operator

hi Conditional ctermfg=Yellow
hi Repeat      ctermfg=Yellow
hi Function    ctermfg=Cyan
hi Comment     ctermfg=DarkYellow
hi svUvmObject ctermfg=147
hi svUvmDef    ctermfg=165
hi svUserDef   ctermfg=142
