; Listing generated by Microsoft (R) Optimizing Compiler Version 17.00.51106.1 

	TITLE	C:\Users\Zhitao Li\Documents\Visual Studio 2012\Projects\Freefalcon\vu2\Src\vu_filtered_hash_table.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?is_signed@?$numeric_limits@G@std@@2_NB		; std::numeric_limits<unsigned short>::is_signed
PUBLIC	?digits@?$numeric_limits@G@std@@2HB		; std::numeric_limits<unsigned short>::digits
PUBLIC	?digits10@?$numeric_limits@G@std@@2HB		; std::numeric_limits<unsigned short>::digits10
PUBLIC	?is_signed@?$numeric_limits@H@std@@2_NB		; std::numeric_limits<int>::is_signed
PUBLIC	?value@?$_Sizeof@HU_Nil@std@@U12@U12@U12@U12@U12@U12@@std@@2IB ; std::_Sizeof<int,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil>::value
PUBLIC	?digits@?$numeric_limits@H@std@@2HB		; std::numeric_limits<int>::digits
PUBLIC	?digits10@?$numeric_limits@H@std@@2HB		; std::numeric_limits<int>::digits10
PUBLIC	?is_signed@?$numeric_limits@I@std@@2_NB		; std::numeric_limits<unsigned int>::is_signed
PUBLIC	?digits@?$numeric_limits@I@std@@2HB		; std::numeric_limits<unsigned int>::digits
PUBLIC	?digits10@?$numeric_limits@I@std@@2HB		; std::numeric_limits<unsigned int>::digits10
PUBLIC	?is_signed@?$numeric_limits@J@std@@2_NB		; std::numeric_limits<long>::is_signed
PUBLIC	?digits@?$numeric_limits@J@std@@2HB		; std::numeric_limits<long>::digits
PUBLIC	?digits10@?$numeric_limits@J@std@@2HB		; std::numeric_limits<long>::digits10
PUBLIC	?is_signed@?$numeric_limits@K@std@@2_NB		; std::numeric_limits<unsigned long>::is_signed
PUBLIC	?digits@?$numeric_limits@K@std@@2HB		; std::numeric_limits<unsigned long>::digits
PUBLIC	?digits10@?$numeric_limits@K@std@@2HB		; std::numeric_limits<unsigned long>::digits10
PUBLIC	?is_signed@?$numeric_limits@_J@std@@2_NB	; std::numeric_limits<__int64>::is_signed
PUBLIC	?digits@?$numeric_limits@_J@std@@2HB		; std::numeric_limits<__int64>::digits
PUBLIC	?digits10@?$numeric_limits@_J@std@@2HB		; std::numeric_limits<__int64>::digits10
PUBLIC	?is_signed@?$numeric_limits@_K@std@@2_NB	; std::numeric_limits<unsigned __int64>::is_signed
PUBLIC	?digits@?$numeric_limits@_K@std@@2HB		; std::numeric_limits<unsigned __int64>::digits
PUBLIC	?digits10@?$numeric_limits@_K@std@@2HB		; std::numeric_limits<unsigned __int64>::digits10
PUBLIC	?digits@?$numeric_limits@M@std@@2HB		; std::numeric_limits<float>::digits
PUBLIC	?digits10@?$numeric_limits@M@std@@2HB		; std::numeric_limits<float>::digits10
PUBLIC	?max_digits10@?$numeric_limits@M@std@@2HB	; std::numeric_limits<float>::max_digits10
PUBLIC	?max_exponent@?$numeric_limits@M@std@@2HB	; std::numeric_limits<float>::max_exponent
PUBLIC	?max_exponent10@?$numeric_limits@M@std@@2HB	; std::numeric_limits<float>::max_exponent10
PUBLIC	?min_exponent@?$numeric_limits@M@std@@2HB	; std::numeric_limits<float>::min_exponent
PUBLIC	?min_exponent10@?$numeric_limits@M@std@@2HB	; std::numeric_limits<float>::min_exponent10
PUBLIC	?value@?$integral_constant@I$0A@@std@@2IB	; std::integral_constant<unsigned int,0>::value
PUBLIC	?digits@?$numeric_limits@N@std@@2HB		; std::numeric_limits<double>::digits
PUBLIC	?digits10@?$numeric_limits@N@std@@2HB		; std::numeric_limits<double>::digits10
PUBLIC	?max_digits10@?$numeric_limits@N@std@@2HB	; std::numeric_limits<double>::max_digits10
PUBLIC	?max_exponent@?$numeric_limits@N@std@@2HB	; std::numeric_limits<double>::max_exponent
PUBLIC	?max_exponent10@?$numeric_limits@N@std@@2HB	; std::numeric_limits<double>::max_exponent10
PUBLIC	?min_exponent@?$numeric_limits@N@std@@2HB	; std::numeric_limits<double>::min_exponent
PUBLIC	?min_exponent10@?$numeric_limits@N@std@@2HB	; std::numeric_limits<double>::min_exponent10
PUBLIC	?digits@?$numeric_limits@O@std@@2HB		; std::numeric_limits<long double>::digits
PUBLIC	?digits10@?$numeric_limits@O@std@@2HB		; std::numeric_limits<long double>::digits10
PUBLIC	?max_digits10@?$numeric_limits@O@std@@2HB	; std::numeric_limits<long double>::max_digits10
PUBLIC	?max_exponent@?$numeric_limits@O@std@@2HB	; std::numeric_limits<long double>::max_exponent
PUBLIC	?max_exponent10@?$numeric_limits@O@std@@2HB	; std::numeric_limits<long double>::max_exponent10
PUBLIC	?min_exponent@?$numeric_limits@O@std@@2HB	; std::numeric_limits<long double>::min_exponent
PUBLIC	?min_exponent10@?$numeric_limits@O@std@@2HB	; std::numeric_limits<long double>::min_exponent10
PUBLIC	?value@?$_Sizeof@U_Nil@std@@U12@U12@U12@U12@U12@U12@U12@@std@@2IB ; std::_Sizeof<std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil>::value
PUBLIC	?has_denorm@_Num_base@std@@2W4float_denorm_style@2@B ; std::_Num_base::has_denorm
PUBLIC	?has_denorm_loss@_Num_base@std@@2_NB		; std::_Num_base::has_denorm_loss
PUBLIC	?has_infinity@_Num_base@std@@2_NB		; std::_Num_base::has_infinity
PUBLIC	?has_quiet_NaN@_Num_base@std@@2_NB		; std::_Num_base::has_quiet_NaN
PUBLIC	?has_signaling_NaN@_Num_base@std@@2_NB		; std::_Num_base::has_signaling_NaN
PUBLIC	?is_bounded@_Num_base@std@@2_NB			; std::_Num_base::is_bounded
PUBLIC	?is_exact@_Num_base@std@@2_NB			; std::_Num_base::is_exact
PUBLIC	?is_iec559@_Num_base@std@@2_NB			; std::_Num_base::is_iec559
PUBLIC	?is_integer@_Num_base@std@@2_NB			; std::_Num_base::is_integer
PUBLIC	?is_modulo@_Num_base@std@@2_NB			; std::_Num_base::is_modulo
PUBLIC	?is_signed@_Num_base@std@@2_NB			; std::_Num_base::is_signed
PUBLIC	?is_specialized@_Num_base@std@@2_NB		; std::_Num_base::is_specialized
PUBLIC	?tinyness_before@_Num_base@std@@2_NB		; std::_Num_base::tinyness_before
PUBLIC	?traps@_Num_base@std@@2_NB			; std::_Num_base::traps
PUBLIC	?round_style@_Num_base@std@@2W4float_round_style@2@B ; std::_Num_base::round_style
PUBLIC	?digits@_Num_base@std@@2HB			; std::_Num_base::digits
PUBLIC	?digits10@_Num_base@std@@2HB			; std::_Num_base::digits10
PUBLIC	?max_digits10@_Num_base@std@@2HB		; std::_Num_base::max_digits10
PUBLIC	?max_exponent@_Num_base@std@@2HB		; std::_Num_base::max_exponent
PUBLIC	?max_exponent10@_Num_base@std@@2HB		; std::_Num_base::max_exponent10
PUBLIC	?min_exponent@_Num_base@std@@2HB		; std::_Num_base::min_exponent
PUBLIC	?min_exponent10@_Num_base@std@@2HB		; std::_Num_base::min_exponent10
PUBLIC	?radix@_Num_base@std@@2HB			; std::_Num_base::radix
PUBLIC	?is_bounded@_Num_int_base@std@@2_NB		; std::_Num_int_base::is_bounded
PUBLIC	?is_exact@_Num_int_base@std@@2_NB		; std::_Num_int_base::is_exact
PUBLIC	?is_integer@_Num_int_base@std@@2_NB		; std::_Num_int_base::is_integer
PUBLIC	?is_modulo@_Num_int_base@std@@2_NB		; std::_Num_int_base::is_modulo
PUBLIC	?is_specialized@_Num_int_base@std@@2_NB		; std::_Num_int_base::is_specialized
PUBLIC	?radix@_Num_int_base@std@@2HB			; std::_Num_int_base::radix
PUBLIC	?has_denorm@_Num_float_base@std@@2W4float_denorm_style@2@B ; std::_Num_float_base::has_denorm
PUBLIC	?has_denorm_loss@_Num_float_base@std@@2_NB	; std::_Num_float_base::has_denorm_loss
PUBLIC	?has_infinity@_Num_float_base@std@@2_NB		; std::_Num_float_base::has_infinity
PUBLIC	?has_quiet_NaN@_Num_float_base@std@@2_NB	; std::_Num_float_base::has_quiet_NaN
PUBLIC	?has_signaling_NaN@_Num_float_base@std@@2_NB	; std::_Num_float_base::has_signaling_NaN
PUBLIC	?is_bounded@_Num_float_base@std@@2_NB		; std::_Num_float_base::is_bounded
PUBLIC	?is_exact@_Num_float_base@std@@2_NB		; std::_Num_float_base::is_exact
PUBLIC	?is_iec559@_Num_float_base@std@@2_NB		; std::_Num_float_base::is_iec559
PUBLIC	?is_integer@_Num_float_base@std@@2_NB		; std::_Num_float_base::is_integer
PUBLIC	?is_modulo@_Num_float_base@std@@2_NB		; std::_Num_float_base::is_modulo
PUBLIC	?is_signed@_Num_float_base@std@@2_NB		; std::_Num_float_base::is_signed
PUBLIC	?is_specialized@_Num_float_base@std@@2_NB	; std::_Num_float_base::is_specialized
PUBLIC	?tinyness_before@_Num_float_base@std@@2_NB	; std::_Num_float_base::tinyness_before
PUBLIC	?traps@_Num_float_base@std@@2_NB		; std::_Num_float_base::traps
PUBLIC	?round_style@_Num_float_base@std@@2W4float_round_style@2@B ; std::_Num_float_base::round_style
PUBLIC	?radix@_Num_float_base@std@@2HB			; std::_Num_float_base::radix
PUBLIC	?is_signed@?$numeric_limits@D@std@@2_NB		; std::numeric_limits<char>::is_signed
PUBLIC	?digits@?$numeric_limits@D@std@@2HB		; std::numeric_limits<char>::digits
PUBLIC	?digits10@?$numeric_limits@D@std@@2HB		; std::numeric_limits<char>::digits10
PUBLIC	?value@?$integral_constant@_N$0A@@std@@2_NB	; std::integral_constant<bool,0>::value
PUBLIC	?is_signed@?$numeric_limits@_W@std@@2_NB	; std::numeric_limits<wchar_t>::is_signed
PUBLIC	?digits@?$numeric_limits@_W@std@@2HB		; std::numeric_limits<wchar_t>::digits
PUBLIC	?digits10@?$numeric_limits@_W@std@@2HB		; std::numeric_limits<wchar_t>::digits10
PUBLIC	?value@?$integral_constant@_N$00@std@@2_NB	; std::integral_constant<bool,1>::value
PUBLIC	?is_modulo@?$numeric_limits@_N@std@@2_NB	; std::numeric_limits<bool>::is_modulo
PUBLIC	?is_signed@?$numeric_limits@_N@std@@2_NB	; std::numeric_limits<bool>::is_signed
PUBLIC	?digits@?$numeric_limits@_N@std@@2HB		; std::numeric_limits<bool>::digits
PUBLIC	?digits10@?$numeric_limits@_N@std@@2HB		; std::numeric_limits<bool>::digits10
PUBLIC	?is_signed@?$numeric_limits@C@std@@2_NB		; std::numeric_limits<signed char>::is_signed
PUBLIC	?digits@?$numeric_limits@C@std@@2HB		; std::numeric_limits<signed char>::digits
PUBLIC	?digits10@?$numeric_limits@C@std@@2HB		; std::numeric_limits<signed char>::digits10
PUBLIC	?is_signed@?$numeric_limits@E@std@@2_NB		; std::numeric_limits<unsigned char>::is_signed
PUBLIC	?digits@?$numeric_limits@E@std@@2HB		; std::numeric_limits<unsigned char>::digits
PUBLIC	?digits10@?$numeric_limits@E@std@@2HB		; std::numeric_limits<unsigned char>::digits10
PUBLIC	?is_signed@?$numeric_limits@F@std@@2_NB		; std::numeric_limits<short>::is_signed
PUBLIC	?digits@?$numeric_limits@F@std@@2HB		; std::numeric_limits<short>::digits
PUBLIC	?digits10@?$numeric_limits@F@std@@2HB		; std::numeric_limits<short>::digits10
;	COMDAT ?digits10@?$numeric_limits@F@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@F@std@@2HB DD 04H		; std::numeric_limits<short>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@F@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@F@std@@2HB DD 0fH		; std::numeric_limits<short>::digits
CONST	ENDS
;	COMDAT ?is_signed@?$numeric_limits@F@std@@2_NB
CONST	SEGMENT
?is_signed@?$numeric_limits@F@std@@2_NB DB 01H		; std::numeric_limits<short>::is_signed
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@E@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@E@std@@2HB DD 02H		; std::numeric_limits<unsigned char>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@E@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@E@std@@2HB DD 08H		; std::numeric_limits<unsigned char>::digits
CONST	ENDS
;	COMDAT ?is_signed@?$numeric_limits@E@std@@2_NB
CONST	SEGMENT
?is_signed@?$numeric_limits@E@std@@2_NB DB 00H		; std::numeric_limits<unsigned char>::is_signed
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@C@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@C@std@@2HB DD 02H		; std::numeric_limits<signed char>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@C@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@C@std@@2HB DD 07H		; std::numeric_limits<signed char>::digits
CONST	ENDS
;	COMDAT ?is_signed@?$numeric_limits@C@std@@2_NB
CONST	SEGMENT
?is_signed@?$numeric_limits@C@std@@2_NB DB 01H		; std::numeric_limits<signed char>::is_signed
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@_N@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@_N@std@@2HB DD 00H		; std::numeric_limits<bool>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@_N@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@_N@std@@2HB DD 01H		; std::numeric_limits<bool>::digits
CONST	ENDS
;	COMDAT ?is_signed@?$numeric_limits@_N@std@@2_NB
CONST	SEGMENT
?is_signed@?$numeric_limits@_N@std@@2_NB DB 00H		; std::numeric_limits<bool>::is_signed
CONST	ENDS
;	COMDAT ?is_modulo@?$numeric_limits@_N@std@@2_NB
CONST	SEGMENT
?is_modulo@?$numeric_limits@_N@std@@2_NB DB 00H		; std::numeric_limits<bool>::is_modulo
CONST	ENDS
;	COMDAT ?value@?$integral_constant@_N$00@std@@2_NB
CONST	SEGMENT
?value@?$integral_constant@_N$00@std@@2_NB DB 01H	; std::integral_constant<bool,1>::value
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@_W@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@_W@std@@2HB DD 04H		; std::numeric_limits<wchar_t>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@_W@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@_W@std@@2HB DD 010H		; std::numeric_limits<wchar_t>::digits
CONST	ENDS
;	COMDAT ?is_signed@?$numeric_limits@_W@std@@2_NB
CONST	SEGMENT
?is_signed@?$numeric_limits@_W@std@@2_NB DB 00H		; std::numeric_limits<wchar_t>::is_signed
CONST	ENDS
;	COMDAT ?value@?$integral_constant@_N$0A@@std@@2_NB
CONST	SEGMENT
?value@?$integral_constant@_N$0A@@std@@2_NB DB 00H	; std::integral_constant<bool,0>::value
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@D@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@D@std@@2HB DD 02H		; std::numeric_limits<char>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@D@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@D@std@@2HB DD 07H		; std::numeric_limits<char>::digits
CONST	ENDS
;	COMDAT ?is_signed@?$numeric_limits@D@std@@2_NB
CONST	SEGMENT
?is_signed@?$numeric_limits@D@std@@2_NB DB 01H		; std::numeric_limits<char>::is_signed
CONST	ENDS
;	COMDAT ?radix@_Num_float_base@std@@2HB
CONST	SEGMENT
?radix@_Num_float_base@std@@2HB DD 02H			; std::_Num_float_base::radix
CONST	ENDS
;	COMDAT ?round_style@_Num_float_base@std@@2W4float_round_style@2@B
CONST	SEGMENT
?round_style@_Num_float_base@std@@2W4float_round_style@2@B DD 01H ; std::_Num_float_base::round_style
CONST	ENDS
;	COMDAT ?traps@_Num_float_base@std@@2_NB
CONST	SEGMENT
?traps@_Num_float_base@std@@2_NB DB 00H			; std::_Num_float_base::traps
CONST	ENDS
;	COMDAT ?tinyness_before@_Num_float_base@std@@2_NB
CONST	SEGMENT
?tinyness_before@_Num_float_base@std@@2_NB DB 01H	; std::_Num_float_base::tinyness_before
CONST	ENDS
;	COMDAT ?is_specialized@_Num_float_base@std@@2_NB
CONST	SEGMENT
?is_specialized@_Num_float_base@std@@2_NB DB 01H	; std::_Num_float_base::is_specialized
CONST	ENDS
;	COMDAT ?is_signed@_Num_float_base@std@@2_NB
CONST	SEGMENT
?is_signed@_Num_float_base@std@@2_NB DB 01H		; std::_Num_float_base::is_signed
CONST	ENDS
;	COMDAT ?is_modulo@_Num_float_base@std@@2_NB
CONST	SEGMENT
?is_modulo@_Num_float_base@std@@2_NB DB 00H		; std::_Num_float_base::is_modulo
CONST	ENDS
;	COMDAT ?is_integer@_Num_float_base@std@@2_NB
CONST	SEGMENT
?is_integer@_Num_float_base@std@@2_NB DB 00H		; std::_Num_float_base::is_integer
CONST	ENDS
;	COMDAT ?is_iec559@_Num_float_base@std@@2_NB
CONST	SEGMENT
?is_iec559@_Num_float_base@std@@2_NB DB 01H		; std::_Num_float_base::is_iec559
CONST	ENDS
;	COMDAT ?is_exact@_Num_float_base@std@@2_NB
CONST	SEGMENT
?is_exact@_Num_float_base@std@@2_NB DB 00H		; std::_Num_float_base::is_exact
CONST	ENDS
;	COMDAT ?is_bounded@_Num_float_base@std@@2_NB
CONST	SEGMENT
?is_bounded@_Num_float_base@std@@2_NB DB 01H		; std::_Num_float_base::is_bounded
CONST	ENDS
;	COMDAT ?has_signaling_NaN@_Num_float_base@std@@2_NB
CONST	SEGMENT
?has_signaling_NaN@_Num_float_base@std@@2_NB DB 01H	; std::_Num_float_base::has_signaling_NaN
CONST	ENDS
;	COMDAT ?has_quiet_NaN@_Num_float_base@std@@2_NB
CONST	SEGMENT
?has_quiet_NaN@_Num_float_base@std@@2_NB DB 01H		; std::_Num_float_base::has_quiet_NaN
CONST	ENDS
;	COMDAT ?has_infinity@_Num_float_base@std@@2_NB
CONST	SEGMENT
?has_infinity@_Num_float_base@std@@2_NB DB 01H		; std::_Num_float_base::has_infinity
CONST	ENDS
;	COMDAT ?has_denorm_loss@_Num_float_base@std@@2_NB
CONST	SEGMENT
?has_denorm_loss@_Num_float_base@std@@2_NB DB 01H	; std::_Num_float_base::has_denorm_loss
CONST	ENDS
;	COMDAT ?has_denorm@_Num_float_base@std@@2W4float_denorm_style@2@B
CONST	SEGMENT
?has_denorm@_Num_float_base@std@@2W4float_denorm_style@2@B DD 01H ; std::_Num_float_base::has_denorm
CONST	ENDS
;	COMDAT ?radix@_Num_int_base@std@@2HB
CONST	SEGMENT
?radix@_Num_int_base@std@@2HB DD 02H			; std::_Num_int_base::radix
CONST	ENDS
;	COMDAT ?is_specialized@_Num_int_base@std@@2_NB
CONST	SEGMENT
?is_specialized@_Num_int_base@std@@2_NB DB 01H		; std::_Num_int_base::is_specialized
CONST	ENDS
;	COMDAT ?is_modulo@_Num_int_base@std@@2_NB
CONST	SEGMENT
?is_modulo@_Num_int_base@std@@2_NB DB 01H		; std::_Num_int_base::is_modulo
CONST	ENDS
;	COMDAT ?is_integer@_Num_int_base@std@@2_NB
CONST	SEGMENT
?is_integer@_Num_int_base@std@@2_NB DB 01H		; std::_Num_int_base::is_integer
CONST	ENDS
CONST	SEGMENT
_L_2	DD	03f317218r			; 0.693147
CONST	ENDS
;	COMDAT ?is_exact@_Num_int_base@std@@2_NB
CONST	SEGMENT
?is_exact@_Num_int_base@std@@2_NB DB 01H		; std::_Num_int_base::is_exact
CONST	ENDS
;	COMDAT ?is_bounded@_Num_int_base@std@@2_NB
CONST	SEGMENT
?is_bounded@_Num_int_base@std@@2_NB DB 01H		; std::_Num_int_base::is_bounded
CONST	ENDS
;	COMDAT ?radix@_Num_base@std@@2HB
CONST	SEGMENT
?radix@_Num_base@std@@2HB DD 00H			; std::_Num_base::radix
CONST	ENDS
;	COMDAT ?min_exponent10@_Num_base@std@@2HB
CONST	SEGMENT
?min_exponent10@_Num_base@std@@2HB DD 00H		; std::_Num_base::min_exponent10
CONST	ENDS
;	COMDAT ?min_exponent@_Num_base@std@@2HB
CONST	SEGMENT
?min_exponent@_Num_base@std@@2HB DD 00H			; std::_Num_base::min_exponent
CONST	ENDS
;	COMDAT ?max_exponent10@_Num_base@std@@2HB
CONST	SEGMENT
?max_exponent10@_Num_base@std@@2HB DD 00H		; std::_Num_base::max_exponent10
CONST	ENDS
;	COMDAT ?max_exponent@_Num_base@std@@2HB
CONST	SEGMENT
?max_exponent@_Num_base@std@@2HB DD 00H			; std::_Num_base::max_exponent
CONST	ENDS
;	COMDAT ?max_digits10@_Num_base@std@@2HB
CONST	SEGMENT
?max_digits10@_Num_base@std@@2HB DD 00H			; std::_Num_base::max_digits10
CONST	ENDS
;	COMDAT ?digits10@_Num_base@std@@2HB
CONST	SEGMENT
?digits10@_Num_base@std@@2HB DD 00H			; std::_Num_base::digits10
CONST	ENDS
;	COMDAT ?digits@_Num_base@std@@2HB
CONST	SEGMENT
?digits@_Num_base@std@@2HB DD 00H			; std::_Num_base::digits
CONST	ENDS
;	COMDAT ?round_style@_Num_base@std@@2W4float_round_style@2@B
CONST	SEGMENT
?round_style@_Num_base@std@@2W4float_round_style@2@B DD 00H ; std::_Num_base::round_style
CONST	ENDS
;	COMDAT ?traps@_Num_base@std@@2_NB
CONST	SEGMENT
?traps@_Num_base@std@@2_NB DB 00H			; std::_Num_base::traps
CONST	ENDS
;	COMDAT ?tinyness_before@_Num_base@std@@2_NB
CONST	SEGMENT
?tinyness_before@_Num_base@std@@2_NB DB 00H		; std::_Num_base::tinyness_before
CONST	ENDS
;	COMDAT ?is_specialized@_Num_base@std@@2_NB
CONST	SEGMENT
?is_specialized@_Num_base@std@@2_NB DB 00H		; std::_Num_base::is_specialized
CONST	ENDS
;	COMDAT ?is_signed@_Num_base@std@@2_NB
CONST	SEGMENT
?is_signed@_Num_base@std@@2_NB DB 00H			; std::_Num_base::is_signed
CONST	ENDS
;	COMDAT ?is_modulo@_Num_base@std@@2_NB
CONST	SEGMENT
?is_modulo@_Num_base@std@@2_NB DB 00H			; std::_Num_base::is_modulo
CONST	ENDS
;	COMDAT ?is_integer@_Num_base@std@@2_NB
CONST	SEGMENT
?is_integer@_Num_base@std@@2_NB DB 00H			; std::_Num_base::is_integer
CONST	ENDS
;	COMDAT ?is_iec559@_Num_base@std@@2_NB
CONST	SEGMENT
?is_iec559@_Num_base@std@@2_NB DB 00H			; std::_Num_base::is_iec559
CONST	ENDS
;	COMDAT ?is_exact@_Num_base@std@@2_NB
CONST	SEGMENT
?is_exact@_Num_base@std@@2_NB DB 00H			; std::_Num_base::is_exact
CONST	ENDS
;	COMDAT ?is_bounded@_Num_base@std@@2_NB
CONST	SEGMENT
?is_bounded@_Num_base@std@@2_NB DB 00H			; std::_Num_base::is_bounded
CONST	ENDS
;	COMDAT ?has_signaling_NaN@_Num_base@std@@2_NB
CONST	SEGMENT
?has_signaling_NaN@_Num_base@std@@2_NB DB 00H		; std::_Num_base::has_signaling_NaN
CONST	ENDS
;	COMDAT ?has_quiet_NaN@_Num_base@std@@2_NB
CONST	SEGMENT
?has_quiet_NaN@_Num_base@std@@2_NB DB 00H		; std::_Num_base::has_quiet_NaN
CONST	ENDS
;	COMDAT ?has_infinity@_Num_base@std@@2_NB
CONST	SEGMENT
?has_infinity@_Num_base@std@@2_NB DB 00H		; std::_Num_base::has_infinity
CONST	ENDS
;	COMDAT ?has_denorm_loss@_Num_base@std@@2_NB
CONST	SEGMENT
?has_denorm_loss@_Num_base@std@@2_NB DB 00H		; std::_Num_base::has_denorm_loss
CONST	ENDS
;	COMDAT ?has_denorm@_Num_base@std@@2W4float_denorm_style@2@B
CONST	SEGMENT
?has_denorm@_Num_base@std@@2W4float_denorm_style@2@B DD 00H ; std::_Num_base::has_denorm
CONST	ENDS
;	COMDAT ?value@?$_Sizeof@U_Nil@std@@U12@U12@U12@U12@U12@U12@U12@@std@@2IB
CONST	SEGMENT
?value@?$_Sizeof@U_Nil@std@@U12@U12@U12@U12@U12@U12@U12@@std@@2IB DD 00H ; std::_Sizeof<std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil>::value
CONST	ENDS
;	COMDAT ?min_exponent10@?$numeric_limits@O@std@@2HB
CONST	SEGMENT
?min_exponent10@?$numeric_limits@O@std@@2HB DD 0fffffecdH ; std::numeric_limits<long double>::min_exponent10
CONST	ENDS
;	COMDAT ?min_exponent@?$numeric_limits@O@std@@2HB
CONST	SEGMENT
?min_exponent@?$numeric_limits@O@std@@2HB DD 0fffffc03H	; std::numeric_limits<long double>::min_exponent
CONST	ENDS
;	COMDAT ?max_exponent10@?$numeric_limits@O@std@@2HB
CONST	SEGMENT
?max_exponent10@?$numeric_limits@O@std@@2HB DD 0134H	; std::numeric_limits<long double>::max_exponent10
CONST	ENDS
;	COMDAT ?max_exponent@?$numeric_limits@O@std@@2HB
CONST	SEGMENT
?max_exponent@?$numeric_limits@O@std@@2HB DD 0400H	; std::numeric_limits<long double>::max_exponent
CONST	ENDS
;	COMDAT ?max_digits10@?$numeric_limits@O@std@@2HB
CONST	SEGMENT
?max_digits10@?$numeric_limits@O@std@@2HB DD 011H	; std::numeric_limits<long double>::max_digits10
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@O@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@O@std@@2HB DD 0fH		; std::numeric_limits<long double>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@O@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@O@std@@2HB DD 035H		; std::numeric_limits<long double>::digits
CONST	ENDS
;	COMDAT ?min_exponent10@?$numeric_limits@N@std@@2HB
CONST	SEGMENT
?min_exponent10@?$numeric_limits@N@std@@2HB DD 0fffffecdH ; std::numeric_limits<double>::min_exponent10
CONST	ENDS
;	COMDAT ?min_exponent@?$numeric_limits@N@std@@2HB
CONST	SEGMENT
?min_exponent@?$numeric_limits@N@std@@2HB DD 0fffffc03H	; std::numeric_limits<double>::min_exponent
CONST	ENDS
;	COMDAT ?max_exponent10@?$numeric_limits@N@std@@2HB
CONST	SEGMENT
?max_exponent10@?$numeric_limits@N@std@@2HB DD 0134H	; std::numeric_limits<double>::max_exponent10
CONST	ENDS
;	COMDAT ?max_exponent@?$numeric_limits@N@std@@2HB
CONST	SEGMENT
?max_exponent@?$numeric_limits@N@std@@2HB DD 0400H	; std::numeric_limits<double>::max_exponent
CONST	ENDS
;	COMDAT ?max_digits10@?$numeric_limits@N@std@@2HB
CONST	SEGMENT
?max_digits10@?$numeric_limits@N@std@@2HB DD 011H	; std::numeric_limits<double>::max_digits10
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@N@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@N@std@@2HB DD 0fH		; std::numeric_limits<double>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@N@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@N@std@@2HB DD 035H		; std::numeric_limits<double>::digits
CONST	ENDS
;	COMDAT ?value@?$integral_constant@I$0A@@std@@2IB
CONST	SEGMENT
?value@?$integral_constant@I$0A@@std@@2IB DD 00H	; std::integral_constant<unsigned int,0>::value
CONST	ENDS
;	COMDAT ?min_exponent10@?$numeric_limits@M@std@@2HB
CONST	SEGMENT
?min_exponent10@?$numeric_limits@M@std@@2HB DD 0ffffffdbH ; std::numeric_limits<float>::min_exponent10
CONST	ENDS
;	COMDAT ?min_exponent@?$numeric_limits@M@std@@2HB
CONST	SEGMENT
?min_exponent@?$numeric_limits@M@std@@2HB DD 0ffffff83H	; std::numeric_limits<float>::min_exponent
CONST	ENDS
;	COMDAT ?max_exponent10@?$numeric_limits@M@std@@2HB
CONST	SEGMENT
?max_exponent10@?$numeric_limits@M@std@@2HB DD 026H	; std::numeric_limits<float>::max_exponent10
CONST	ENDS
;	COMDAT ?max_exponent@?$numeric_limits@M@std@@2HB
CONST	SEGMENT
?max_exponent@?$numeric_limits@M@std@@2HB DD 080H	; std::numeric_limits<float>::max_exponent
CONST	ENDS
;	COMDAT ?max_digits10@?$numeric_limits@M@std@@2HB
CONST	SEGMENT
?max_digits10@?$numeric_limits@M@std@@2HB DD 09H	; std::numeric_limits<float>::max_digits10
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@M@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@M@std@@2HB DD 06H		; std::numeric_limits<float>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@M@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@M@std@@2HB DD 018H		; std::numeric_limits<float>::digits
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@_K@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@_K@std@@2HB DD 013H		; std::numeric_limits<unsigned __int64>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@_K@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@_K@std@@2HB DD 040H		; std::numeric_limits<unsigned __int64>::digits
CONST	ENDS
;	COMDAT ?is_signed@?$numeric_limits@_K@std@@2_NB
CONST	SEGMENT
?is_signed@?$numeric_limits@_K@std@@2_NB DB 00H		; std::numeric_limits<unsigned __int64>::is_signed
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@_J@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@_J@std@@2HB DD 012H		; std::numeric_limits<__int64>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@_J@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@_J@std@@2HB DD 03fH		; std::numeric_limits<__int64>::digits
CONST	ENDS
;	COMDAT ?is_signed@?$numeric_limits@_J@std@@2_NB
CONST	SEGMENT
?is_signed@?$numeric_limits@_J@std@@2_NB DB 01H		; std::numeric_limits<__int64>::is_signed
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@K@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@K@std@@2HB DD 09H		; std::numeric_limits<unsigned long>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@K@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@K@std@@2HB DD 020H		; std::numeric_limits<unsigned long>::digits
CONST	ENDS
;	COMDAT ?is_signed@?$numeric_limits@K@std@@2_NB
CONST	SEGMENT
?is_signed@?$numeric_limits@K@std@@2_NB DB 00H		; std::numeric_limits<unsigned long>::is_signed
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@J@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@J@std@@2HB DD 09H		; std::numeric_limits<long>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@J@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@J@std@@2HB DD 01fH		; std::numeric_limits<long>::digits
CONST	ENDS
;	COMDAT ?is_signed@?$numeric_limits@J@std@@2_NB
CONST	SEGMENT
?is_signed@?$numeric_limits@J@std@@2_NB DB 01H		; std::numeric_limits<long>::is_signed
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@I@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@I@std@@2HB DD 09H		; std::numeric_limits<unsigned int>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@I@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@I@std@@2HB DD 020H		; std::numeric_limits<unsigned int>::digits
CONST	ENDS
;	COMDAT ?is_signed@?$numeric_limits@I@std@@2_NB
CONST	SEGMENT
?is_signed@?$numeric_limits@I@std@@2_NB DB 00H		; std::numeric_limits<unsigned int>::is_signed
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@H@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@H@std@@2HB DD 09H		; std::numeric_limits<int>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@H@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@H@std@@2HB DD 01fH		; std::numeric_limits<int>::digits
CONST	ENDS
;	COMDAT ?value@?$_Sizeof@HU_Nil@std@@U12@U12@U12@U12@U12@U12@@std@@2IB
CONST	SEGMENT
?value@?$_Sizeof@HU_Nil@std@@U12@U12@U12@U12@U12@U12@@std@@2IB DD 01H ; std::_Sizeof<int,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil>::value
CONST	ENDS
;	COMDAT ?is_signed@?$numeric_limits@H@std@@2_NB
CONST	SEGMENT
?is_signed@?$numeric_limits@H@std@@2_NB DB 01H		; std::numeric_limits<int>::is_signed
CONST	ENDS
;	COMDAT ?digits10@?$numeric_limits@G@std@@2HB
CONST	SEGMENT
?digits10@?$numeric_limits@G@std@@2HB DD 04H		; std::numeric_limits<unsigned short>::digits10
CONST	ENDS
;	COMDAT ?digits@?$numeric_limits@G@std@@2HB
CONST	SEGMENT
?digits@?$numeric_limits@G@std@@2HB DD 010H		; std::numeric_limits<unsigned short>::digits
CONST	ENDS
;	COMDAT ?is_signed@?$numeric_limits@G@std@@2_NB
CONST	SEGMENT
?is_signed@?$numeric_limits@G@std@@2_NB DB 00H		; std::numeric_limits<unsigned short>::is_signed
CONST	ENDS
_BSS	SEGMENT
_piecewise_construct DB 01H DUP (?)
_allocator_arg DB 01H DUP (?)
_BSS	ENDS
CRT$XCU	SEGMENT
_piecewise_construct$initializer$ DD FLAT:??__Epiecewise_construct@std@@YAXXZ
CRT$XCU	ENDS
CRT$XCU	SEGMENT
_allocator_arg$initializer$ DD FLAT:??__Eallocator_arg@std@@YAXXZ
CRT$XCU	ENDS
; Function compile flags: /Odtp
; File c:\program files (x86)\microsoft visual studio 11.0\vc\include\xutility
;	COMDAT ??__Eallocator_arg@std@@YAXXZ
text$yc	SEGMENT
$T1 = -1						; size = 1
??__Eallocator_arg@std@@YAXXZ PROC			; std::`dynamic initializer for 'allocator_arg'', COMDAT

; 3644 : const allocator_arg_t allocator_arg = allocator_arg_t();

	push	ebp
	mov	ebp, esp
	push	ecx
	xor	eax, eax
	mov	BYTE PTR $T1[ebp], al
	mov	esp, ebp
	pop	ebp
	ret	0
??__Eallocator_arg@std@@YAXXZ ENDP			; std::`dynamic initializer for 'allocator_arg''
text$yc	ENDS
; Function compile flags: /Odtp
; File c:\program files (x86)\microsoft visual studio 11.0\vc\include\utility
;	COMDAT ??__Epiecewise_construct@std@@YAXXZ
text$yc	SEGMENT
$T1 = -1						; size = 1
??__Epiecewise_construct@std@@YAXXZ PROC		; std::`dynamic initializer for 'piecewise_construct'', COMDAT

; 65   : 	piecewise_construct_t();

	push	ebp
	mov	ebp, esp
	push	ecx
	xor	eax, eax
	mov	BYTE PTR $T1[ebp], al
	mov	esp, ebp
	pop	ebp
	ret	0
??__Epiecewise_construct@std@@YAXXZ ENDP		; std::`dynamic initializer for 'piecewise_construct''
text$yc	ENDS
END
