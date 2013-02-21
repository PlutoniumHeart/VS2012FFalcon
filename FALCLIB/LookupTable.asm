; Listing generated by Microsoft (R) Optimizing Compiler Version 17.00.51106.1 

	TITLE	C:\Users\Zhitao Li\Documents\Visual Studio 2012\Projects\Freefalcon\FALCLIB\LookupTable.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	??0LookupTable@@QAE@XZ				; LookupTable::LookupTable
PUBLIC	??1LookupTable@@QAE@XZ				; LookupTable::~LookupTable
PUBLIC	?Lookup@LookupTable@@QAEMM@Z			; LookupTable::Lookup
PUBLIC	??0TwoDimensionTable@@QAE@XZ			; TwoDimensionTable::TwoDimensionTable
PUBLIC	??1TwoDimensionTable@@QAE@XZ			; TwoDimensionTable::~TwoDimensionTable
PUBLIC	?Parse@TwoDimensionTable@@QAEXPAD@Z		; TwoDimensionTable::Parse
PUBLIC	?Lookup@TwoDimensionTable@@QAEMMM@Z		; TwoDimensionTable::Lookup
PUBLIC	?Data@TwoDimensionTable@@QAEMHH@Z		; TwoDimensionTable::Data
PUBLIC	__real@00000000
PUBLIC	__real@3f800000
EXTRN	??2@YAPAXI@Z:PROC				; operator new
EXTRN	??3@YAXPAX@Z:PROC				; operator delete
EXTRN	?TokenF@@YAMM@Z:PROC				; TokenF
EXTRN	?TokenI@@YAHH@Z:PROC				; TokenI
EXTRN	?SetTokenString@@YAXPAD@Z:PROC			; SetTokenString
EXTRN	__fltused:DWORD
;	COMDAT __real@3f800000
CONST	SEGMENT
__real@3f800000 DD 03f800000r			; 1
CONST	ENDS
;	COMDAT __real@00000000
CONST	SEGMENT
__real@00000000 DD 000000000r			; 0
CONST	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\include\lookuptable.h
;	COMDAT ?Data@TwoDimensionTable@@QAEMHH@Z
_TEXT	SEGMENT
_this$ = -4						; size = 4
_x$ = 8							; size = 4
_y$ = 12						; size = 4
?Data@TwoDimensionTable@@QAEMHH@Z PROC			; TwoDimensionTable::Data, COMDAT
; _this$ = ecx

; 22   : 	float Data(int x, int y) { return data[x * axis[0].breakPointCount + y]; };

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, 8
	imul	eax, 0
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _x$[ebp]
	imul	edx, DWORD PTR [ecx+eax]
	add	edx, DWORD PTR _y$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+16]
	fld	DWORD PTR [ecx+edx*4]
	mov	esp, ebp
	pop	ebp
	ret	8
?Data@TwoDimensionTable@@QAEMHH@Z ENDP			; TwoDimensionTable::Data
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\lookuptable.cpp
_TEXT	SEGMENT
_fraction$ = -108					; size = 8
_arg$ = -100						; size = 8
_index2$ = -92						; size = 8
_index1$ = -84						; size = 8
tv432 = -76						; size = 4
_e$ = -72						; size = 4
tv428 = -68						; size = 4
tv446 = -64						; size = 4
tv442 = -60						; size = 4
tv419 = -56						; size = 4
tv444 = -52						; size = 4
tv410 = -48						; size = 4
tv400 = -44						; size = 4
tv440 = -40						; size = 4
tv436 = -36						; size = 4
tv391 = -32						; size = 4
tv438 = -28						; size = 4
tv382 = -24						; size = 4
_d$ = -20						; size = 4
tv142 = -16						; size = 4
_t$1 = -12						; size = 4
_this$ = -8						; size = 4
_l$ = -4						; size = 4
_a$ = 8							; size = 4
_b$ = 12						; size = 4
?Lookup@TwoDimensionTable@@QAEMMM@Z PROC		; TwoDimensionTable::Lookup
; _this$ = ecx

; 99   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 108				; 0000006cH
	mov	DWORD PTR _this$[ebp], ecx

; 100  : 	float arg[2];
; 101  : 
; 102  : 	if(!data) return 0;

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+16], 0
	jne	SHORT $LN12@Lookup
	fldz
	jmp	$LN13@Lookup
$LN12@Lookup:

; 103  : 
; 104  : 	arg[0] = a;

	mov	ecx, 4
	imul	ecx, 0
	movss	xmm0, DWORD PTR _a$[ebp]
	movss	DWORD PTR _arg$[ebp+ecx], xmm0

; 105  : 	arg[1] = b;

	mov	edx, 4
	shl	edx, 0
	movss	xmm0, DWORD PTR _b$[ebp]
	movss	DWORD PTR _arg$[ebp+edx], xmm0

; 106  : 
; 107  : 	int index1[2], index2[2];
; 108  : 	float fraction[2];
; 109  : 
; 110  : 	int l;
; 111  : 
; 112  : 	for(l=0; l<2; l++)

	mov	DWORD PTR _l$[ebp], 0
	jmp	SHORT $LN11@Lookup
$LN10@Lookup:
	mov	eax, DWORD PTR _l$[ebp]
	add	eax, 1
	mov	DWORD PTR _l$[ebp], eax
$LN11@Lookup:
	cmp	DWORD PTR _l$[ebp], 2
	jge	$LN9@Lookup

; 113  : 	{
; 114  : 		if(arg[l] <= axis[l].breakPoint[0])

	mov	ecx, 4
	imul	ecx, 0
	mov	edx, DWORD PTR _l$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [eax+edx*8+4]
	mov	eax, DWORD PTR _l$[ebp]
	movss	xmm0, DWORD PTR [ecx+edx]
	comiss	xmm0, DWORD PTR _arg$[ebp+eax*4]
	jb	SHORT $LN8@Lookup

; 115  : 		{
; 116  : 			index1[l] = index2[l] = 0;

	mov	ecx, DWORD PTR _l$[ebp]
	mov	DWORD PTR _index2$[ebp+ecx*4], 0
	mov	edx, DWORD PTR _l$[ebp]
	mov	DWORD PTR _index1$[ebp+edx*4], 0

; 117  : 			fraction[l] = 0;

	mov	eax, DWORD PTR _l$[ebp]
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _fraction$[ebp+eax*4], xmm0

; 118  : 		}
; 119  : 		else

	jmp	$LN2@Lookup
$LN8@Lookup:

; 120  : 		{
; 121  : 			if(arg[l] >= axis[l].breakPoint[axis[l].breakPointCount - 1])

	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+ecx*8]
	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+ecx*8+4]
	mov	edx, DWORD PTR _l$[ebp]
	movss	xmm0, DWORD PTR _arg$[ebp+edx*4]
	comiss	xmm0, DWORD PTR [ecx+eax*4-4]
	jb	SHORT $LN6@Lookup

; 122  : 			{
; 123  : 				index1[l] = index2[l] = axis[l].breakPointCount - 1;

	mov	eax, DWORD PTR _l$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*8]
	sub	edx, 1
	mov	DWORD PTR tv142[ebp], edx
	mov	eax, DWORD PTR _l$[ebp]
	mov	ecx, DWORD PTR tv142[ebp]
	mov	DWORD PTR _index2$[ebp+eax*4], ecx
	mov	edx, DWORD PTR _l$[ebp]
	mov	eax, DWORD PTR tv142[ebp]
	mov	DWORD PTR _index1$[ebp+edx*4], eax

; 124  : 				fraction[l] = 0;

	mov	ecx, DWORD PTR _l$[ebp]
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR _fraction$[ebp+ecx*4], xmm0

; 125  : 			}
; 126  : 			else

	jmp	$LN2@Lookup
$LN6@Lookup:

; 127  : 			{
; 128  : 				int t;
; 129  : 
; 130  : 				for(t=0; t<axis[l].breakPointCount-1; t++)

	mov	DWORD PTR _t$1[ebp], 0
	jmp	SHORT $LN4@Lookup
$LN3@Lookup:
	mov	edx, DWORD PTR _t$1[ebp]
	add	edx, 1
	mov	DWORD PTR _t$1[ebp], edx
$LN4@Lookup:
	mov	eax, DWORD PTR _l$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*8]
	sub	edx, 1
	cmp	DWORD PTR _t$1[ebp], edx
	jge	$LN2@Lookup

; 131  : 				{
; 132  : 					if( arg[l] >  axis[l].breakPoint[t] && 
; 133  : 						arg[l] <= axis[l].breakPoint[t+1] )

	mov	eax, DWORD PTR _l$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*8+4]
	mov	eax, DWORD PTR _l$[ebp]
	mov	ecx, DWORD PTR _t$1[ebp]
	movss	xmm0, DWORD PTR _arg$[ebp+eax*4]
	comiss	xmm0, DWORD PTR [edx+ecx*4]
	jbe	$LN1@Lookup
	mov	edx, DWORD PTR _l$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+edx*8+4]
	mov	edx, DWORD PTR _t$1[ebp]
	mov	eax, DWORD PTR _l$[ebp]
	movss	xmm0, DWORD PTR [ecx+edx*4+4]
	comiss	xmm0, DWORD PTR _arg$[ebp+eax*4]
	jb	SHORT $LN1@Lookup

; 134  : 					{
; 135  : 						index1[l]   = t;

	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR _t$1[ebp]
	mov	DWORD PTR _index1$[ebp+ecx*4], edx

; 136  : 						index2[l]   = t+1;

	mov	eax, DWORD PTR _t$1[ebp]
	add	eax, 1
	mov	ecx, DWORD PTR _l$[ebp]
	mov	DWORD PTR _index2$[ebp+ecx*4], eax

; 137  : 						fraction[l] = RESCALE(arg[l],axis[l].breakPoint[t],axis[l].breakPoint[t],0,1);

	mov	edx, DWORD PTR _l$[ebp]
	movss	xmm0, DWORD PTR _arg$[ebp+edx*4]
	mov	eax, DWORD PTR _l$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*8+4]
	mov	eax, DWORD PTR _t$1[ebp]
	subss	xmm0, DWORD PTR [edx+eax*4]
	mulss	xmm0, DWORD PTR __real@3f800000
	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+ecx*8+4]
	mov	ecx, DWORD PTR _t$1[ebp]
	movss	xmm1, DWORD PTR [eax+ecx*4]
	mov	edx, DWORD PTR _l$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+edx*8+4]
	mov	edx, DWORD PTR _t$1[ebp]
	subss	xmm1, DWORD PTR [ecx+edx*4]
	divss	xmm0, xmm1
	addss	xmm0, DWORD PTR __real@00000000
	mov	eax, DWORD PTR _l$[ebp]
	movss	DWORD PTR _fraction$[ebp+eax*4], xmm0
$LN1@Lookup:

; 138  : 					}
; 139  : 				}

	jmp	$LN3@Lookup
$LN2@Lookup:

; 140  : 			}
; 141  : 		}
; 142  : 	}

	jmp	$LN10@Lookup
$LN9@Lookup:

; 143  : 
; 144  : 	float d,e;
; 145  : 
; 146  : 	d = RESCALE(fraction[0], 0, 1, Data(index1[0],index1[1]), Data(index2[0],index1[1]) );

	mov	ecx, 4
	imul	ecx, 0
	movss	xmm0, DWORD PTR _fraction$[ebp+ecx]
	subss	xmm0, DWORD PTR __real@00000000
	mov	edx, 4
	shl	edx, 0
	mov	eax, DWORD PTR _index1$[ebp+edx]
	push	eax
	mov	ecx, 4
	imul	ecx, 0
	mov	edx, DWORD PTR _index2$[ebp+ecx]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	movss	DWORD PTR tv436[ebp], xmm0
	call	?Data@TwoDimensionTable@@QAEMHH@Z	; TwoDimensionTable::Data
	fstp	DWORD PTR tv382[ebp]
	movss	xmm0, DWORD PTR tv382[ebp]
	mov	eax, 4
	shl	eax, 0
	mov	ecx, DWORD PTR _index1$[ebp+eax]
	push	ecx
	mov	edx, 4
	imul	edx, 0
	mov	eax, DWORD PTR _index1$[ebp+edx]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	movss	DWORD PTR tv438[ebp], xmm0
	call	?Data@TwoDimensionTable@@QAEMHH@Z	; TwoDimensionTable::Data
	fstp	DWORD PTR tv391[ebp]
	movss	xmm0, DWORD PTR tv438[ebp]
	subss	xmm0, DWORD PTR tv391[ebp]
	movss	xmm1, DWORD PTR tv436[ebp]
	mulss	xmm1, xmm0
	divss	xmm1, DWORD PTR __real@3f800000
	mov	ecx, 4
	shl	ecx, 0
	mov	edx, DWORD PTR _index1$[ebp+ecx]
	push	edx
	mov	eax, 4
	imul	eax, 0
	mov	ecx, DWORD PTR _index1$[ebp+eax]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	movss	DWORD PTR tv440[ebp], xmm1
	call	?Data@TwoDimensionTable@@QAEMHH@Z	; TwoDimensionTable::Data
	fstp	DWORD PTR tv400[ebp]
	movss	xmm0, DWORD PTR tv440[ebp]
	addss	xmm0, DWORD PTR tv400[ebp]
	movss	DWORD PTR _d$[ebp], xmm0

; 147  : 	e = RESCALE(fraction[0], 0, 1, Data(index1[0],index2[1]), Data(index2[0],index2[1]) );

	mov	edx, 4
	imul	edx, 0
	movss	xmm0, DWORD PTR _fraction$[ebp+edx]
	subss	xmm0, DWORD PTR __real@00000000
	mov	eax, 4
	shl	eax, 0
	mov	ecx, DWORD PTR _index2$[ebp+eax]
	push	ecx
	mov	edx, 4
	imul	edx, 0
	mov	eax, DWORD PTR _index2$[ebp+edx]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	movss	DWORD PTR tv442[ebp], xmm0
	call	?Data@TwoDimensionTable@@QAEMHH@Z	; TwoDimensionTable::Data
	fstp	DWORD PTR tv410[ebp]
	movss	xmm0, DWORD PTR tv410[ebp]
	mov	ecx, 4
	shl	ecx, 0
	mov	edx, DWORD PTR _index2$[ebp+ecx]
	push	edx
	mov	eax, 4
	imul	eax, 0
	mov	ecx, DWORD PTR _index1$[ebp+eax]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	movss	DWORD PTR tv444[ebp], xmm0
	call	?Data@TwoDimensionTable@@QAEMHH@Z	; TwoDimensionTable::Data
	fstp	DWORD PTR tv419[ebp]
	movss	xmm0, DWORD PTR tv444[ebp]
	subss	xmm0, DWORD PTR tv419[ebp]
	movss	xmm1, DWORD PTR tv442[ebp]
	mulss	xmm1, xmm0
	divss	xmm1, DWORD PTR __real@3f800000
	mov	edx, 4
	shl	edx, 0
	mov	eax, DWORD PTR _index2$[ebp+edx]
	push	eax
	mov	ecx, 4
	imul	ecx, 0
	mov	edx, DWORD PTR _index1$[ebp+ecx]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	movss	DWORD PTR tv446[ebp], xmm1
	call	?Data@TwoDimensionTable@@QAEMHH@Z	; TwoDimensionTable::Data
	fstp	DWORD PTR tv428[ebp]
	movss	xmm0, DWORD PTR tv446[ebp]
	addss	xmm0, DWORD PTR tv428[ebp]
	movss	DWORD PTR _e$[ebp], xmm0

; 148  : 
; 149  : 	return RESCALE(fraction[1], 0, 1, d, e );

	mov	eax, 4
	shl	eax, 0
	movss	xmm0, DWORD PTR _fraction$[ebp+eax]
	subss	xmm0, DWORD PTR __real@00000000
	movss	xmm1, DWORD PTR _e$[ebp]
	subss	xmm1, DWORD PTR _d$[ebp]
	mulss	xmm0, xmm1
	divss	xmm0, DWORD PTR __real@3f800000
	addss	xmm0, DWORD PTR _d$[ebp]
	movss	DWORD PTR tv432[ebp], xmm0
	fld	DWORD PTR tv432[ebp]
$LN13@Lookup:

; 150  : 
; 151  : 
; 152  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?Lookup@TwoDimensionTable@@QAEMMM@Z ENDP		; TwoDimensionTable::Lookup
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\lookuptable.cpp
_TEXT	SEGMENT
$T1 = -24						; size = 4
$T2 = -20						; size = 4
_dataSize$ = -16					; size = 4
_t$3 = -12						; size = 4
_this$ = -8						; size = 4
_l$ = -4						; size = 4
_inputStr$ = 8						; size = 4
?Parse@TwoDimensionTable@@QAEXPAD@Z PROC		; TwoDimensionTable::Parse
; _this$ = ecx

; 65   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
	push	esi
	mov	DWORD PTR _this$[ebp], ecx

; 66   : 	int l;
; 67   : 
; 68   : 	SetTokenString(inputStr);

	mov	eax, DWORD PTR _inputStr$[ebp]
	push	eax
	call	?SetTokenString@@YAXPAD@Z		; SetTokenString
	add	esp, 4

; 69   : 
; 70   : 	for(l=0; l<2; l++)

	mov	DWORD PTR _l$[ebp], 0
	jmp	SHORT $LN13@Parse
$LN12@Parse:
	mov	ecx, DWORD PTR _l$[ebp]
	add	ecx, 1
	mov	DWORD PTR _l$[ebp], ecx
$LN13@Parse:
	cmp	DWORD PTR _l$[ebp], 2
	jge	SHORT $LN11@Parse

; 71   : 	{
; 72   : 		axis[l].breakPointCount = TokenI(0);

	push	0
	call	?TokenI@@YAHH@Z				; TokenI
	add	esp, 4
	mov	edx, DWORD PTR _l$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+edx*8], eax

; 73   : 		if(axis[l].breakPointCount == 0)

	mov	edx, DWORD PTR _l$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+edx*8], 0
	jne	SHORT $LN10@Parse

; 74   : 			return;

	jmp	$LN14@Parse
$LN10@Parse:

; 75   : 	}

	jmp	SHORT $LN12@Parse
$LN11@Parse:

; 76   : 
; 77   : 	for(l=0; l<2; l++)

	mov	DWORD PTR _l$[ebp], 0
	jmp	SHORT $LN9@Parse
$LN8@Parse:
	mov	ecx, DWORD PTR _l$[ebp]
	add	ecx, 1
	mov	DWORD PTR _l$[ebp], ecx
$LN9@Parse:
	cmp	DWORD PTR _l$[ebp], 2
	jge	SHORT $LN7@Parse

; 78   : 	{
; 79   : 		int t;
; 80   : 
; 81   : 		axis[l].breakPoint = new float[axis[l].breakPointCount];

	xor	ecx, ecx
	mov	edx, DWORD PTR _l$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+edx*8]
	mov	edx, 4
	mul	edx
	seto	cl
	neg	ecx
	or	ecx, eax
	push	ecx
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2[ebp], eax
	mov	eax, DWORD PTR _l$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR $T2[ebp]
	mov	DWORD PTR [ecx+eax*8+4], edx

; 82   : 
; 83   : 		for(t=0; t<axis[l].breakPointCount; t++)

	mov	DWORD PTR _t$3[ebp], 0
	jmp	SHORT $LN6@Parse
$LN5@Parse:
	mov	eax, DWORD PTR _t$3[ebp]
	add	eax, 1
	mov	DWORD PTR _t$3[ebp], eax
$LN6@Parse:
	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _t$3[ebp]
	cmp	eax, DWORD PTR [edx+ecx*8]
	jge	SHORT $LN4@Parse

; 84   : 		{
; 85   : 			axis[l].breakPoint[t] = TokenF(0);

	push	ecx
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR [esp], xmm0
	call	?TokenF@@YAMM@Z				; TokenF
	add	esp, 4
	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+ecx*8+4]
	mov	ecx, DWORD PTR _t$3[ebp]
	fstp	DWORD PTR [eax+ecx*4]

; 86   : 		}

	jmp	SHORT $LN5@Parse
$LN4@Parse:

; 87   : 	}

	jmp	$LN8@Parse
$LN7@Parse:

; 88   : 
; 89   : 	int dataSize = axis[0].breakPointCount * axis[1].breakPointCount;

	mov	edx, 8
	imul	edx, 0
	mov	eax, 8
	shl	eax, 0
	mov	ecx, DWORD PTR _this$[ebp]
	mov	esi, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+edx]
	imul	edx, DWORD PTR [esi+eax]
	mov	DWORD PTR _dataSize$[ebp], edx

; 90   : 	data = new float[dataSize];

	xor	ecx, ecx
	mov	eax, DWORD PTR _dataSize$[ebp]
	mov	edx, 4
	mul	edx
	seto	cl
	neg	ecx
	or	ecx, eax
	push	ecx
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T1[ebp], eax
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR $T1[ebp]
	mov	DWORD PTR [eax+16], ecx

; 91   : 
; 92   : 	for(l=0; l<dataSize; l++)

	mov	DWORD PTR _l$[ebp], 0
	jmp	SHORT $LN3@Parse
$LN2@Parse:
	mov	edx, DWORD PTR _l$[ebp]
	add	edx, 1
	mov	DWORD PTR _l$[ebp], edx
$LN3@Parse:
	mov	eax, DWORD PTR _l$[ebp]
	cmp	eax, DWORD PTR _dataSize$[ebp]
	jge	SHORT $LN1@Parse

; 93   : 	{
; 94   : 		data[l] = TokenF(0);

	push	ecx
	movss	xmm0, DWORD PTR __real@00000000
	movss	DWORD PTR [esp], xmm0
	call	?TokenF@@YAMM@Z				; TokenF
	add	esp, 4
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+16]
	mov	eax, DWORD PTR _l$[ebp]
	fstp	DWORD PTR [edx+eax*4]

; 95   : 	}

	jmp	SHORT $LN2@Parse
$LN1@Parse:
$LN14@Parse:

; 96   : }

	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	4
?Parse@TwoDimensionTable@@QAEXPAD@Z ENDP		; TwoDimensionTable::Parse
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\lookuptable.cpp
_TEXT	SEGMENT
$T1 = -16						; size = 4
$T2 = -12						; size = 4
_this$ = -8						; size = 4
_l$ = -4						; size = 4
??1TwoDimensionTable@@QAE@XZ PROC			; TwoDimensionTable::~TwoDimensionTable
; _this$ = ecx

; 51   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	mov	DWORD PTR _this$[ebp], ecx

; 52   : 	int l;
; 53   : 
; 54   : 	for(l=0; l<2; l++)

	mov	DWORD PTR _l$[ebp], 0
	jmp	SHORT $LN5@TwoDimensi
$LN4@TwoDimensi:
	mov	eax, DWORD PTR _l$[ebp]
	add	eax, 1
	mov	DWORD PTR _l$[ebp], eax
$LN5@TwoDimensi:
	cmp	DWORD PTR _l$[ebp], 2
	jge	SHORT $LN3@TwoDimensi

; 55   : 	{
; 56   : 		if(axis[l].breakPoint)

	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [edx+ecx*8+4], 0
	je	SHORT $LN2@TwoDimensi

; 57   : 			delete [] axis[l].breakPoint;

	mov	eax, DWORD PTR _l$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*8+4]
	mov	DWORD PTR $T2[ebp], edx
	mov	eax, DWORD PTR $T2[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$LN2@TwoDimensi:

; 58   : 	}

	jmp	SHORT $LN4@TwoDimensi
$LN3@TwoDimensi:

; 59   : 
; 60   : 	if(data)

	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+16], 0
	je	SHORT $LN6@TwoDimensi

; 61   : 		delete [] data;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+16]
	mov	DWORD PTR $T1[ebp], eax
	mov	ecx, DWORD PTR $T1[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$LN6@TwoDimensi:

; 62   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1TwoDimensionTable@@QAE@XZ ENDP			; TwoDimensionTable::~TwoDimensionTable
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\lookuptable.cpp
_TEXT	SEGMENT
_this$ = -8						; size = 4
_l$ = -4						; size = 4
??0TwoDimensionTable@@QAE@XZ PROC			; TwoDimensionTable::TwoDimensionTable
; _this$ = ecx

; 38   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 39   : 	int l;
; 40   : 
; 41   : 	for(l=0; l<2; l++)

	mov	DWORD PTR _l$[ebp], 0
	jmp	SHORT $LN3@TwoDimensi
$LN2@TwoDimensi:
	mov	eax, DWORD PTR _l$[ebp]
	add	eax, 1
	mov	DWORD PTR _l$[ebp], eax
$LN3@TwoDimensi:
	cmp	DWORD PTR _l$[ebp], 2
	jge	SHORT $LN1@TwoDimensi

; 42   : 	{
; 43   : 		axis[l].breakPoint = 0;

	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+ecx*8+4], 0

; 44   : 		axis[l].breakPointCount = 0;

	mov	eax, DWORD PTR _l$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*8], 0

; 45   : 	}

	jmp	SHORT $LN2@TwoDimensi
$LN1@TwoDimensi:

; 46   : 
; 47   : 	data = 0;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+16], 0

; 48   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0TwoDimensionTable@@QAE@XZ ENDP			; TwoDimensionTable::TwoDimensionTable
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\lookuptable.cpp
_TEXT	SEGMENT
tv202 = -24						; size = 4
tv197 = -20						; size = 4
tv175 = -16						; size = 4
_l1$ = -12						; size = 4
_l$ = -8						; size = 4
_this$ = -4						; size = 4
_In$ = 8						; size = 4
?Lookup@LookupTable@@QAEMM@Z PROC			; LookupTable::Lookup
; _this$ = ecx

; 14   : 	{

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
	mov	DWORD PTR _this$[ebp], ecx

; 15   : 		if(In < table[0].input)

	mov	eax, 8
	imul	eax, 0
	mov	ecx, DWORD PTR _this$[ebp]
	movss	xmm0, DWORD PTR [ecx+eax+4]
	comiss	xmm0, DWORD PTR _In$[ebp]
	jbe	SHORT $LN5@Lookup

; 16   : 		{
; 17   : 			return(table[0].output);

	mov	edx, 8
	imul	edx, 0
	mov	eax, DWORD PTR _this$[ebp]
	movss	xmm0, DWORD PTR [eax+edx+8]
	movss	DWORD PTR tv175[ebp], xmm0
	fld	DWORD PTR tv175[ebp]
	jmp	$LN6@Lookup
$LN5@Lookup:

; 18   : 		}
; 19   : 
; 20   : 		int l,l1;
; 21   : 		for(l = 0 ; l < (pairs - 1) ; l++)

	mov	DWORD PTR _l$[ebp], 0
	jmp	SHORT $LN4@Lookup
$LN3@Lookup:
	mov	ecx, DWORD PTR _l$[ebp]
	add	ecx, 1
	mov	DWORD PTR _l$[ebp], ecx
$LN4@Lookup:
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx]
	sub	eax, 1
	cmp	DWORD PTR _l$[ebp], eax
	jge	SHORT $LN2@Lookup

; 22   : 		{
; 23   : 			l1 = l + 1;

	mov	ecx, DWORD PTR _l$[ebp]
	add	ecx, 1
	mov	DWORD PTR _l1$[ebp], ecx

; 24   : 			if(In < table[l1].input)

	mov	edx, DWORD PTR _l1$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	movss	xmm0, DWORD PTR [eax+edx*8+4]
	comiss	xmm0, DWORD PTR _In$[ebp]
	jbe	SHORT $LN1@Lookup

; 25   : 			{
; 26   : #define RESCALE(in,inmin,inmax,outmin,outmax) ( ((float)(in) - (inmin)) * ((outmax) - (outmin)) / ((inmax) - (inmin)) + (outmin))
; 27   : 				return(RESCALE(In, table[l].input,table[l1].input, table[l].output, table[l1].output));

	mov	ecx, DWORD PTR _l$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	movss	xmm0, DWORD PTR _In$[ebp]
	subss	xmm0, DWORD PTR [edx+ecx*8+4]
	mov	eax, DWORD PTR _l1$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	movss	xmm1, DWORD PTR [ecx+eax*8+8]
	mov	edx, DWORD PTR _l$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	subss	xmm1, DWORD PTR [eax+edx*8+8]
	mulss	xmm0, xmm1
	mov	ecx, DWORD PTR _l1$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	movss	xmm1, DWORD PTR [edx+ecx*8+4]
	mov	eax, DWORD PTR _l$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	subss	xmm1, DWORD PTR [ecx+eax*8+4]
	divss	xmm0, xmm1
	mov	edx, DWORD PTR _l$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	addss	xmm0, DWORD PTR [eax+edx*8+8]
	movss	DWORD PTR tv197[ebp], xmm0
	fld	DWORD PTR tv197[ebp]
	jmp	SHORT $LN6@Lookup
$LN1@Lookup:

; 28   : 			}
; 29   : 		}

	jmp	$LN3@Lookup
$LN2@Lookup:

; 30   : 
; 31   : 		// assume we fell thru
; 32   : 		return(table[pairs-1].output);

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	eax, DWORD PTR _this$[ebp]
	movss	xmm0, DWORD PTR [eax+edx*8]
	movss	DWORD PTR tv202[ebp], xmm0
	fld	DWORD PTR tv202[ebp]
$LN6@Lookup:

; 33   : 	}

	mov	esp, ebp
	pop	ebp
	ret	4
?Lookup@LookupTable@@QAEMM@Z ENDP			; LookupTable::Lookup
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\lookuptable.cpp
_TEXT	SEGMENT
_this$ = -4						; size = 4
??1LookupTable@@QAE@XZ PROC				; LookupTable::~LookupTable
; _this$ = ecx

; 10   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 11   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1LookupTable@@QAE@XZ ENDP				; LookupTable::~LookupTable
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\lookuptable.cpp
_TEXT	SEGMENT
_this$ = -4						; size = 4
??0LookupTable@@QAE@XZ PROC				; LookupTable::LookupTable
; _this$ = ecx

; 5    : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 6    : 	pairs=0;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], 0

; 7    : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0LookupTable@@QAE@XZ ENDP				; LookupTable::LookupTable
_TEXT	ENDS
END
