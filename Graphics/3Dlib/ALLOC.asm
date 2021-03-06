; Listing generated by Microsoft (R) Optimizing Compiler Version 17.00.51106.1 

	TITLE	C:\Users\Zhitao Li\Documents\Visual Studio 2012\Projects\Freefalcon\Graphics\3Dlib\ALLOC.C
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

_BSS	SEGMENT
_root	DD	01H DUP (?)
_BSS	ENDS
PUBLIC	_AllocInit
PUBLIC	_AllocSetPool
PUBLIC	_Alloc
PUBLIC	_AllocDiscard
PUBLIC	_AllocResetPool
PUBLIC	_AllocFreePool
PUBLIC	_AllocSetToAlignment
EXTRN	_free:PROC
EXTRN	_malloc:PROC
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\graphics\3dlib\alloc.c
_TEXT	SEGMENT
_i$ = -4						; size = 4
_c$ = 8							; size = 4
_AllocSetToAlignment PROC

; 23   : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 24   : 	unsigned int i = (unsigned int)c;

	mov	eax, DWORD PTR _c$[ebp]
	mov	DWORD PTR _i$[ebp], eax

; 25   : 	i = (i+ALIGN_BYTES-1)&-ALIGN_BYTES;

	mov	ecx, DWORD PTR _i$[ebp]
	add	ecx, 7
	and	ecx, -8					; fffffff8H
	mov	DWORD PTR _i$[ebp], ecx

; 26   : 	return(char* )i;

	mov	eax, DWORD PTR _i$[ebp]

; 27   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_AllocSetToAlignment ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\graphics\3dlib\alloc.c
_TEXT	SEGMENT
_next$ = -8						; size = 4
_curr$ = -4						; size = 4
_AllocFreePool PROC

; 102  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 103  : 	alloc_block_t *next,*curr;
; 104  : 	curr = root->first;

	mov	eax, DWORD PTR _root
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _curr$[ebp], ecx
$LN2@AllocFreeP:

; 105  : 
; 106  : 	while (curr != NULL)

	cmp	DWORD PTR _curr$[ebp], 0
	je	SHORT $LN1@AllocFreeP

; 107  : 	{
; 108  : 	 	next = curr->next;

	mov	edx, DWORD PTR _curr$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR _next$[ebp], eax

; 109  : 		free(curr->start);

	mov	ecx, DWORD PTR _curr$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	push	edx
	call	_free
	add	esp, 4

; 110  : 		free((char *)curr);

	mov	eax, DWORD PTR _curr$[ebp]
	push	eax
	call	_free
	add	esp, 4

; 111  : 		curr = next;

	mov	ecx, DWORD PTR _next$[ebp]
	mov	DWORD PTR _curr$[ebp], ecx

; 112  : 	}

	jmp	SHORT $LN2@AllocFreeP
$LN1@AllocFreeP:

; 113  : 
; 114  : 	free((char *)root);

	mov	edx, DWORD PTR _root
	push	edx
	call	_free
	add	esp, 4

; 115  : 	root = NULL;

	mov	DWORD PTR _root, 0

; 116  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_AllocFreePool ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\graphics\3dlib\alloc.c
_TEXT	SEGMENT
_AllocResetPool PROC

; 96   : {

	push	ebp
	mov	ebp, esp

; 97   : 	root->curr = root->first;

	mov	eax, DWORD PTR _root
	mov	ecx, DWORD PTR _root
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR [eax+4], edx

; 98   : 	root->curr->free = root->curr->start;

	mov	eax, DWORD PTR _root
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR _root
	mov	eax, DWORD PTR [edx+4]
	mov	ecx, DWORD PTR [ecx+4]
	mov	DWORD PTR [eax+12], ecx

; 99   : }

	pop	ebp
	ret	0
_AllocResetPool ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\graphics\3dlib\alloc.c
_TEXT	SEGMENT
_blk$ = -4						; size = 4
_last$ = 8						; size = 4
_AllocDiscard PROC

; 89   : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 90   : 	alloc_block_t *blk;
; 91   : 	blk = root->curr;

	mov	eax, DWORD PTR _root
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _blk$[ebp], ecx

; 92   : 	blk->free = last;

	mov	edx, DWORD PTR _blk$[ebp]
	mov	eax, DWORD PTR _last$[ebp]
	mov	DWORD PTR [edx+12], eax

; 93   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_AllocDiscard ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\graphics\3dlib\alloc.c
_TEXT	SEGMENT
_mem$ = -8						; size = 4
_blk$ = -4						; size = 4
_size$ = 8						; size = 4
_Alloc	PROC

; 54   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 55   : 	alloc_block_t *blk;
; 56   : 	char *mem;
; 57   : 
; 58   : 	blk = root->curr;

	mov	eax, DWORD PTR _root
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _blk$[ebp], ecx

; 59   : 	size = (size+ALIGN_BYTES-1)&-ALIGN_BYTES;

	mov	edx, DWORD PTR _size$[ebp]
	add	edx, 7
	and	edx, -8					; fffffff8H
	mov	DWORD PTR _size$[ebp], edx

; 60   : 	mem = blk->free;

	mov	eax, DWORD PTR _blk$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	mov	DWORD PTR _mem$[ebp], ecx

; 61   : 	blk->free += size;

	mov	edx, DWORD PTR _blk$[ebp]
	mov	eax, DWORD PTR [edx+12]
	add	eax, DWORD PTR _size$[ebp]
	mov	ecx, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [ecx+12], eax

; 62   : 
; 63   : 	if ((unsigned int)(blk->free)>(unsigned int)(blk->end))

	mov	edx, DWORD PTR _blk$[ebp]
	mov	eax, DWORD PTR _blk$[ebp]
	mov	ecx, DWORD PTR [edx+12]
	cmp	ecx, DWORD PTR [eax+8]
	jbe	$LN3@Alloc

; 64   : 	{
; 65   : 		if (blk->next != 0UL)

	mov	edx, DWORD PTR _blk$[ebp]
	cmp	DWORD PTR [edx], 0
	je	SHORT $LN2@Alloc

; 66   : 		{
; 67   : 		 	blk = blk->next;

	mov	eax, DWORD PTR _blk$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _blk$[ebp], ecx

; 68   : 			blk->free = AllocSetToAlignment(blk->start);

	mov	edx, DWORD PTR _blk$[ebp]
	mov	eax, DWORD PTR [edx+4]
	push	eax
	call	_AllocSetToAlignment
	add	esp, 4
	mov	ecx, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [ecx+12], eax

; 69   : 		}
; 70   : 		else

	jmp	SHORT $LN1@Alloc
$LN2@Alloc:

; 71   : 		{
; 72   : 			blk->next = (alloc_block_t *)malloc(sizeof(alloc_block_t));

	push	16					; 00000010H
	call	_malloc
	add	esp, 4
	mov	edx, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [edx], eax

; 73   : 			blk = blk->next;

	mov	eax, DWORD PTR _blk$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _blk$[ebp], ecx

; 74   : 			blk->next = 0UL;

	mov	edx, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [edx], 0

; 75   : 			blk->start = (char *)malloc(ALLOC_BLOCK_SIZE+ALIGN_BYTES-1);

	push	65543					; 00010007H
	call	_malloc
	add	esp, 4
	mov	ecx, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [ecx+4], eax

; 76   : 			blk->end = blk->start+ALLOC_BLOCK_SIZE;

	mov	edx, DWORD PTR _blk$[ebp]
	mov	eax, DWORD PTR [edx+4]
	add	eax, 65536				; 00010000H
	mov	ecx, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [ecx+8], eax

; 77   : 			blk->free = AllocSetToAlignment(blk->start);

	mov	edx, DWORD PTR _blk$[ebp]
	mov	eax, DWORD PTR [edx+4]
	push	eax
	call	_AllocSetToAlignment
	add	esp, 4
	mov	ecx, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [ecx+12], eax
$LN1@Alloc:

; 78   : 		}
; 79   : 
; 80   : 		mem = blk->free;

	mov	edx, DWORD PTR _blk$[ebp]
	mov	eax, DWORD PTR [edx+12]
	mov	DWORD PTR _mem$[ebp], eax

; 81   : 		blk->free = mem+size;

	mov	ecx, DWORD PTR _mem$[ebp]
	add	ecx, DWORD PTR _size$[ebp]
	mov	edx, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [edx+12], ecx

; 82   : 		root->curr = blk;

	mov	eax, DWORD PTR _root
	mov	ecx, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [eax+4], ecx
$LN3@Alloc:

; 83   : 	}
; 84   : 
; 85   : 	return mem;

	mov	eax, DWORD PTR _mem$[ebp]

; 86   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_Alloc	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\graphics\3dlib\alloc.c
_TEXT	SEGMENT
_old$ = -4						; size = 4
_new$ = 8						; size = 4
_AllocSetPool PROC

; 46   : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 47   : 	alloc_handle_t *old;
; 48   : 	old = (alloc_handle_t *)root;

	mov	eax, DWORD PTR _root
	mov	DWORD PTR _old$[ebp], eax

; 49   : 	root = (alloc_hdr_t *)new;

	mov	ecx, DWORD PTR _new$[ebp]
	mov	DWORD PTR _root, ecx

; 50   :  	return old;

	mov	eax, DWORD PTR _old$[ebp]

; 51   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_AllocSetPool ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\graphics\3dlib\alloc.c
_TEXT	SEGMENT
_hdr$ = -8						; size = 4
_blk$ = -4						; size = 4
_AllocInit PROC

; 30   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 31   : 	alloc_hdr_t *hdr;
; 32   : 	alloc_block_t *blk;
; 33   : 	blk = (alloc_block_t *)malloc(sizeof(alloc_block_t));

	push	16					; 00000010H
	call	_malloc
	add	esp, 4
	mov	DWORD PTR _blk$[ebp], eax

; 34   : 	blk->next = 0UL;

	mov	eax, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [eax], 0

; 35   : 	blk->start = (char *)malloc(ALLOC_BLOCK_SIZE+ALIGN_BYTES-1);

	push	65543					; 00010007H
	call	_malloc
	add	esp, 4
	mov	ecx, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [ecx+4], eax

; 36   : 	blk->free = AllocSetToAlignment(blk->start);

	mov	edx, DWORD PTR _blk$[ebp]
	mov	eax, DWORD PTR [edx+4]
	push	eax
	call	_AllocSetToAlignment
	add	esp, 4
	mov	ecx, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [ecx+12], eax

; 37   : 	blk->end = blk->start+ALLOC_BLOCK_SIZE;

	mov	edx, DWORD PTR _blk$[ebp]
	mov	eax, DWORD PTR [edx+4]
	add	eax, 65536				; 00010000H
	mov	ecx, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [ecx+8], eax

; 38   : 	hdr = (alloc_hdr_t *)malloc(sizeof(alloc_hdr_t));

	push	8
	call	_malloc
	add	esp, 4
	mov	DWORD PTR _hdr$[ebp], eax

; 39   : 	hdr->first =
; 40   : 	hdr->curr = blk;

	mov	edx, DWORD PTR _hdr$[ebp]
	mov	eax, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [edx+4], eax
	mov	ecx, DWORD PTR _hdr$[ebp]
	mov	edx, DWORD PTR _blk$[ebp]
	mov	DWORD PTR [ecx], edx

; 41   : 	root = hdr;

	mov	eax, DWORD PTR _hdr$[ebp]
	mov	DWORD PTR _root, eax

; 42   : 	return(alloc_handle_t *)root;

	mov	eax, DWORD PTR _root

; 43   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_AllocInit ENDP
_TEXT	ENDS
END
