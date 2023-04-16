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
str_const12:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const14
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	2
	.word	8
	.word	String_dispTab
	.word	int_const12
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	2
	.word	10
	.word	String_dispTab
	.word	int_const15
	.ascii	"./eval-order-arith.cl"
	.byte	0	
	.align	2
	.word	-1
int_const15:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	21
	.word	-1
int_const14:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const13:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	14
	.word	-1
int_const12:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const11:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	12
	.word	-1
int_const10:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	11
	.word	-1
int_const9:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	10
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
	.word	8
	.word	-1
int_const6:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	7
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
	.word	5
	.word	-1
int_const3:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	3
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
	.word	Main.recite
	.word	Main.main
	.word	-1
Main_protObj:
	.word	5
	.word	3
	.word	Main_dispTab
	.space	0
	.align	2
class_nameTab:
	.word	str_const6
	.word	str_const8
	.word	str_const10
	.word	str_const9
	.word	str_const7
	.word	str_const11
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
	.globl	Main.recite
Main.recite:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# BLOCK: 8
# DISPATCH: 9
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 9
	lw	$a0 12($sp)
# END: 9
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 9
	move	$a0 $s0
# END: 9
	beqz	$a0 label0
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label1
	.globl	label0
label0:
	la	$a0 str_const0
	li	$t1 9
	jal	_dispatch_abort
	.globl	label1
label1:
# END: 9
# DISPATCH: 10
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 10
	la	$a0 str_const1
# END: 10
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 10
	move	$a0 $s0
# END: 10
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
	li	$t1 10
	jal	_dispatch_abort
	.globl	label3
label3:
# END: 10
# OBJECT: 11
	lw	$a0 8($sp)
# END: 11
# END: 8
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	jr	$ra	
	.globl	Main.main
Main.main:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# BLOCK: 17
# PLUS: 18
# DISPATCH: 18
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 18
	la	$a0 int_const0
# END: 18
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 18
	move	$a0 $s0
# END: 18
	beqz	$a0 label4
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label5
	.globl	label4
label4:
	la	$a0 str_const0
	li	$t1 18
	jal	_dispatch_abort
	.globl	label5
label5:
# END: 18
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 18
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 18
	la	$a0 int_const1
# END: 18
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 18
	move	$a0 $s0
# END: 18
	beqz	$a0 label6
	lw	$t1 8($a0)
	lw	$t1 28($t1)
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
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 18
# SUB: 19
# DISPATCH: 19
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 19
	la	$a0 int_const2
# END: 19
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 19
	move	$a0 $s0
# END: 19
	beqz	$a0 label8
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label9
	.globl	label8
label8:
	la	$a0 str_const0
	li	$t1 19
	jal	_dispatch_abort
	.globl	label9
label9:
# END: 19
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 19
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 19
	la	$a0 int_const3
# END: 19
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 19
	move	$a0 $s0
# END: 19
	beqz	$a0 label10
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label11
	.globl	label10
label10:
	la	$a0 str_const0
	li	$t1 19
	jal	_dispatch_abort
	.globl	label11
label11:
# END: 19
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 19
# MUL: 20
# DISPATCH: 20
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 20
	la	$a0 int_const4
# END: 20
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 20
	move	$a0 $s0
# END: 20
	beqz	$a0 label12
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label13
	.globl	label12
label12:
	la	$a0 str_const0
	li	$t1 20
	jal	_dispatch_abort
	.globl	label13
label13:
# END: 20
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 20
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 20
	la	$a0 int_const5
# END: 20
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 20
	move	$a0 $s0
# END: 20
	beqz	$a0 label14
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label15
	.globl	label14
label14:
	la	$a0 str_const0
	li	$t1 20
	jal	_dispatch_abort
	.globl	label15
label15:
# END: 20
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 20
# DIVIDE: 21
# DISPATCH: 21
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 21
	la	$a0 int_const6
# END: 21
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 21
	move	$a0 $s0
# END: 21
	beqz	$a0 label16
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label17
	.globl	label16
label16:
	la	$a0 str_const0
	li	$t1 21
	jal	_dispatch_abort
	.globl	label17
label17:
# END: 21
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 21
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 21
	la	$a0 int_const7
# END: 21
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 21
	move	$a0 $s0
# END: 21
	beqz	$a0 label18
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label19
	.globl	label18
label18:
	la	$a0 str_const0
	li	$t1 21
	jal	_dispatch_abort
	.globl	label19
label19:
# END: 21
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 21
# LT: 22
# DISPATCH: 22
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 22
	la	$a0 int_const8
# END: 22
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 22
	move	$a0 $s0
# END: 22
	beqz	$a0 label22
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label23
	.globl	label22
label22:
	la	$a0 str_const0
	li	$t1 22
	jal	_dispatch_abort
	.globl	label23
label23:
# END: 22
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 22
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 22
	la	$a0 int_const9
# END: 22
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 22
	move	$a0 $s0
# END: 22
	beqz	$a0 label24
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label25
	.globl	label24
label24:
	la	$a0 str_const0
	li	$t1 22
	jal	_dispatch_abort
	.globl	label25
label25:
# END: 22
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label20
	la	$a0 bool_const0
	b	label21
	.globl	label20
label20:
	la	$a0 bool_const1
	.globl	label21
label21:
# END: 22
# EQ: 23
# DISPATCH: 23
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 23
	la	$a0 int_const10
# END: 23
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 23
	move	$a0 $s0
# END: 23
	beqz	$a0 label28
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label29
	.globl	label28
label28:
	la	$a0 str_const0
	li	$t1 23
	jal	_dispatch_abort
	.globl	label29
label29:
# END: 23
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 23
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 23
	la	$a0 int_const11
# END: 23
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 23
	move	$a0 $s0
# END: 23
	beqz	$a0 label30
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label31
	.globl	label30
label30:
	la	$a0 str_const0
	li	$t1 23
	jal	_dispatch_abort
	.globl	label31
label31:
# END: 23
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label26
	la	$a0 bool_const0
	b	label27
	.globl	label26
label26:
	la	$a0 bool_const1
	.globl	label27
label27:
# END: 23
# LEQ: 24
# DISPATCH: 24
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 24
	la	$a0 int_const12
# END: 24
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 24
	move	$a0 $s0
# END: 24
	beqz	$a0 label34
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label35
	.globl	label34
label34:
	la	$a0 str_const0
	li	$t1 24
	jal	_dispatch_abort
	.globl	label35
label35:
# END: 24
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 24
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 24
	la	$a0 int_const13
# END: 24
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 24
	move	$a0 $s0
# END: 24
	beqz	$a0 label36
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label37
	.globl	label36
label36:
	la	$a0 str_const0
	li	$t1 24
	jal	_dispatch_abort
	.globl	label37
label37:
# END: 24
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	ble	$t1 $a0 label32
	la	$a0 bool_const0
	b	label33
	.globl	label32
label32:
	la	$a0 bool_const1
	.globl	label33
label33:
# END: 24
# END: 17
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
