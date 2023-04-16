# start of generated code
	.data
	.align	2
	.globl	class_nameTab
	.globl	Main_protObj
	.globl	Int_protObj
	.globl	String_protObj
	.globl	bool_const0
	.globl	bool_const1
	.globl	_int_tag
	.globl	_bool_tag
	.globl	_string_tag
_int_tag:
	.word	1
_bool_tag:
	.word	3
_string_tag:
	.word	2
	.globl	_MemMgr_INITIALIZER
_MemMgr_INITIALIZER:
	.word	_NoGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const15:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const5
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	2
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"b2: "
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"b1: "
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"t: "
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"./bool.cl"
	.byte	0	
	.align	2
	.word	-1
int_const8:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const7:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const6:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const5:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const4:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const3:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const2:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const1:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const0:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
bool_const0:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	1
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	-1
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
	.space	0
	.align	2
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
	.word	-1
Main_protObj:
	.word	5
	.word	3
	.word	Main_dispTab
	.space	0
	.align	2
String_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	String.length
	.word	String.concat
	.word	String.substr
	.word	-1
String_protObj:
	.word	2
	.word	5
	.word	String_dispTab
	.space	8
	.align	2
Bool_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	-1
Bool_protObj:
	.word	3
	.word	4
	.word	Bool_dispTab
	.space	4
	.align	2
Int_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	-1
Int_protObj:
	.word	1
	.word	4
	.word	Int_dispTab
	.space	4
	.align	2
IO_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	-1
IO_protObj:
	.word	4
	.word	3
	.word	IO_dispTab
	.space	0
	.align	2
class_nameTab:
	.word	str_const9
	.word	str_const11
	.word	str_const13
	.word	str_const12
	.word	str_const10
	.word	str_const14
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	Int_protObj
	.word	Int_init
	.word	String_protObj
	.word	String_init
	.word	Bool_protObj
	.word	Bool_init
	.word	IO_protObj
	.word	IO_init
	.word	Main_protObj
	.word	Main_init
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
Main_init:
	jr	$ra	
	.globl	Main.main
Main.main:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# LET: 6
# BOOL_CONST: 6
	la	$a0 bool_const1
# END: 6
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# BOOL_CONST: 7
	la	$a0 bool_const0
# END: 7
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# OBJECT: 8
	lw	$a0 8($sp)
# END: 8
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# BOOL_CONST: 9
	la	$a0 bool_const1
# END: 9
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# OBJECT: 10
	lw	$a0 12($sp)
# END: 10
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# BOOL_CONST: 11
	la	$a0 bool_const0
# END: 11
	addiu	$sp $sp -4
	sw	$a0 4($sp)
	la	$a0 bool_const0
	addiu	$sp $sp -4
	sw	$a0 4($sp)
	addiu	$sp $sp -4
# NEW: 14
	la	$a0 IO_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	IO_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 14
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# BLOCK: 15
# DISPATCH: 16
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 16
	la	$a0 str_const1
# END: 16
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 16
	lw	$a0 12($sp)
# END: 16
	beqz	$a0 label0
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label1
	.globl	label0
label0:
	la	$a0 str_const0
	li	$t1 16
	jal	_dispatch_abort
	.globl	label1
label1:
# END: 16
# DISPATCH: 17
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 17
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 17
	lw	$a0 44($sp)
# END: 17
	beqz	$a0 label4
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label5
	.globl	label4
label4:
	la	$a0 str_const0
	li	$t1 17
	jal	_dispatch_abort
	.globl	label5
label5:
# END: 17
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 17
	lw	$a0 12($sp)
# END: 17
	beqz	$a0 label2
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label3
	.globl	label2
label2:
	la	$a0 str_const0
	li	$t1 17
	jal	_dispatch_abort
	.globl	label3
label3:
# END: 17
# DISPATCH: 18
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 18
	la	$a0 str_const2
# END: 18
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 18
	lw	$a0 12($sp)
# END: 18
	beqz	$a0 label6
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label7
	.globl	label6
label6:
	la	$a0 str_const0
	li	$t1 18
	jal	_dispatch_abort
	.globl	label7
label7:
# END: 18
# ASSIGN: 20
# OBJECT: 20
	lw	$a0 36($sp)
# END: 20
	sw	$a0 12($sp)
	addiu	$a1 $sp 12
	jal	_GenGC_Assign
# END: 20
# DISPATCH: 21
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 21
	la	$a0 str_const3
# END: 21
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 21
	lw	$a0 12($sp)
# END: 21
	beqz	$a0 label8
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label9
	.globl	label8
label8:
	la	$a0 str_const0
	li	$t1 21
	jal	_dispatch_abort
	.globl	label9
label9:
# END: 21
# DISPATCH: 22
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 22
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 22
	lw	$a0 20($sp)
# END: 22
	beqz	$a0 label12
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label13
	.globl	label12
label12:
	la	$a0 str_const0
	li	$t1 22
	jal	_dispatch_abort
	.globl	label13
label13:
# END: 22
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 22
	lw	$a0 12($sp)
# END: 22
	beqz	$a0 label10
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label11
	.globl	label10
label10:
	la	$a0 str_const0
	li	$t1 22
	jal	_dispatch_abort
	.globl	label11
label11:
# END: 22
# DISPATCH: 23
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 23
	la	$a0 str_const2
# END: 23
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 23
	lw	$a0 12($sp)
# END: 23
	beqz	$a0 label14
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label15
	.globl	label14
label14:
	la	$a0 str_const0
	li	$t1 23
	jal	_dispatch_abort
	.globl	label15
label15:
# END: 23
# ASSIGN: 25
# OBJECT: 25
	lw	$a0 28($sp)
# END: 25
	sw	$a0 8($sp)
	addiu	$a1 $sp 8
	jal	_GenGC_Assign
# END: 25
# DISPATCH: 26
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 26
	la	$a0 str_const4
# END: 26
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 26
	lw	$a0 12($sp)
# END: 26
	beqz	$a0 label16
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label17
	.globl	label16
label16:
	la	$a0 str_const0
	li	$t1 26
	jal	_dispatch_abort
	.globl	label17
label17:
# END: 26
# DISPATCH: 27
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 27
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 27
	lw	$a0 16($sp)
# END: 27
	beqz	$a0 label20
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label21
	.globl	label20
label20:
	la	$a0 str_const0
	li	$t1 27
	jal	_dispatch_abort
	.globl	label21
label21:
# END: 27
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 27
	lw	$a0 12($sp)
# END: 27
	beqz	$a0 label18
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label19
	.globl	label18
label18:
	la	$a0 str_const0
	li	$t1 27
	jal	_dispatch_abort
	.globl	label19
label19:
# END: 27
# DISPATCH: 28
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 28
	la	$a0 str_const2
# END: 28
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 28
	lw	$a0 12($sp)
# END: 28
	beqz	$a0 label22
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label23
	.globl	label22
label22:
	la	$a0 str_const0
	li	$t1 28
	jal	_dispatch_abort
	.globl	label23
label23:
# END: 28
# ASSIGN: 30
# DISPATCH: 30
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 30
	lw	$a0 36($sp)
# END: 30
	beqz	$a0 label24
	lw	$t1 8($a0)
	lw	$t1 8($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label25
	.globl	label24
label24:
	la	$a0 str_const0
	li	$t1 30
	jal	_dispatch_abort
	.globl	label25
label25:
# END: 30
	sw	$a0 12($sp)
	addiu	$a1 $sp 12
	jal	_GenGC_Assign
# END: 30
# DISPATCH: 31
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 31
	la	$a0 str_const3
# END: 31
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 31
	lw	$a0 12($sp)
# END: 31
	beqz	$a0 label26
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label27
	.globl	label26
label26:
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
	.globl	label27
label27:
# END: 31
# DISPATCH: 32
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 32
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 32
	lw	$a0 20($sp)
# END: 32
	beqz	$a0 label30
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label31
	.globl	label30
label30:
	la	$a0 str_const0
	li	$t1 32
	jal	_dispatch_abort
	.globl	label31
label31:
# END: 32
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 32
	lw	$a0 12($sp)
# END: 32
	beqz	$a0 label28
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label29
	.globl	label28
label28:
	la	$a0 str_const0
	li	$t1 32
	jal	_dispatch_abort
	.globl	label29
label29:
# END: 32
# DISPATCH: 33
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 33
	la	$a0 str_const2
# END: 33
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 33
	lw	$a0 12($sp)
# END: 33
	beqz	$a0 label32
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label33
	.globl	label32
label32:
	la	$a0 str_const0
	li	$t1 33
	jal	_dispatch_abort
	.globl	label33
label33:
# END: 33
# ASSIGN: 35
# DISPATCH: 35
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 35
	lw	$a0 20($sp)
# END: 35
	beqz	$a0 label34
	lw	$t1 8($a0)
	lw	$t1 8($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label35
	.globl	label34
label34:
	la	$a0 str_const0
	li	$t1 35
	jal	_dispatch_abort
	.globl	label35
label35:
# END: 35
	sw	$a0 8($sp)
	addiu	$a1 $sp 8
	jal	_GenGC_Assign
# END: 35
# DISPATCH: 36
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 36
	la	$a0 str_const4
# END: 36
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 36
	lw	$a0 12($sp)
# END: 36
	beqz	$a0 label36
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label37
	.globl	label36
label36:
	la	$a0 str_const0
	li	$t1 36
	jal	_dispatch_abort
	.globl	label37
label37:
# END: 36
# DISPATCH: 37
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 37
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 37
	lw	$a0 16($sp)
# END: 37
	beqz	$a0 label40
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label41
	.globl	label40
label40:
	la	$a0 str_const0
	li	$t1 37
	jal	_dispatch_abort
	.globl	label41
label41:
# END: 37
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 37
	lw	$a0 12($sp)
# END: 37
	beqz	$a0 label38
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label39
	.globl	label38
label38:
	la	$a0 str_const0
	li	$t1 37
	jal	_dispatch_abort
	.globl	label39
label39:
# END: 37
# DISPATCH: 38
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 38
	la	$a0 str_const2
# END: 38
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 38
	lw	$a0 12($sp)
# END: 38
	beqz	$a0 label42
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label43
	.globl	label42
label42:
	la	$a0 str_const0
	li	$t1 38
	jal	_dispatch_abort
	.globl	label43
label43:
# END: 38
# END: 15
	addiu	$sp $sp 36
# END: 6
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
String_init:
	jr	$ra	
Bool_init:
	jr	$ra	
Int_init:
	jr	$ra	
IO_init:
	jr	$ra	
Object_init:
	jr	$ra	

# end of generated code
