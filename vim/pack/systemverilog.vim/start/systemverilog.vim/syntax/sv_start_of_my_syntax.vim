"==================================================
"Functions & Tasks Declaration
hi svFTD ctermbg=236
call matchadd('svFTD','^[a-zA-Z ]*\s\(function\|task\).*')

"==================================================
"Functions & Tasks
syn match svUserFunctions "\(\s\|(\)\+[a-zA-Z]\+[a-zA-Z0-9_\.]\+("me=e-1 contains=svUserFUnctionExcept
syn keyword svUserFunctionExcept if else iff case casez casex end case for foreach do while forever repeat contained
hi svUserFunctions ctermfg=216
hi! default link svUserFunctionsExcept Repeat
