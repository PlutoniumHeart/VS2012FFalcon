; Listing generated by Microsoft (R) Optimizing Compiler Version 17.00.51106.1 

	TITLE	C:\Users\Zhitao Li\Documents\Visual Studio 2012\Projects\Freefalcon\FALCLIB\openfile.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?InsertCD@@3PAPADA				; InsertCD
PUBLIC	??_C@_0CA@BCEKDBJK@Please?5insert?5the?5Falcon?54?40?5CD?$AA@ ; `string'
PUBLIC	??_C@_0CG@LAMCDFCO@Bitte?5legen?5Sie?5die?5Falcon?54?40?5C@ ; `string'
PUBLIC	??_C@_0CF@IOACKJK@Veuillez?5ins?irer?5le?5CD?5de?5Falcon@ ; `string'
PUBLIC	??_C@_0BP@CPKBHCNL@Introduzca?5el?5CD?5de?5Falcon?54?40?$AA@ ; `string'
PUBLIC	??_C@_0BN@NFAIJEMH@Inserire?5il?5CD?5di?5Falcon?54?40?$AA@ ; `string'
PUBLIC	??_C@_0BK@HPPLJMDP@Insira?5o?5CD?5do?5Falcon?54?40?$AA@ ; `string'
PUBLIC	?UnableToOpen@@3PAPADA				; UnableToOpen
PUBLIC	??_C@_0BE@EHPMKKHE@Unable?5to?5open?5file?$AA@	; `string'
PUBLIC	??_C@_0BI@PBJKDKEK@Kann?5Datei?5nicht?5?vffnen?$AA@ ; `string'
PUBLIC	??_C@_0BP@PJINIDHK@Impossible?5d?8ouvrir?5le?5fichier?$AA@ ; `string'
PUBLIC	??_C@_0BL@GHHBDEAA@Imposible?5abrir?5el?5archivo?$AA@ ; `string'
PUBLIC	??_C@_0BL@PAKFAJDI@Impossibile?5aprire?5il?5file?$AA@ ; `string'
PUBLIC	??_C@_0BN@NLAECHPJ@N?co?5?i?5poss?mvel?5abrir?5arquivo?$AA@ ; `string'
;	COMDAT ??_C@_0BN@NLAECHPJ@N?co?5?i?5poss?mvel?5abrir?5arquivo?$AA@
CONST	SEGMENT
??_C@_0BN@NLAECHPJ@N?co?5?i?5poss?mvel?5abrir?5arquivo?$AA@ DB 'N', 0e3H, 'o'
	DB	' ', 0e9H, ' poss', 0edH, 'vel abrir arquivo', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BL@PAKFAJDI@Impossibile?5aprire?5il?5file?$AA@
CONST	SEGMENT
??_C@_0BL@PAKFAJDI@Impossibile?5aprire?5il?5file?$AA@ DB 'Impossibile apr'
	DB	'ire il file', 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BL@GHHBDEAA@Imposible?5abrir?5el?5archivo?$AA@
CONST	SEGMENT
??_C@_0BL@GHHBDEAA@Imposible?5abrir?5el?5archivo?$AA@ DB 'Imposible abrir'
	DB	' el archivo', 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BP@PJINIDHK@Impossible?5d?8ouvrir?5le?5fichier?$AA@
CONST	SEGMENT
??_C@_0BP@PJINIDHK@Impossible?5d?8ouvrir?5le?5fichier?$AA@ DB 'Impossible'
	DB	' d''ouvrir le fichier', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0BI@PBJKDKEK@Kann?5Datei?5nicht?5?vffnen?$AA@
CONST	SEGMENT
??_C@_0BI@PBJKDKEK@Kann?5Datei?5nicht?5?vffnen?$AA@ DB 'Kann Datei nicht '
	DB	0f6H, 'ffnen', 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BE@EHPMKKHE@Unable?5to?5open?5file?$AA@
CONST	SEGMENT
??_C@_0BE@EHPMKKHE@Unable?5to?5open?5file?$AA@ DB 'Unable to open file', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BK@HPPLJMDP@Insira?5o?5CD?5do?5Falcon?54?40?$AA@
CONST	SEGMENT
??_C@_0BK@HPPLJMDP@Insira?5o?5CD?5do?5Falcon?54?40?$AA@ DB 'Insira o CD d'
	DB	'o Falcon 4.0', 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0BN@NFAIJEMH@Inserire?5il?5CD?5di?5Falcon?54?40?$AA@
CONST	SEGMENT
??_C@_0BN@NFAIJEMH@Inserire?5il?5CD?5di?5Falcon?54?40?$AA@ DB 'Inserire i'
	DB	'l CD di Falcon 4.0', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0BP@CPKBHCNL@Introduzca?5el?5CD?5de?5Falcon?54?40?$AA@
CONST	SEGMENT
??_C@_0BP@CPKBHCNL@Introduzca?5el?5CD?5de?5Falcon?54?40?$AA@ DB 'Introduz'
	DB	'ca el CD de Falcon 4.0', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0CF@IOACKJK@Veuillez?5ins?irer?5le?5CD?5de?5Falcon@
CONST	SEGMENT
??_C@_0CF@IOACKJK@Veuillez?5ins?irer?5le?5CD?5de?5Falcon@ DB 'Veuillez in'
	DB	's', 0e9H, 'rer le CD de Falcon 4.0', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0CG@LAMCDFCO@Bitte?5legen?5Sie?5die?5Falcon?54?40?5C@
CONST	SEGMENT
??_C@_0CG@LAMCDFCO@Bitte?5legen?5Sie?5die?5Falcon?54?40?5C@ DB 'Bitte leg'
	DB	'en Sie die Falcon 4.0 CD ein', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0CA@BCEKDBJK@Please?5insert?5the?5Falcon?54?40?5CD?$AA@
CONST	SEGMENT
??_C@_0CA@BCEKDBJK@Please?5insert?5the?5Falcon?54?40?5CD?$AA@ DB 'Please '
	DB	'insert the Falcon 4.0 CD', 00H		; `string'
CONST	ENDS
_DATA	SEGMENT
?InsertCD@@3PAPADA DD FLAT:??_C@_0CA@BCEKDBJK@Please?5insert?5the?5Falcon?54?40?5CD?$AA@ ; InsertCD
	DD	FLAT:??_C@_0CA@BCEKDBJK@Please?5insert?5the?5Falcon?54?40?5CD?$AA@
	DD	FLAT:??_C@_0CA@BCEKDBJK@Please?5insert?5the?5Falcon?54?40?5CD?$AA@
	DD	FLAT:??_C@_0CG@LAMCDFCO@Bitte?5legen?5Sie?5die?5Falcon?54?40?5C@
	DD	FLAT:??_C@_0CF@IOACKJK@Veuillez?5ins?irer?5le?5CD?5de?5Falcon@
	DD	FLAT:??_C@_0BP@CPKBHCNL@Introduzca?5el?5CD?5de?5Falcon?54?40?$AA@
	DD	FLAT:??_C@_0BN@NFAIJEMH@Inserire?5il?5CD?5di?5Falcon?54?40?$AA@
	DD	FLAT:??_C@_0BK@HPPLJMDP@Insira?5o?5CD?5do?5Falcon?54?40?$AA@
	DD	FLAT:??_C@_0CA@BCEKDBJK@Please?5insert?5the?5Falcon?54?40?5CD?$AA@
	DD	FLAT:??_C@_0CA@BCEKDBJK@Please?5insert?5the?5Falcon?54?40?5CD?$AA@
	DD	FLAT:??_C@_0CA@BCEKDBJK@Please?5insert?5the?5Falcon?54?40?5CD?$AA@
	DD	FLAT:??_C@_0CA@BCEKDBJK@Please?5insert?5the?5Falcon?54?40?5CD?$AA@
	DD	FLAT:??_C@_0CA@BCEKDBJK@Please?5insert?5the?5Falcon?54?40?5CD?$AA@
?UnableToOpen@@3PAPADA DD FLAT:??_C@_0BE@EHPMKKHE@Unable?5to?5open?5file?$AA@ ; UnableToOpen
	DD	FLAT:??_C@_0BE@EHPMKKHE@Unable?5to?5open?5file?$AA@
	DD	FLAT:??_C@_0BE@EHPMKKHE@Unable?5to?5open?5file?$AA@
	DD	FLAT:??_C@_0BI@PBJKDKEK@Kann?5Datei?5nicht?5?vffnen?$AA@
	DD	FLAT:??_C@_0BP@PJINIDHK@Impossible?5d?8ouvrir?5le?5fichier?$AA@
	DD	FLAT:??_C@_0BL@GHHBDEAA@Imposible?5abrir?5el?5archivo?$AA@
	DD	FLAT:??_C@_0BL@PAKFAJDI@Impossibile?5aprire?5il?5file?$AA@
	DD	FLAT:??_C@_0BN@NLAECHPJ@N?co?5?i?5poss?mvel?5abrir?5arquivo?$AA@
	DD	FLAT:??_C@_0BE@EHPMKKHE@Unable?5to?5open?5file?$AA@
	DD	FLAT:??_C@_0BE@EHPMKKHE@Unable?5to?5open?5file?$AA@
	DD	FLAT:??_C@_0BE@EHPMKKHE@Unable?5to?5open?5file?$AA@
	DD	FLAT:??_C@_0BE@EHPMKKHE@Unable?5to?5open?5file?$AA@
	DD	FLAT:??_C@_0BE@EHPMKKHE@Unable?5to?5open?5file?$AA@
_Enabled DD	01H
_DATA	ENDS
PUBLIC	?EnableOpenTest@@YAXXZ				; EnableOpenTest
PUBLIC	?DisableOpenTest@@YAXXZ				; DisableOpenTest
PUBLIC	?DoDialogBox@@YAHXZ				; DoDialogBox
PUBLIC	?FILE_Open@@YAPAU_iobuf@@PAD0@Z			; FILE_Open
PUBLIC	?INT_Open@@YAHPADHH@Z				; INT_Open
PUBLIC	?CreateFile_Open@@YAPAXPADKKPAU_SECURITY_ATTRIBUTES@@KKPAX@Z ; CreateFile_Open
PUBLIC	?ResAttach_Open@@YAHPBD0H@Z			; ResAttach_Open
EXTRN	__imp__CreateFileA@28:PROC
EXTRN	__imp__MessageBoxA@16:PROC
EXTRN	_fopen:PROC
EXTRN	_open:PROC
EXTRN	_exit:PROC
EXTRN	_ResAttach:PROC
EXTRN	?gLangIDNum@@3HA:DWORD				; gLangIDNum
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\openfile.cpp
_TEXT	SEGMENT
_handle$ = -8						; size = 4
_done$ = -4						; size = 4
_attach_point$ = 8					; size = 4
_filename$ = 12						; size = 4
_replace_flag$ = 16					; size = 4
?ResAttach_Open@@YAHPBD0H@Z PROC			; ResAttach_Open

; 137  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 138  : 	int done=0;

	mov	DWORD PTR _done$[ebp], 0

; 139  : 	int handle=-1;

	mov	DWORD PTR _handle$[ebp], -1
$LN4@ResAttach_:

; 140  : 
; 141  : 	while(!done)

	cmp	DWORD PTR _done$[ebp], 0
	jne	SHORT $LN3@ResAttach_

; 142  : 	{
; 143  : 		handle=ResAttach(attach_point,filename,replace_flag);

	mov	eax, DWORD PTR _replace_flag$[ebp]
	push	eax
	mov	ecx, DWORD PTR _filename$[ebp]
	push	ecx
	mov	edx, DWORD PTR _attach_point$[ebp]
	push	edx
	call	_ResAttach
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _handle$[ebp], eax

; 144  : 		if(handle < 0)

	cmp	DWORD PTR _handle$[ebp], 0
	jge	SHORT $LN2@ResAttach_

; 145  : 		{
; 146  : 			done=DoDialogBox();

	call	?DoDialogBox@@YAHXZ			; DoDialogBox
	mov	DWORD PTR _done$[ebp], eax

; 147  : 		}
; 148  : 		else

	jmp	SHORT $LN1@ResAttach_
$LN2@ResAttach_:

; 149  : 			done=1;

	mov	DWORD PTR _done$[ebp], 1
$LN1@ResAttach_:

; 150  : 	}

	jmp	SHORT $LN4@ResAttach_
$LN3@ResAttach_:

; 151  : 	return(handle);

	mov	eax, DWORD PTR _handle$[ebp]

; 152  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?ResAttach_Open@@YAHPBD0H@Z ENDP			; ResAttach_Open
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\openfile.cpp
_TEXT	SEGMENT
_handle$ = -8						; size = 4
_done$ = -4						; size = 4
_filename$ = 8						; size = 4
_param1$ = 12						; size = 4
_param2$ = 16						; size = 4
_param3$ = 20						; size = 4
_param4$ = 24						; size = 4
_param5$ = 28						; size = 4
_param6$ = 32						; size = 4
?CreateFile_Open@@YAPAXPADKKPAU_SECURITY_ATTRIBUTES@@KKPAX@Z PROC ; CreateFile_Open

; 118  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 119  : 	int done=0;

	mov	DWORD PTR _done$[ebp], 0

; 120  : 	HANDLE handle=INVALID_HANDLE_VALUE;

	mov	DWORD PTR _handle$[ebp], -1
$LN4@CreateFile:

; 121  : 
; 122  : 	while(!done)

	cmp	DWORD PTR _done$[ebp], 0
	jne	SHORT $LN3@CreateFile

; 123  : 	{
; 124  : 		handle=CreateFile(filename,param1,param2,param3,param4,param5,param6);

	mov	eax, DWORD PTR _param6$[ebp]
	push	eax
	mov	ecx, DWORD PTR _param5$[ebp]
	push	ecx
	mov	edx, DWORD PTR _param4$[ebp]
	push	edx
	mov	eax, DWORD PTR _param3$[ebp]
	push	eax
	mov	ecx, DWORD PTR _param2$[ebp]
	push	ecx
	mov	edx, DWORD PTR _param1$[ebp]
	push	edx
	mov	eax, DWORD PTR _filename$[ebp]
	push	eax
	call	DWORD PTR __imp__CreateFileA@28
	mov	DWORD PTR _handle$[ebp], eax

; 125  : 		if(handle == INVALID_HANDLE_VALUE)

	cmp	DWORD PTR _handle$[ebp], -1
	jne	SHORT $LN2@CreateFile

; 126  : 		{
; 127  : 			done=DoDialogBox();

	call	?DoDialogBox@@YAHXZ			; DoDialogBox
	mov	DWORD PTR _done$[ebp], eax

; 128  : 		}
; 129  : 		else

	jmp	SHORT $LN1@CreateFile
$LN2@CreateFile:

; 130  : 			done=1;

	mov	DWORD PTR _done$[ebp], 1
$LN1@CreateFile:

; 131  : 	}

	jmp	SHORT $LN4@CreateFile
$LN3@CreateFile:

; 132  : 	return(handle);

	mov	eax, DWORD PTR _handle$[ebp]

; 133  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?CreateFile_Open@@YAPAXPADKKPAU_SECURITY_ATTRIBUTES@@KKPAX@Z ENDP ; CreateFile_Open
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\openfile.cpp
_TEXT	SEGMENT
_handle$ = -8						; size = 4
_done$ = -4						; size = 4
_filename$ = 8						; size = 4
_Params$ = 12						; size = 4
_pmode$ = 16						; size = 4
?INT_Open@@YAHPADHH@Z PROC				; INT_Open

; 100  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 101  : 	int done=0;

	mov	DWORD PTR _done$[ebp], 0

; 102  : 	int handle=-1;

	mov	DWORD PTR _handle$[ebp], -1
$LN4@INT_Open:

; 103  : 
; 104  : 	while(!done)

	cmp	DWORD PTR _done$[ebp], 0
	jne	SHORT $LN3@INT_Open

; 105  : 	{
; 106  : 		handle=open(filename,Params,pmode);

	mov	eax, DWORD PTR _pmode$[ebp]
	push	eax
	mov	ecx, DWORD PTR _Params$[ebp]
	push	ecx
	mov	edx, DWORD PTR _filename$[ebp]
	push	edx
	call	_open
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _handle$[ebp], eax

; 107  : 		if(handle == -1)

	cmp	DWORD PTR _handle$[ebp], -1
	jne	SHORT $LN2@INT_Open

; 108  : 		{
; 109  : 			done=DoDialogBox();

	call	?DoDialogBox@@YAHXZ			; DoDialogBox
	mov	DWORD PTR _done$[ebp], eax

; 110  : 		}
; 111  : 		else

	jmp	SHORT $LN1@INT_Open
$LN2@INT_Open:

; 112  : 			done=1;

	mov	DWORD PTR _done$[ebp], 1
$LN1@INT_Open:

; 113  : 	}

	jmp	SHORT $LN4@INT_Open
$LN3@INT_Open:

; 114  : 	return(handle);

	mov	eax, DWORD PTR _handle$[ebp]

; 115  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?INT_Open@@YAHPADHH@Z ENDP				; INT_Open
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\openfile.cpp
_TEXT	SEGMENT
_handle$ = -8						; size = 4
_done$ = -4						; size = 4
_filename$ = 8						; size = 4
_Params$ = 12						; size = 4
?FILE_Open@@YAPAU_iobuf@@PAD0@Z PROC			; FILE_Open

; 81   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 82   : 	int done=0;

	mov	DWORD PTR _done$[ebp], 0

; 83   : 	FILE *handle=NULL;

	mov	DWORD PTR _handle$[ebp], 0
$LN4@FILE_Open:

; 84   : 
; 85   : 	while(!done)

	cmp	DWORD PTR _done$[ebp], 0
	jne	SHORT $LN3@FILE_Open

; 86   : 	{
; 87   : 		handle=fopen(filename,Params);

	mov	eax, DWORD PTR _Params$[ebp]
	push	eax
	mov	ecx, DWORD PTR _filename$[ebp]
	push	ecx
	call	_fopen
	add	esp, 8
	mov	DWORD PTR _handle$[ebp], eax

; 88   : 		if(!handle)

	cmp	DWORD PTR _handle$[ebp], 0
	jne	SHORT $LN2@FILE_Open

; 89   : 		{
; 90   : 			done=DoDialogBox();

	call	?DoDialogBox@@YAHXZ			; DoDialogBox
	mov	DWORD PTR _done$[ebp], eax

; 91   : 		}
; 92   : 		else

	jmp	SHORT $LN1@FILE_Open
$LN2@FILE_Open:

; 93   : 			done=1;

	mov	DWORD PTR _done$[ebp], 1
$LN1@FILE_Open:

; 94   : 	}

	jmp	SHORT $LN4@FILE_Open
$LN3@FILE_Open:

; 95   : 	return(handle);

	mov	eax, DWORD PTR _handle$[ebp]

; 96   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?FILE_Open@@YAPAU_iobuf@@PAD0@Z ENDP			; FILE_Open
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\openfile.cpp
_TEXT	SEGMENT
_retval$ = -4						; size = 4
?DoDialogBox@@YAHXZ PROC				; DoDialogBox

; 68   : {

	push	ebp
	mov	ebp, esp
	push	ecx

; 69   : 	int retval;
; 70   : 
; 71   : 	if(!Enabled)

	cmp	DWORD PTR _Enabled, 0
	jne	SHORT $LN2@DoDialogBo

; 72   : 		exit(0);

	push	0
	call	_exit
$LN2@DoDialogBo:

; 73   : 
; 74   : 	retval=MessageBox(NULL, InsertCD[gLangIDNum], UnableToOpen[gLangIDNum], MB_RETRYCANCEL);

	push	5
	mov	eax, DWORD PTR ?gLangIDNum@@3HA		; gLangIDNum
	mov	ecx, DWORD PTR ?UnableToOpen@@3PAPADA[eax*4]
	push	ecx
	mov	edx, DWORD PTR ?gLangIDNum@@3HA		; gLangIDNum
	mov	eax, DWORD PTR ?InsertCD@@3PAPADA[edx*4]
	push	eax
	push	0
	call	DWORD PTR __imp__MessageBoxA@16
	mov	DWORD PTR _retval$[ebp], eax

; 75   : 	if(retval == IDRETRY)

	cmp	DWORD PTR _retval$[ebp], 4
	jne	SHORT $LN1@DoDialogBo

; 76   : 		return(0);

	xor	eax, eax
	jmp	SHORT $LN4@DoDialogBo
$LN1@DoDialogBo:

; 77   : 	return(1);

	mov	eax, 1
$LN4@DoDialogBo:

; 78   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?DoDialogBox@@YAHXZ ENDP				; DoDialogBox
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\openfile.cpp
_TEXT	SEGMENT
?DisableOpenTest@@YAXXZ PROC				; DisableOpenTest

; 57   : {

	push	ebp
	mov	ebp, esp

; 58   : 	Enabled=0;

	mov	DWORD PTR _Enabled, 0

; 59   : }

	pop	ebp
	ret	0
?DisableOpenTest@@YAXXZ ENDP				; DisableOpenTest
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\users\zhitao li\documents\visual studio 2012\projects\freefalcon\falclib\openfile.cpp
_TEXT	SEGMENT
?EnableOpenTest@@YAXXZ PROC				; EnableOpenTest

; 52   : {

	push	ebp
	mov	ebp, esp

; 53   : 	Enabled=1;

	mov	DWORD PTR _Enabled, 1

; 54   : }

	pop	ebp
	ret	0
?EnableOpenTest@@YAXXZ ENDP				; EnableOpenTest
_TEXT	ENDS
END
