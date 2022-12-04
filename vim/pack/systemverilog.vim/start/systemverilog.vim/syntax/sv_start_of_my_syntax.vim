"==================================================
"Functions & Tasks Declaration
hi svFTD ctermbg=236
call matchadd('svFTD','^[a-zA-Z ]*\s\(function\|task\).*')

"==================================================
"Functions & Tasks
syn match svUserFunctions "\(\s\|(\)\+[a-zA-Z]\+[a-zA-Z0-9_\.]\+("me=e-1 contains=svUserFunctionsExcept1,svUserFunctionsExcept2
syn match svUserFunctions ".*\(function\|task\).*\s[a-zA-Z]\+[a-zA-Z0-9_\.]\+;"me=e-1 contains=svUserFunctionsExcept3,svUserFunctionsExcept4
syn keyword svUserFunctionsExcept1 if else iff case casez casex end case for foreach do while forever repeat contained
syn keyword svUserFunctionsExcept2 fork join join_any join_none begin end module endmodule function endfunction task endtask always always_ff always_latch always_comb initial this generate endgenerate config endconfig class endclass clocking endclocking interface endinterface package endpackage modport posedge negedge edge defparam assign deassign alias return disable wait continue and buf bufif0 bufif1 nand nor not or xnor xor tri tri0 tri1 triand trior trireg pull0 pull1 pullup pulldown cmos default endprimitive endspecify endtable force highz0 highz1 ifnone large macromodule medium nmos notif0 notif1 pmos primitive rcmos release rnmos rpmos rtran rtranif0 rtranif1 scalared small specify strong0 strong1 supply0 supply1 table tran tranif0 tranif1 vectored wand weak0 weak1 wor cell design incdir liblist library noshowcancelled pulsestyle_ondetect pulsestyle_onevent showcancelled use instance uwire assert assume before bind bins binsof break constraint context cover covergroup coverpoint cross dist endgroup endprogram endproperty endsequence expect extends final first_match ignore_bins illegal_bins inside intersect local longint matches new null packed priority program property pure randc randcase randsequence sequence solve super tagged throughout timeprecision timeunit type unique wait_order wildcard with within accept_on checker endchecker eventually global implies let nexttime reject_on restrict s_always s_eventually s_nexttime s_until s_until_with strong sync_accept_on sync_reject_on unique0 until until_with untyped weak implements interconnect nettype soft contained
syn keyword svUserFunctionsExcept3 function task contained
<<<<<<< HEAD
syn keyword svUserFunctionsExcept4 real realtime event reg wire integer logic bit time byte chandle genvar signed unsigned shortint shortreal string void int specparam contained
syn match svOperator "#"

"Highlight 
hi svUserFunctions ctermfg=216
=======
hi svUserFunctions ctermfg=216
syn keyword svUserFunctionsExcept4 real realtime event reg wire integer logic bit time byte chandle genvar signed unsigned shortint shortreal string void int specparam contained
>>>>>>> 638edb5ca3ff5ca1c38d7b2b32d2b67037f04940
hi! default link svUserFunctionsExcept1 Repeat
hi! default link svUserFunctionsExcept2 Repeat
hi! default link svUserFunctionsExcept3 Repeat
hi! default link svUserFunctionsExcept4 Type
