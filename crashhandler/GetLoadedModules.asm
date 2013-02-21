; Listing generated by Microsoft (R) Optimizing Compiler Version 17.00.51106.1 

	TITLE	C:\Users\Zhitao Li\Documents\Visual Studio 2012\Projects\Freefalcon\crashhandler\GetLoadedModules.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_GetLoadedModules@16
EXTRN	_memset:PROC
EXTRN	__imp__GetVersionExA@4:PROC
EXTRN	__imp__IsBadWritePtr@8:PROC
EXTRN	__imp__SetLastErrorEx@8:PROC
EXTRN	?NT4GetLoadedModules@@YAHKIPAPAUHINSTANCE__@@PAI@Z:PROC ; NT4GetLoadedModules
EXTRN	?TLHELPGetLoadedModules@@YAHKIPAPAUHINSTANCE__@@PAI@Z:PROC ; TLHELPGetLoadedModules
EXTRN	@__security_check_cookie@4:PROC
EXTRN	___security_cookie:DWORD
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\crashhandler\getloadedmodules.cpp
_TEXT	SEGMENT
_bRet$ = -156						; size = 4
_stOSVI$ = -152						; size = 148
__$ArrayPad$ = -4					; size = 4
_dwPID$ = 8						; size = 4
_uiCount$ = 12						; size = 4
_paModArray$ = 16					; size = 4
_puiRealCount$ = 20					; size = 4
_GetLoadedModules@16 PROC

; 17   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 156				; 0000009cH
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax

; 18   :     // Do the debug checking.
; 19   :     ASSERT ( NULL != puiRealCount ) ;
; 20   :     ASSERT ( FALSE == IsBadWritePtr ( puiRealCount , sizeof ( UINT ) ));
; 21   : #ifdef _DEBUG
; 22   :     if ( 0 != uiCount )
; 23   :     {
; 24   :         ASSERT ( NULL != paModArray ) ;
; 25   :         ASSERT ( FALSE == IsBadWritePtr ( paModArray                   ,
; 26   :                                           uiCount *
; 27   :                                                 sizeof ( HMODULE )   ));
; 28   :     }
; 29   : #endif
; 30   : 
; 31   :     // Do the parameter checking for real.  Note that I only check the
; 32   :     //  memory in paModArray if uiCount is > 0.  The user can pass zero
; 33   :     //  in uiCount if they are just interested in the total to be
; 34   :     //  returned so they could dynamically allocate a buffer.
; 35   :     if ( ( TRUE == IsBadWritePtr ( puiRealCount , sizeof(UINT) ) )    ||
; 36   :          ( ( uiCount > 0 ) &&
; 37   :            ( TRUE == IsBadWritePtr ( paModArray ,
; 38   :                                      uiCount * sizeof(HMODULE) ) ) )   )

	push	4
	mov	eax, DWORD PTR _puiRealCount$[ebp]
	push	eax
	call	DWORD PTR __imp__IsBadWritePtr@8
	cmp	eax, 1
	je	SHORT $LN4@GetLoadedM
	cmp	DWORD PTR _uiCount$[ebp], 0
	jbe	SHORT $LN5@GetLoadedM
	mov	ecx, DWORD PTR _uiCount$[ebp]
	shl	ecx, 2
	push	ecx
	mov	edx, DWORD PTR _paModArray$[ebp]
	push	edx
	call	DWORD PTR __imp__IsBadWritePtr@8
	cmp	eax, 1
	jne	SHORT $LN5@GetLoadedM
$LN4@GetLoadedM:

; 39   :     {
; 40   :         SetLastErrorEx ( ERROR_INVALID_PARAMETER , SLE_ERROR ) ;

	push	1
	push	87					; 00000057H
	call	DWORD PTR __imp__SetLastErrorEx@8

; 41   :         return ( 0 ) ;

	xor	eax, eax
	jmp	$LN6@GetLoadedM
$LN5@GetLoadedM:

; 42   :     }
; 43   : 
; 44   :     // Figure out which OS we are on.
; 45   :     OSVERSIONINFO stOSVI ;
; 46   : 
; 47   :     memset ( &stOSVI , NULL , sizeof ( OSVERSIONINFO ) ) ;

	push	148					; 00000094H
	push	0
	lea	eax, DWORD PTR _stOSVI$[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 48   :     stOSVI.dwOSVersionInfoSize = sizeof ( OSVERSIONINFO ) ;

	mov	DWORD PTR _stOSVI$[ebp], 148		; 00000094H

; 49   : 
; 50   :     BOOL bRet = GetVersionEx ( &stOSVI ) ;

	lea	ecx, DWORD PTR _stOSVI$[ebp]
	push	ecx
	call	DWORD PTR __imp__GetVersionExA@4
	mov	DWORD PTR _bRet$[ebp], eax

; 51   :     ASSERT ( TRUE == bRet ) ;
; 52   :     if ( FALSE == bRet )

	cmp	DWORD PTR _bRet$[ebp], 0
	jne	SHORT $LN3@GetLoadedM

; 53   :     {
; 54   :         TRACE0 ( "GetVersionEx failed!\n" ) ;
; 55   :         return ( FALSE ) ;

	xor	eax, eax
	jmp	SHORT $LN6@GetLoadedM
$LN3@GetLoadedM:

; 56   :     }
; 57   : 
; 58   :     // Check the version and call the appropriate thing.
; 59   :     if ( ( VER_PLATFORM_WIN32_NT == stOSVI.dwPlatformId ) &&
; 60   :          ( 4 == stOSVI.dwMajorVersion                   )    )

	cmp	DWORD PTR _stOSVI$[ebp+16], 2
	jne	SHORT $LN2@GetLoadedM
	cmp	DWORD PTR _stOSVI$[ebp+4], 4
	jne	SHORT $LN2@GetLoadedM

; 61   :     {
; 62   :         // This is NT 4 so call it's specific version.
; 63   :         return ( NT4GetLoadedModules ( dwPID        ,
; 64   :                                        uiCount      ,
; 65   :                                        paModArray   ,
; 66   :                                        puiRealCount  ) );

	mov	edx, DWORD PTR _puiRealCount$[ebp]
	push	edx
	mov	eax, DWORD PTR _paModArray$[ebp]
	push	eax
	mov	ecx, DWORD PTR _uiCount$[ebp]
	push	ecx
	mov	edx, DWORD PTR _dwPID$[ebp]
	push	edx
	call	?NT4GetLoadedModules@@YAHKIPAPAUHINSTANCE__@@PAI@Z ; NT4GetLoadedModules
	add	esp, 16					; 00000010H
	jmp	SHORT $LN6@GetLoadedM

; 67   :     }
; 68   :     else

	jmp	SHORT $LN6@GetLoadedM
$LN2@GetLoadedM:

; 69   :     {
; 70   :         // Everyone other OS goes through TOOLHELP32.
; 71   :         return ( TLHELPGetLoadedModules ( dwPID         ,
; 72   :                                           uiCount       ,
; 73   :                                           paModArray    ,
; 74   :                                           puiRealCount   ) ) ;

	mov	eax, DWORD PTR _puiRealCount$[ebp]
	push	eax
	mov	ecx, DWORD PTR _paModArray$[ebp]
	push	ecx
	mov	edx, DWORD PTR _uiCount$[ebp]
	push	edx
	mov	eax, DWORD PTR _dwPID$[ebp]
	push	eax
	call	?TLHELPGetLoadedModules@@YAHKIPAPAUHINSTANCE__@@PAI@Z ; TLHELPGetLoadedModules
	add	esp, 16					; 00000010H
$LN6@GetLoadedM:

; 75   :     }
; 76   : }

	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_GetLoadedModules@16 ENDP
_TEXT	ENDS
END
