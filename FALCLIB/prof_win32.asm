; Listing generated by Microsoft (R) Optimizing Compiler Version 17.00.51106.1 

	TITLE	C:\Users\Zhitao Li\Documents\Visual Studio 2012\Projects\Freefalcon\FALCLIB\prof_win32.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_Prof_get_time
EXTRN	__imp__QueryPerformanceCounter@4:PROC
EXTRN	__imp__QueryPerformanceFrequency@4:PROC
EXTRN	__fltused:DWORD
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\prof_win32.c
_TEXT	SEGMENT
tv90 = -60						; size = 8
tv88 = -52						; size = 8
tv85 = -44						; size = 8
tv83 = -36						; size = 8
tv80 = -28						; size = 8
_time$ = -20						; size = 8
_freq$ = -12						; size = 8
_ok$ = -4						; size = 4
_Prof_get_time PROC

; 9    : {

	push	ebp
	mov	ebp, esp
	sub	esp, 60					; 0000003cH

; 10   :    LARGE_INTEGER freq;
; 11   :    LARGE_INTEGER time;
; 12   : 
; 13   :    BOOL ok = QueryPerformanceFrequency(&freq);

	lea	eax, DWORD PTR _freq$[ebp]
	push	eax
	call	DWORD PTR __imp__QueryPerformanceFrequency@4
	mov	DWORD PTR _ok$[ebp], eax

; 14   :    assert(ok == TRUE);
; 15   : 
; 16   :    freq.QuadPart = freq.QuadPart;

	mov	ecx, DWORD PTR _freq$[ebp]
	mov	DWORD PTR _freq$[ebp], ecx
	mov	edx, DWORD PTR _freq$[ebp+4]
	mov	DWORD PTR _freq$[ebp+4], edx

; 17   : 
; 18   :    ok = QueryPerformanceCounter(&time);

	lea	eax, DWORD PTR _time$[ebp]
	push	eax
	call	DWORD PTR __imp__QueryPerformanceCounter@4
	mov	DWORD PTR _ok$[ebp], eax

; 19   :    assert(ok == TRUE);
; 20   : 
; 21   :    return time.QuadPart / (double) freq.QuadPart;

	fild	QWORD PTR _time$[ebp]
	fstp	QWORD PTR tv80[ebp]
	fld	QWORD PTR tv80[ebp]
	fstp	QWORD PTR tv83[ebp]
	movsd	xmm0, QWORD PTR tv83[ebp]
	fild	QWORD PTR _freq$[ebp]
	fstp	QWORD PTR tv85[ebp]
	fld	QWORD PTR tv85[ebp]
	fstp	QWORD PTR tv88[ebp]
	divsd	xmm0, QWORD PTR tv88[ebp]
	movsd	QWORD PTR tv90[ebp], xmm0
	fld	QWORD PTR tv90[ebp]

; 22   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_Prof_get_time ENDP
_TEXT	ENDS
END
