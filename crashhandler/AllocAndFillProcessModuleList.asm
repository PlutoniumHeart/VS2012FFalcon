; Listing generated by Microsoft (R) Optimizing Compiler Version 17.00.51106.1 

	TITLE	C:\Users\Zhitao Li\Documents\Visual Studio 2012\Projects\Freefalcon\crashhandler\AllocAndFillProcessModuleList.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_AllocAndFillProcessModuleList@8
EXTRN	__imp__GetLastError@0:PROC
EXTRN	__imp__SetLastError@4:PROC
EXTRN	__imp__HeapAlloc@12:PROC
EXTRN	__imp__GetCurrentProcessId@0:PROC
EXTRN	__imp__IsBadWritePtr@8:PROC
EXTRN	_free:PROC
EXTRN	_GetLoadedModules@16:PROC
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\crashhandler\allocandfillprocessmodulelist.cpp
_TEXT	SEGMENT
_dwLastError$ = -16					; size = 4
_bRet$ = -12						; size = 4
_uiQueryCount$ = -8					; size = 4
_pModArray$ = -4					; size = 4
_hHeap$ = 8						; size = 4
_puiCount$ = 12						; size = 4
_AllocAndFillProcessModuleList@8 PROC

; 15   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 16   :     ASSERT ( FALSE == IsBadWritePtr ( puiCount , sizeof ( LPUINT ) ) ) ;
; 17   :     if ( TRUE == IsBadWritePtr ( puiCount , sizeof ( LPUINT ) ) )

	push	4
	mov	eax, DWORD PTR _puiCount$[ebp]
	push	eax
	call	DWORD PTR __imp__IsBadWritePtr@8
	cmp	eax, 1
	jne	SHORT $LN7@AllocAndFi

; 18   :     {
; 19   :         SetLastError ( ERROR_INVALID_PARAMETER ) ;

	push	87					; 00000057H
	call	DWORD PTR __imp__SetLastError@4

; 20   :         return ( NULL ) ;

	xor	eax, eax
	jmp	$LN8@AllocAndFi
$LN7@AllocAndFi:

; 21   :     }
; 22   : 
; 23   :     ASSERT ( NULL != hHeap ) ;
; 24   :     if ( NULL == hHeap )

	cmp	DWORD PTR _hHeap$[ebp], 0
	jne	SHORT $LN6@AllocAndFi

; 25   :     {
; 26   :         SetLastError ( ERROR_INVALID_PARAMETER ) ;

	push	87					; 00000057H
	call	DWORD PTR __imp__SetLastError@4

; 27   :         return ( NULL ) ;

	xor	eax, eax
	jmp	$LN8@AllocAndFi
$LN6@AllocAndFi:

; 28   :     }
; 29   : 
; 30   :     // First, ask how many modules are really loaded.
; 31   :     UINT uiQueryCount ;
; 32   : 
; 33   :     BOOL bRet = GetLoadedModules ( GetCurrentProcessId ( ) ,
; 34   :                                    0                       ,
; 35   :                                    NULL                    ,
; 36   :                                    &uiQueryCount            ) ;

	lea	ecx, DWORD PTR _uiQueryCount$[ebp]
	push	ecx
	push	0
	push	0
	call	DWORD PTR __imp__GetCurrentProcessId@0
	push	eax
	call	_GetLoadedModules@16
	mov	DWORD PTR _bRet$[ebp], eax

; 37   :     ASSERT ( TRUE == bRet ) ;
; 38   :     ASSERT ( 0 != uiQueryCount ) ;
; 39   : 
; 40   :     if ( ( FALSE == bRet ) || ( 0 == uiQueryCount ) )

	cmp	DWORD PTR _bRet$[ebp], 0
	je	SHORT $LN4@AllocAndFi
	cmp	DWORD PTR _uiQueryCount$[ebp], 0
	jne	SHORT $LN5@AllocAndFi
$LN4@AllocAndFi:

; 41   :     {
; 42   :         return ( NULL ) ;

	xor	eax, eax
	jmp	SHORT $LN8@AllocAndFi
$LN5@AllocAndFi:

; 43   :     }
; 44   : 
; 45   :     // The HMODULE array.
; 46   :     HMODULE * pModArray ;
; 47   : 
; 48   :     // Allocate the buffer to hold the returned array.
; 49   :     pModArray = (HMODULE*)HeapAlloc ( hHeap             ,
; 50   :                                       HEAP_ZERO_MEMORY  ,
; 51   :                                       uiQueryCount *
; 52   :                                                    sizeof ( HMODULE ) );

	mov	edx, DWORD PTR _uiQueryCount$[ebp]
	shl	edx, 2
	push	edx
	push	8
	mov	eax, DWORD PTR _hHeap$[ebp]
	push	eax
	call	DWORD PTR __imp__HeapAlloc@12
	mov	DWORD PTR _pModArray$[ebp], eax

; 53   : 
; 54   :     ASSERT ( NULL != pModArray ) ;
; 55   :     if ( NULL == pModArray )

	cmp	DWORD PTR _pModArray$[ebp], 0
	jne	SHORT $LN3@AllocAndFi

; 56   :     {
; 57   :         return ( NULL ) ;

	xor	eax, eax
	jmp	SHORT $LN8@AllocAndFi
$LN3@AllocAndFi:

; 58   :     }
; 59   : 
; 60   :     // bRet holds BOOLEAN return values.
; 61   :     bRet = GetLoadedModules ( GetCurrentProcessId ( ) ,
; 62   :                               uiQueryCount            ,
; 63   :                               pModArray               ,
; 64   :                               puiCount                 ) ;

	mov	ecx, DWORD PTR _puiCount$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pModArray$[ebp]
	push	edx
	mov	eax, DWORD PTR _uiQueryCount$[ebp]
	push	eax
	call	DWORD PTR __imp__GetCurrentProcessId@0
	push	eax
	call	_GetLoadedModules@16
	mov	DWORD PTR _bRet$[ebp], eax

; 65   :     // Save off the last error so that the assert can still fire and
; 66   :     //  not change the value.
; 67   :     DWORD dwLastError = GetLastError ( ) ;

	call	DWORD PTR __imp__GetLastError@0
	mov	DWORD PTR _dwLastError$[ebp], eax

; 68   :     ASSERT ( TRUE == bRet ) ;
; 69   : 
; 70   :     if ( FALSE == bRet )

	cmp	DWORD PTR _bRet$[ebp], 0
	jne	SHORT $LN2@AllocAndFi

; 71   :     {
; 72   :         // Get rid of the last buffer.
; 73   :         free ( pModArray ) ;

	mov	ecx, DWORD PTR _pModArray$[ebp]
	push	ecx
	call	_free
	add	esp, 4

; 74   :         pModArray = NULL ;

	mov	DWORD PTR _pModArray$[ebp], 0

; 75   :         SetLastError ( dwLastError ) ;

	mov	edx, DWORD PTR _dwLastError$[ebp]
	push	edx
	call	DWORD PTR __imp__SetLastError@4

; 76   :     }
; 77   :     else

	jmp	SHORT $LN1@AllocAndFi
$LN2@AllocAndFi:

; 78   :     {
; 79   :         SetLastError ( ERROR_SUCCESS ) ;

	push	0
	call	DWORD PTR __imp__SetLastError@4
$LN1@AllocAndFi:

; 80   :     }
; 81   :     // All OK, Jumpmaster!
; 82   :     return ( pModArray ) ;

	mov	eax, DWORD PTR _pModArray$[ebp]
$LN8@AllocAndFi:

; 83   : }

	mov	esp, ebp
	pop	ebp
	ret	8
_AllocAndFillProcessModuleList@8 ENDP
_TEXT	ENDS
END
