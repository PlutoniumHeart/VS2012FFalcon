; Listing generated by Microsoft (R) Optimizing Compiler Version 17.00.51106.1 

	TITLE	C:\Users\Zhitao Li\Documents\Visual Studio 2012\Projects\Freefalcon\crashhandler\TLHELPProcessInfo.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

_BSS	SEGMENT
_g_bInitialized DD 01H DUP (?)
_g_pCreateToolhelp32Snapshot DD 01H DUP (?)
_g_pModule32First DD 01H DUP (?)
_g_pModule32Next DD 01H DUP (?)
_g_pProcess32First DD 01H DUP (?)
_g_pProcess32Next DD 01H DUP (?)
_g_pThread32First DD 01H DUP (?)
_g_pThread32Next DD 01H DUP (?)
_BSS	ENDS
PUBLIC	?TLHELPGetLoadedModules@@YAHKIPAPAUHINSTANCE__@@PAI@Z ; TLHELPGetLoadedModules
PUBLIC	??_C@_0N@NHGLKGEC@KERNEL32?4DLL?$AA@		; `string'
PUBLIC	??_C@_0BJ@JEFKDHMD@CreateToolhelp32Snapshot?$AA@ ; `string'
PUBLIC	??_C@_0O@CNMFJJGO@Module32First?$AA@		; `string'
PUBLIC	??_C@_0N@KIGOLBLC@Module32Next?$AA@		; `string'
PUBLIC	??_C@_0P@ILGHDLOE@Process32First?$AA@		; `string'
PUBLIC	??_C@_0O@LGJLFMBH@Process32Next?$AA@		; `string'
PUBLIC	??_C@_0O@DHAEEPDO@Thread32First?$AA@		; `string'
PUBLIC	??_C@_0N@LDGMJMKG@Thread32Next?$AA@		; `string'
EXTRN	_memset:PROC
EXTRN	__imp__CloseHandle@4:PROC
EXTRN	__imp__SetLastError@4:PROC
EXTRN	__imp__GetModuleHandleA@4:PROC
EXTRN	__imp__GetProcAddress@8:PROC
EXTRN	__imp__SetLastErrorEx@8:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	___security_cookie:DWORD
;	COMDAT ??_C@_0N@LDGMJMKG@Thread32Next?$AA@
CONST	SEGMENT
??_C@_0N@LDGMJMKG@Thread32Next?$AA@ DB 'Thread32Next', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0O@DHAEEPDO@Thread32First?$AA@
CONST	SEGMENT
??_C@_0O@DHAEEPDO@Thread32First?$AA@ DB 'Thread32First', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0O@LGJLFMBH@Process32Next?$AA@
CONST	SEGMENT
??_C@_0O@LGJLFMBH@Process32Next?$AA@ DB 'Process32Next', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0P@ILGHDLOE@Process32First?$AA@
CONST	SEGMENT
??_C@_0P@ILGHDLOE@Process32First?$AA@ DB 'Process32First', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0N@KIGOLBLC@Module32Next?$AA@
CONST	SEGMENT
??_C@_0N@KIGOLBLC@Module32Next?$AA@ DB 'Module32Next', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0O@CNMFJJGO@Module32First?$AA@
CONST	SEGMENT
??_C@_0O@CNMFJJGO@Module32First?$AA@ DB 'Module32First', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BJ@JEFKDHMD@CreateToolhelp32Snapshot?$AA@
CONST	SEGMENT
??_C@_0BJ@JEFKDHMD@CreateToolhelp32Snapshot?$AA@ DB 'CreateToolhelp32Snap'
	DB	'shot', 00H					; `string'
CONST	ENDS
;	COMDAT ??_C@_0N@NHGLKGEC@KERNEL32?4DLL?$AA@
CONST	SEGMENT
??_C@_0N@NHGLKGEC@KERNEL32?4DLL?$AA@ DB 'KERNEL32.DLL', 00H ; `string'
CONST	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\crashhandler\tlhelpprocessinfo.cpp
_TEXT	SEGMENT
_bRet$ = -564						; size = 4
_bBuffToSmall$ = -560					; size = 4
_hModSnap$ = -556					; size = 4
_stME32$ = -552						; size = 548
__$ArrayPad$ = -4					; size = 4
_dwPID$ = 8						; size = 4
_uiCount$ = 12						; size = 4
_paModArray$ = 16					; size = 4
_puiRealCount$ = 20					; size = 4
?TLHELPGetLoadedModules@@YAHKIPAPAUHINSTANCE__@@PAI@Z PROC ; TLHELPGetLoadedModules

; 159  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 564				; 00000234H
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax

; 160  : 
; 161  :     // Always set puiRealCount to a know value before anything else.
; 162  :     *puiRealCount = 0 ;

	mov	eax, DWORD PTR _puiRealCount$[ebp]
	mov	DWORD PTR [eax], 0

; 163  : 
; 164  :     if ( FALSE == InitTOOLHELP32 ( ) )

	call	?InitTOOLHELP32@@YAHXZ			; InitTOOLHELP32
	test	eax, eax
	jne	SHORT $LN12@TLHELPGetL

; 165  :     {
; 166  :         ASSERT ( FALSE ) ;
; 167  :         SetLastErrorEx ( ERROR_DLL_INIT_FAILED , SLE_ERROR ) ;

	push	1
	push	1114					; 0000045aH
	call	DWORD PTR __imp__SetLastErrorEx@8

; 168  :         return ( FALSE ) ;

	xor	eax, eax
	jmp	$LN13@TLHELPGetL
$LN12@TLHELPGetL:

; 169  :     }
; 170  : 
; 171  :     // The snapshot handle.
; 172  :     HANDLE        hModSnap     = NULL ;

	mov	DWORD PTR _hModSnap$[ebp], 0

; 173  :     // The module structure.
; 174  :     MODULEENTRY32 stME32              ;
; 175  :     // The return value for the function.
; 176  :     BOOL          bRet         = TRUE ;

	mov	DWORD PTR _bRet$[ebp], 1

; 177  :     // A flag kept to report if the buffer was too small.
; 178  :     BOOL          bBuffToSmall = FALSE ;

	mov	DWORD PTR _bBuffToSmall$[ebp], 0

; 179  : 
; 180  : 
; 181  :     // Get the snapshot for the specified process.
; 182  :     hModSnap = g_pCreateToolhelp32Snapshot ( TH32CS_SNAPMODULE ,
; 183  :                                              dwPID              ) ;

	mov	ecx, DWORD PTR _dwPID$[ebp]
	push	ecx
	push	8
	call	DWORD PTR _g_pCreateToolhelp32Snapshot
	mov	DWORD PTR _hModSnap$[ebp], eax

; 184  :     ASSERT ( INVALID_HANDLE_VALUE != hModSnap ) ;
; 185  :     if ( INVALID_HANDLE_VALUE == hModSnap )

	cmp	DWORD PTR _hModSnap$[ebp], -1
	jne	SHORT $LN11@TLHELPGetL

; 186  :     {
; 187  :         TRACE1 ( "Unable to get module snapshot for %08X\n" , dwPID ) ;
; 188  :         return ( FALSE ) ;

	xor	eax, eax
	jmp	$LN13@TLHELPGetL
$LN11@TLHELPGetL:

; 189  :     }
; 190  : 
; 191  :     memset ( &stME32 , NULL , sizeof ( MODULEENTRY32 ) ) ;

	push	548					; 00000224H
	push	0
	lea	edx, DWORD PTR _stME32$[ebp]
	push	edx
	call	_memset
	add	esp, 12					; 0000000cH

; 192  :     stME32.dwSize = sizeof ( MODULEENTRY32 ) ;

	mov	DWORD PTR _stME32$[ebp], 548		; 00000224H

; 193  : 
; 194  :     // Start getting the module values.
; 195  :     if ( TRUE == g_pModule32First ( hModSnap , &stME32 ) )

	lea	eax, DWORD PTR _stME32$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hModSnap$[ebp]
	push	ecx
	call	DWORD PTR _g_pModule32First
	cmp	eax, 1
	jne	SHORT $LN10@TLHELPGetL
$LN9@TLHELPGetL:

; 196  :     {
; 197  :         do
; 198  :         {
; 199  :             // If uiCount is not zero, copy values.
; 200  :             if ( 0 != uiCount )

	cmp	DWORD PTR _uiCount$[ebp], 0
	je	SHORT $LN6@TLHELPGetL

; 201  :             {
; 202  :                 // If the passed in buffer is to small, set the flag.
; 203  :                 //  This is so we match the functionality of the NT4
; 204  :                 //  version of this function which will return the
; 205  :                 //  correct total needed.
; 206  :                 if ( ( TRUE == bBuffToSmall     ) ||
; 207  :                      ( *puiRealCount == uiCount )   )

	cmp	DWORD PTR _bBuffToSmall$[ebp], 1
	je	SHORT $LN4@TLHELPGetL
	mov	edx, DWORD PTR _puiRealCount$[ebp]
	mov	eax, DWORD PTR [edx]
	cmp	eax, DWORD PTR _uiCount$[ebp]
	jne	SHORT $LN5@TLHELPGetL
$LN4@TLHELPGetL:

; 208  :                 {
; 209  :                     bBuffToSmall = TRUE ;

	mov	DWORD PTR _bBuffToSmall$[ebp], 1

; 210  :                     break ;

	jmp	SHORT $LN7@TLHELPGetL

; 211  :                 }
; 212  :                 else

	jmp	SHORT $LN6@TLHELPGetL
$LN5@TLHELPGetL:

; 213  :                 {
; 214  :                     // Copy this value in.
; 215  :                     paModArray[ *puiRealCount ] =
; 216  :                                          (HINSTANCE)stME32.modBaseAddr ;

	mov	ecx, DWORD PTR _puiRealCount$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR _paModArray$[ebp]
	mov	ecx, DWORD PTR _stME32$[ebp+20]
	mov	DWORD PTR [eax+edx*4], ecx
$LN6@TLHELPGetL:

; 217  :                 }
; 218  :             }
; 219  :             // Bump up the real total count.
; 220  :             *puiRealCount += 1 ;

	mov	edx, DWORD PTR _puiRealCount$[ebp]
	mov	eax, DWORD PTR [edx]
	add	eax, 1
	mov	ecx, DWORD PTR _puiRealCount$[ebp]
	mov	DWORD PTR [ecx], eax

; 221  :         }
; 222  :         while ( ( TRUE == g_pModule32Next ( hModSnap , &stME32 ) ) ) ;

	lea	edx, DWORD PTR _stME32$[ebp]
	push	edx
	mov	eax, DWORD PTR _hModSnap$[ebp]
	push	eax
	call	DWORD PTR _g_pModule32Next
	cmp	eax, 1
	je	SHORT $LN9@TLHELPGetL
$LN7@TLHELPGetL:

; 223  :     }
; 224  :     else

	jmp	SHORT $LN2@TLHELPGetL
$LN10@TLHELPGetL:

; 225  :     {
; 226  :         ASSERT ( FALSE ) ;
; 227  :         TRACE0 ( "Failed to get first module!\n" ) ;
; 228  :         bRet = FALSE ;

	mov	DWORD PTR _bRet$[ebp], 0
$LN2@TLHELPGetL:

; 229  :     }
; 230  : 
; 231  :     // Close the snapshot handle.
; 232  :     VERIFY ( CloseHandle ( hModSnap ) ) ;

	mov	ecx, DWORD PTR _hModSnap$[ebp]
	push	ecx
	call	DWORD PTR __imp__CloseHandle@4

; 233  : 
; 234  :     // Check if the buffer was too small.
; 235  :     if ( TRUE == bBuffToSmall )

	cmp	DWORD PTR _bBuffToSmall$[ebp], 1
	jne	SHORT $LN1@TLHELPGetL

; 236  :     {
; 237  :         ASSERT ( FALSE ) ;
; 238  :         TRACE0 ( "Buffer to small in TLHELPGetLoadedModules\n" ) ;
; 239  :         SetLastErrorEx ( ERROR_INSUFFICIENT_BUFFER , SLE_ERROR ) ;

	push	1
	push	122					; 0000007aH
	call	DWORD PTR __imp__SetLastErrorEx@8

; 240  :         bRet = FALSE ;

	mov	DWORD PTR _bRet$[ebp], 0
$LN1@TLHELPGetL:

; 241  :     }
; 242  : 
; 243  :     // All OK, Jumpmaster!
; 244  :     SetLastError ( ERROR_SUCCESS ) ;

	push	0
	call	DWORD PTR __imp__SetLastError@4

; 245  :     return ( bRet ) ;

	mov	eax, DWORD PTR _bRet$[ebp]
$LN13@TLHELPGetL:

; 246  : }

	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	0
?TLHELPGetLoadedModules@@YAHKIPAPAUHINSTANCE__@@PAI@Z ENDP ; TLHELPGetLoadedModules
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\crashhandler\tlhelpprocessinfo.cpp
_TEXT	SEGMENT
tv128 = -12						; size = 4
_bRet$ = -8						; size = 4
_hKernel$ = -4						; size = 4
?InitTOOLHELP32@@YAHXZ PROC				; InitTOOLHELP32

; 55   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 56   :     if ( TRUE == g_bInitialized )

	cmp	DWORD PTR _g_bInitialized, 1
	jne	SHORT $LN4@InitTOOLHE

; 57   :     {
; 58   :         return ( TRUE ) ;

	mov	eax, 1
	jmp	$LN5@InitTOOLHE
$LN4@InitTOOLHE:

; 59   :     }
; 60   : 
; 61   :     BOOL      bRet    = FALSE ;

	mov	DWORD PTR _bRet$[ebp], 0

; 62   :     HINSTANCE hKernel = NULL  ;

	mov	DWORD PTR _hKernel$[ebp], 0

; 63   : 
; 64   :     // Obtain the module handle of the kernel to retrieve addresses of
; 65   :     //  the tool helper functions.
; 66   :     hKernel = GetModuleHandleA ( "KERNEL32.DLL" ) ;

	push	OFFSET ??_C@_0N@NHGLKGEC@KERNEL32?4DLL?$AA@
	call	DWORD PTR __imp__GetModuleHandleA@4
	mov	DWORD PTR _hKernel$[ebp], eax

; 67   :     ASSERT ( NULL != hKernel ) ;
; 68   : 
; 69   :     if ( NULL != hKernel )

	cmp	DWORD PTR _hKernel$[ebp], 0
	je	$LN3@InitTOOLHE

; 70   :     {
; 71   :         g_pCreateToolhelp32Snapshot =
; 72   :            (CREATESNAPSHOT)GetProcAddress ( hKernel ,
; 73   :                                             "CreateToolhelp32Snapshot");

	push	OFFSET ??_C@_0BJ@JEFKDHMD@CreateToolhelp32Snapshot?$AA@
	mov	eax, DWORD PTR _hKernel$[ebp]
	push	eax
	call	DWORD PTR __imp__GetProcAddress@8
	mov	DWORD PTR _g_pCreateToolhelp32Snapshot, eax

; 74   :         ASSERT ( NULL != g_pCreateToolhelp32Snapshot ) ;
; 75   : 
; 76   :         g_pModule32First = (MODULEWALK)GetProcAddress (hKernel ,
; 77   :                                                        "Module32First");

	push	OFFSET ??_C@_0O@CNMFJJGO@Module32First?$AA@
	mov	ecx, DWORD PTR _hKernel$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetProcAddress@8
	mov	DWORD PTR _g_pModule32First, eax

; 78   :         ASSERT ( NULL != g_pModule32First ) ;
; 79   : 
; 80   :         g_pModule32Next = (MODULEWALK)GetProcAddress (hKernel        ,
; 81   :                                                       "Module32Next"  );

	push	OFFSET ??_C@_0N@KIGOLBLC@Module32Next?$AA@
	mov	edx, DWORD PTR _hKernel$[ebp]
	push	edx
	call	DWORD PTR __imp__GetProcAddress@8
	mov	DWORD PTR _g_pModule32Next, eax

; 82   :         ASSERT ( NULL != g_pModule32Next ) ;
; 83   : 
; 84   :         g_pProcess32First =
; 85   :                 (PROCESSWALK)GetProcAddress ( hKernel          ,
; 86   :                                               "Process32First"  ) ;

	push	OFFSET ??_C@_0P@ILGHDLOE@Process32First?$AA@
	mov	eax, DWORD PTR _hKernel$[ebp]
	push	eax
	call	DWORD PTR __imp__GetProcAddress@8
	mov	DWORD PTR _g_pProcess32First, eax

; 87   :         ASSERT ( NULL != g_pProcess32First ) ;
; 88   : 
; 89   :         g_pProcess32Next =
; 90   :                 (PROCESSWALK)GetProcAddress ( hKernel         ,
; 91   :                                               "Process32Next" ) ;

	push	OFFSET ??_C@_0O@LGJLFMBH@Process32Next?$AA@
	mov	ecx, DWORD PTR _hKernel$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetProcAddress@8
	mov	DWORD PTR _g_pProcess32Next, eax

; 92   :         ASSERT ( NULL != g_pProcess32Next ) ;
; 93   : 
; 94   :         g_pThread32First =
; 95   :                 (THREADWALK)GetProcAddress ( hKernel         ,
; 96   :                                              "Thread32First"  ) ;

	push	OFFSET ??_C@_0O@DHAEEPDO@Thread32First?$AA@
	mov	edx, DWORD PTR _hKernel$[ebp]
	push	edx
	call	DWORD PTR __imp__GetProcAddress@8
	mov	DWORD PTR _g_pThread32First, eax

; 97   :         ASSERT ( NULL != g_pThread32First ) ;
; 98   : 
; 99   :         g_pThread32Next =
; 100  :                 (THREADWALK)GetProcAddress ( hKernel        ,
; 101  :                                              "Thread32Next"  ) ;

	push	OFFSET ??_C@_0N@LDGMJMKG@Thread32Next?$AA@
	mov	eax, DWORD PTR _hKernel$[ebp]
	push	eax
	call	DWORD PTR __imp__GetProcAddress@8
	mov	DWORD PTR _g_pThread32Next, eax

; 102  :         ASSERT ( NULL != g_pThread32Next ) ;
; 103  : 
; 104  :         // All addresses must be non-NULL to be successful.  If one of
; 105  :         //  these addresses is NULL, one of the needed lists cannot be
; 106  :         //  walked.
; 107  : 
; 108  :         bRet =  g_pModule32First            &&
; 109  :                 g_pModule32Next             &&
; 110  :                 g_pProcess32First           &&
; 111  :                 g_pProcess32Next            &&
; 112  :                 g_pThread32First            &&
; 113  :                 g_pThread32Next             &&
; 114  :                 g_pCreateToolhelp32Snapshot    ;

	cmp	DWORD PTR _g_pModule32First, 0
	je	SHORT $LN7@InitTOOLHE
	cmp	DWORD PTR _g_pModule32Next, 0
	je	SHORT $LN7@InitTOOLHE
	cmp	DWORD PTR _g_pProcess32First, 0
	je	SHORT $LN7@InitTOOLHE
	cmp	DWORD PTR _g_pProcess32Next, 0
	je	SHORT $LN7@InitTOOLHE
	cmp	DWORD PTR _g_pThread32First, 0
	je	SHORT $LN7@InitTOOLHE
	cmp	DWORD PTR _g_pThread32Next, 0
	je	SHORT $LN7@InitTOOLHE
	cmp	DWORD PTR _g_pCreateToolhelp32Snapshot, 0
	je	SHORT $LN7@InitTOOLHE
	mov	DWORD PTR tv128[ebp], 1
	jmp	SHORT $LN8@InitTOOLHE
$LN7@InitTOOLHE:
	mov	DWORD PTR tv128[ebp], 0
$LN8@InitTOOLHE:
	mov	ecx, DWORD PTR tv128[ebp]
	mov	DWORD PTR _bRet$[ebp], ecx

; 115  :     }
; 116  :     else

	jmp	SHORT $LN2@InitTOOLHE
$LN3@InitTOOLHE:

; 117  :     {
; 118  :         // Could not get the module handle of kernel.
; 119  :         SetLastErrorEx ( ERROR_DLL_INIT_FAILED , SLE_ERROR ) ;

	push	1
	push	1114					; 0000045aH
	call	DWORD PTR __imp__SetLastErrorEx@8

; 120  :         bRet = FALSE ;

	mov	DWORD PTR _bRet$[ebp], 0
$LN2@InitTOOLHE:

; 121  :     }
; 122  : 
; 123  :     ASSERT ( TRUE == bRet ) ;
; 124  : 
; 125  :     if ( TRUE == bRet )

	cmp	DWORD PTR _bRet$[ebp], 1
	jne	SHORT $LN1@InitTOOLHE

; 126  :     {
; 127  :         // All OK, Jumpmaster!
; 128  :         g_bInitialized = TRUE ;

	mov	DWORD PTR _g_bInitialized, 1
$LN1@InitTOOLHE:

; 129  :     }
; 130  :     return ( bRet ) ;

	mov	eax, DWORD PTR _bRet$[ebp]
$LN5@InitTOOLHE:

; 131  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?InitTOOLHELP32@@YAHXZ ENDP				; InitTOOLHELP32
_TEXT	ENDS
END
