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
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	2
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"continue"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"halt"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	" is prime.\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	2
	.word	10
	.word	String_dispTab
	.word	int_const12
	.ascii	"2 is trivially prime.\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	"./primes.cl"
	.byte	0	
	.align	2
	.word	-1
int_const12:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	22
	.word	-1
int_const11:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	11
	.word	-1
int_const10:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const9:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const8:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const7:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const6:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const5:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const3:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const2:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	500
	.word	-1
int_const1:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const0:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	0
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
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Main.main
	.word	-1
Main_protObj:
	.word	5
	.word	8
	.word	Main_dispTab
	.space	20
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
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	la	$a0 int_const0
	sw	$a0 12($s0)
	la	$a0 int_const0
	sw	$a0 16($s0)
	la	$a0 int_const0
	sw	$a0 20($s0)
	la	$a0 int_const0
	sw	$a0 24($s0)
	move	$a0 $s0
# BLOCK: 34
# DISPATCH: 35
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 35
	la	$a0 str_const1
# END: 35
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 35
	move	$a0 $s0
# END: 35
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
	li	$t1 35
	jal	_dispatch_abort
	.globl	label1
label1:
# END: 35
# INT_CONST: 36
	la	$a0 int_const1
# END: 36
# END: 34
	sw	$a0 12($s0)
# OBJECT: 39
	lw	$a0 12($s0)
# END: 39
	sw	$a0 16($s0)
# INT_CONST: 43
	la	$a0 int_const2
# END: 43
	sw	$a0 24($s0)
# LOOP: 46
	.globl	label2
label2:
# BOOL_CONST: 46
	la	$a0 bool_const1
# END: 46
	la	$t1 bool_const1
	bne	$a0 $t1 label3
# BLOCK: 47
# ASSIGN: 49
# PLUS: 49
# OBJECT: 49
	lw	$a0 16($s0)
# END: 49
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 49
	la	$a0 int_const3
# END: 49
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 49
	sw	$a0 16($s0)
	addiu	$a1 $s0 16
	jal	_GenGC_Assign
# END: 49
# ASSIGN: 50
# INT_CONST: 50
	la	$a0 int_const1
# END: 50
	sw	$a0 20($s0)
	addiu	$a1 $s0 20
	jal	_GenGC_Assign
# END: 50
# LOOP: 52
	.globl	label4
label4:
# CONDITION: 53
# LT: 53
# OBJECT: 53
	lw	$a0 16($s0)
# END: 53
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# MUL: 53
# OBJECT: 53
	lw	$a0 20($s0)
# END: 53
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 53
	lw	$a0 20($s0)
# END: 53
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 53
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label8
	la	$a0 bool_const0
	b	label9
	.globl	label8
label8:
	la	$a0 bool_const1
	.globl	label9
label9:
# END: 53
	la	$t1 bool_const1
	beq	$a0 $t1 label6
# CONDITION: 55
# EQ: 55
# SUB: 55
# OBJECT: 55
	lw	$a0 16($s0)
# END: 55
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# MUL: 55
# OBJECT: 55
	lw	$a0 20($s0)
# END: 55
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DIVIDE: 55
# OBJECT: 55
	lw	$a0 16($s0)
# END: 55
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 55
	lw	$a0 20($s0)
# END: 55
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 55
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 55
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 55
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 55
	la	$a0 int_const0
# END: 55
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label12
	la	$a0 bool_const0
	b	label13
	.globl	label12
label12:
	la	$a0 bool_const1
	.globl	label13
label13:
# END: 55
	la	$t1 bool_const1
	beq	$a0 $t1 label10
# BOOL_CONST: 57
	la	$a0 bool_const1
# END: 57
	b	label11
	.globl	label10
label10:
# BOOL_CONST: 56
	la	$a0 bool_const0
# END: 56
	.globl	label11
label11:
# END: 55
	b	label7
	.globl	label6
label6:
# BOOL_CONST: 54
	la	$a0 bool_const0
# END: 54
	.globl	label7
label7:
# END: 53
	la	$t1 bool_const1
	bne	$a0 $t1 label5
# ASSIGN: 60
# PLUS: 60
# OBJECT: 60
	lw	$a0 20($s0)
# END: 60
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 60
	la	$a0 int_const3
# END: 60
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 60
	sw	$a0 20($s0)
	addiu	$a1 $s0 20
	jal	_GenGC_Assign
# END: 60
	b	label4
	.globl	label5
label5:
	xor	$a0	$a0	$a0
# END: 52
# CONDITION: 63
# LT: 63
# OBJECT: 63
	lw	$a0 16($s0)
# END: 63
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# MUL: 63
# OBJECT: 63
	lw	$a0 20($s0)
# END: 63
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 63
	lw	$a0 20($s0)
# END: 63
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 63
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label16
	la	$a0 bool_const0
	b	label17
	.globl	label16
label16:
	la	$a0 bool_const1
	.globl	label17
label17:
# END: 63
	la	$t1 bool_const1
	beq	$a0 $t1 label14
# INT_CONST: 71
	la	$a0 int_const0
# END: 71
	b	label15
	.globl	label14
label14:
# BLOCK: 65
# ASSIGN: 66
# OBJECT: 66
	lw	$a0 16($s0)
# END: 66
	sw	$a0 12($s0)
	addiu	$a1 $s0 12
	jal	_GenGC_Assign
# END: 66
# DISPATCH: 67
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 67
	lw	$a0 12($s0)
# END: 67
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 67
	move	$a0 $s0
# END: 67
	beqz	$a0 label18
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label19
	.globl	label18
label18:
	la	$a0 str_const0
	li	$t1 67
	jal	_dispatch_abort
	.globl	label19
label19:
# END: 67
# DISPATCH: 68
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 68
	la	$a0 str_const2
# END: 68
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 68
	move	$a0 $s0
# END: 68
	beqz	$a0 label20
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label21
	.globl	label20
label20:
	la	$a0 str_const0
	li	$t1 68
	jal	_dispatch_abort
	.globl	label21
label21:
# END: 68
# END: 65
	.globl	label15
label15:
# END: 63
# CONDITION: 74
# LEQ: 74
# OBJECT: 74
	lw	$a0 24($s0)
# END: 74
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 74
	lw	$a0 16($s0)
# END: 74
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	ble	$t1 $a0 label24
	la	$a0 bool_const0
	b	label25
	.globl	label24
label24:
	la	$a0 bool_const1
	.globl	label25
label25:
# END: 74
	la	$t1 bool_const1
	beq	$a0 $t1 label22
# STR_CONST: 77
	la	$a0 str_const4
# END: 77
	b	label23
	.globl	label22
label22:
# DISPATCH: 75
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 75
	la	$a0 str_const3
# END: 75
	beqz	$a0 label26
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label27
	.globl	label26
label26:
	la	$a0 str_const0
	li	$t1 75
	jal	_dispatch_abort
	.globl	label27
label27:
# END: 75
	.globl	label23
label23:
# END: 74
# END: 47
	b	label2
	.globl	label3
label3:
	xor	$a0	$a0	$a0
# END: 46
	sw	$a0 28($s0)
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	move	$a0 $s0
	jr	$ra	
	.globl	Main.main
Main.main:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 30
	la	$a0 int_const0
# END: 30
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
