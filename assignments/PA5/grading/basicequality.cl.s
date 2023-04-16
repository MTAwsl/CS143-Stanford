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
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const5
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	2
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"hello"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	2
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"./basicequality.cl"
	.byte	0	
	.align	2
	.word	-1
int_const10:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	18
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
	.word	2
	.word	-1
int_const5:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	3
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
	.word	6
	.word	-1
int_const2:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	5
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
	.word	str_const7
	.word	str_const9
	.word	str_const11
	.word	str_const10
	.word	str_const8
	.word	str_const12
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
# BLOCK: 2
# CONDITION: 3
# EQ: 3
# BOOL_CONST: 3
	la	$a0 bool_const1
# END: 3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# BOOL_CONST: 3
	la	$a0 bool_const0
# END: 3
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label2
	la	$a0 bool_const0
	b	label3
	.globl	label2
label2:
	la	$a0 bool_const1
	.globl	label3
label3:
# END: 3
	la	$t1 bool_const1
	beq	$a0 $t1 label0
# INT_CONST: 3
	la	$a0 int_const1
# END: 3
	b	label1
	.globl	label0
label0:
# DISPATCH: 3
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 3
	move	$a0 $s0
# END: 3
	beqz	$a0 label4
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label5
	.globl	label4
label4:
	la	$a0 str_const0
	li	$t1 3
	jal	_dispatch_abort
	.globl	label5
label5:
# END: 3
	.globl	label1
label1:
# END: 3
# CONDITION: 4
# EQ: 4
# BOOL_CONST: 4
	la	$a0 bool_const1
# END: 4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# BOOL_CONST: 4
	la	$a0 bool_const1
# END: 4
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label8
	la	$a0 bool_const0
	b	label9
	.globl	label8
label8:
	la	$a0 bool_const1
	.globl	label9
label9:
# END: 4
	la	$t1 bool_const1
	beq	$a0 $t1 label6
# DISPATCH: 4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 4
	move	$a0 $s0
# END: 4
	beqz	$a0 label10
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label11
	.globl	label10
label10:
	la	$a0 str_const0
	li	$t1 4
	jal	_dispatch_abort
	.globl	label11
label11:
# END: 4
	b	label7
	.globl	label6
label6:
# INT_CONST: 4
	la	$a0 int_const1
# END: 4
	.globl	label7
label7:
# END: 4
# CONDITION: 5
# EQ: 5
# STR_CONST: 5
	la	$a0 str_const1
# END: 5
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 5
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 5
	la	$a0 str_const1
# END: 5
	beqz	$a0 label16
	lw	$t1 8($a0)
	lw	$t1 8($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label17
	.globl	label16
label16:
	la	$a0 str_const0
	li	$t1 5
	jal	_dispatch_abort
	.globl	label17
label17:
# END: 5
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label14
	la	$a0 bool_const0
	b	label15
	.globl	label14
label14:
	la	$a0 bool_const1
	.globl	label15
label15:
# END: 5
	la	$t1 bool_const1
	beq	$a0 $t1 label12
# DISPATCH: 5
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 5
	move	$a0 $s0
# END: 5
	beqz	$a0 label18
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label19
	.globl	label18
label18:
	la	$a0 str_const0
	li	$t1 5
	jal	_dispatch_abort
	.globl	label19
label19:
# END: 5
	b	label13
	.globl	label12
label12:
# INT_CONST: 5
	la	$a0 int_const1
# END: 5
	.globl	label13
label13:
# END: 5
# LET: 6
	la	$a0 str_const2
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# CONDITION: 6
# EQ: 6
# OBJECT: 6
	lw	$a0 4($sp)
# END: 6
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 6
	la	$a0 str_const2
# END: 6
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label22
	la	$a0 bool_const0
	b	label23
	.globl	label22
label22:
	la	$a0 bool_const1
	.globl	label23
label23:
# END: 6
	la	$t1 bool_const1
	beq	$a0 $t1 label20
# DISPATCH: 6
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 6
	move	$a0 $s0
# END: 6
	beqz	$a0 label24
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label25
	.globl	label24
label24:
	la	$a0 str_const0
	li	$t1 6
	jal	_dispatch_abort
	.globl	label25
label25:
# END: 6
	b	label21
	.globl	label20
label20:
# INT_CONST: 6
	la	$a0 int_const1
# END: 6
	.globl	label21
label21:
# END: 6
	addiu	$sp $sp 4
# END: 6
# CONDITION: 7
# EQ: 7
# INT_CONST: 7
	la	$a0 int_const2
# END: 7
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 7
	la	$a0 int_const3
# END: 7
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label28
	la	$a0 bool_const0
	b	label29
	.globl	label28
label28:
	la	$a0 bool_const1
	.globl	label29
label29:
# END: 7
	la	$t1 bool_const1
	beq	$a0 $t1 label26
# INT_CONST: 7
	la	$a0 int_const1
# END: 7
	b	label27
	.globl	label26
label26:
# DISPATCH: 7
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 7
	move	$a0 $s0
# END: 7
	beqz	$a0 label30
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label31
	.globl	label30
label30:
	la	$a0 str_const0
	li	$t1 7
	jal	_dispatch_abort
	.globl	label31
label31:
# END: 7
	.globl	label27
label27:
# END: 7
# END: 2
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
