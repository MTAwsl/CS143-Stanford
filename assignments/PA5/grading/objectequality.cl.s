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
str_const13:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"B"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"A"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	2
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	2
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"./objectequality.cl"
	.byte	0	
	.align	2
	.word	-1
int_const10:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	19
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
	.word	6
	.word	-1
int_const4:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	1
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
	.word	0
	.word	-1
int_const0:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	5
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
A_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A.foo
	.word	-1
A_protObj:
	.word	6
	.word	4
	.word	A_dispTab
	.space	4
	.align	2
B_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A.foo
	.word	-1
B_protObj:
	.word	7
	.word	4
	.word	B_dispTab
	.space	4
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
	.word	str_const5
	.word	str_const7
	.word	str_const9
	.word	str_const8
	.word	str_const6
	.word	str_const12
	.word	str_const10
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
	.word	A_protObj
	.word	A_init
	.word	B_protObj
	.word	B_init
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
# BLOCK: 9
# LET: 10
# NEW: 10
	la	$a0 B_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	B_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 10
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# BLOCK: 10
# CONDITION: 11
# EQ: 11
# OBJECT: 11
	lw	$a0 4($sp)
# END: 11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 11
	lw	$a0 8($sp)
# END: 11
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	beq	$t1 $t2 label2
	la	$a0 bool_const0
	b	label3
	.globl	label2
label2:
	la	$a0 bool_const1
	.globl	label3
label3:
# END: 11
	la	$t1 bool_const1
	beq	$a0 $t1 label0
# DISPATCH: 11
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 11
	move	$a0 $s0
# END: 11
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
	li	$t1 11
	jal	_dispatch_abort
	.globl	label5
label5:
# END: 11
	b	label1
	.globl	label0
label0:
# INT_CONST: 11
	la	$a0 int_const1
# END: 11
	.globl	label1
label1:
# END: 11
# CONDITION: 12
# EQ: 12
# OBJECT: 12
	lw	$a0 4($sp)
# END: 12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# NEW: 12
	la	$a0 B_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	B_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 12
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	beq	$t1 $t2 label8
	la	$a0 bool_const0
	b	label9
	.globl	label8
label8:
	la	$a0 bool_const1
	.globl	label9
label9:
# END: 12
	la	$t1 bool_const1
	beq	$a0 $t1 label6
# INT_CONST: 12
	la	$a0 int_const1
# END: 12
	b	label7
	.globl	label6
label6:
# DISPATCH: 12
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 12
	move	$a0 $s0
# END: 12
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
	li	$t1 12
	jal	_dispatch_abort
	.globl	label11
label11:
# END: 12
	.globl	label7
label7:
# END: 12
# CONDITION: 13
# EQ: 13
# NEW: 13
	la	$a0 A_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	A_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 13
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# NEW: 13
	la	$a0 A_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	A_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 13
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	beq	$t1 $t2 label14
	la	$a0 bool_const0
	b	label15
	.globl	label14
label14:
	la	$a0 bool_const1
	.globl	label15
label15:
# END: 13
	la	$t1 bool_const1
	beq	$a0 $t1 label12
# INT_CONST: 13
	la	$a0 int_const1
# END: 13
	b	label13
	.globl	label12
label12:
# DISPATCH: 13
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 13
	move	$a0 $s0
# END: 13
	beqz	$a0 label16
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label17
	.globl	label16
label16:
	la	$a0 str_const0
	li	$t1 13
	jal	_dispatch_abort
	.globl	label17
label17:
# END: 13
	.globl	label13
label13:
# END: 13
# LET: 14
# OBJECT: 14
	lw	$a0 4($sp)
# END: 14
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# BLOCK: 14
# CONDITION: 15
# EQ: 15
# OBJECT: 15
	lw	$a0 4($sp)
# END: 15
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 15
	lw	$a0 12($sp)
# END: 15
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	beq	$t1 $t2 label20
	la	$a0 bool_const0
	b	label21
	.globl	label20
label20:
	la	$a0 bool_const1
	.globl	label21
label21:
# END: 15
	la	$t1 bool_const1
	beq	$a0 $t1 label18
# DISPATCH: 15
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 15
	move	$a0 $s0
# END: 15
	beqz	$a0 label22
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label23
	.globl	label22
label22:
	la	$a0 str_const0
	li	$t1 15
	jal	_dispatch_abort
	.globl	label23
label23:
# END: 15
	b	label19
	.globl	label18
label18:
# INT_CONST: 15
	la	$a0 int_const1
# END: 15
	.globl	label19
label19:
# END: 15
# CONDITION: 16
# EQ: 16
# DISPATCH: 16
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 16
	la	$a0 int_const2
# END: 16
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 16
	lw	$a0 12($sp)
# END: 16
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
	li	$t1 16
	jal	_dispatch_abort
	.globl	label29
label29:
# END: 16
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 16
	lw	$a0 12($sp)
# END: 16
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	beq	$t1 $t2 label26
	la	$a0 bool_const0
	b	label27
	.globl	label26
label26:
	la	$a0 bool_const1
	.globl	label27
label27:
# END: 16
	la	$t1 bool_const1
	beq	$a0 $t1 label24
# DISPATCH: 16
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 16
	move	$a0 $s0
# END: 16
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
	li	$t1 16
	jal	_dispatch_abort
	.globl	label31
label31:
# END: 16
	b	label25
	.globl	label24
label24:
# INT_CONST: 16
	la	$a0 int_const1
# END: 16
	.globl	label25
label25:
# END: 16
# END: 14
	addiu	$sp $sp 4
# END: 14
# END: 10
	addiu	$sp $sp 4
# END: 10
# LET: 19
	addiu	$sp $sp -4
	addiu	$sp $sp -4
# CONDITION: 19
# EQ: 19
# OBJECT: 19
	lw	$a0 8($sp)
# END: 19
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 19
	lw	$a0 8($sp)
# END: 19
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	beq	$t1 $t2 label34
	la	$a0 bool_const0
	b	label35
	.globl	label34
label34:
	la	$a0 bool_const1
	.globl	label35
label35:
# END: 19
	la	$t1 bool_const1
	beq	$a0 $t1 label32
# DISPATCH: 19
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 19
	move	$a0 $s0
# END: 19
	beqz	$a0 label36
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label37
	.globl	label36
label36:
	la	$a0 str_const0
	li	$t1 19
	jal	_dispatch_abort
	.globl	label37
label37:
# END: 19
	b	label33
	.globl	label32
label32:
# INT_CONST: 19
	la	$a0 int_const1
# END: 19
	.globl	label33
label33:
# END: 19
	addiu	$sp $sp 8
# END: 19
# END: 9
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
B_init:
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	move	$a0 $s0
	jal	A_init
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	move	$a0 $s0
	jr	$ra	
A_init:
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	la	$a0 int_const1
	sw	$a0 12($s0)
	move	$a0 $s0
# INT_CONST: 2
	la	$a0 int_const0
# END: 2
	sw	$a0 12($s0)
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	move	$a0 $s0
	jr	$ra	
	.globl	A.foo
A.foo:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# BLOCK: 3
# ASSIGN: 3
# OBJECT: 3
	lw	$a0 8($sp)
# END: 3
	sw	$a0 12($s0)
	addiu	$a1 $s0 12
	jal	_GenGC_Assign
# END: 3
# OBJECT: 3
	move	$a0 $s0
# END: 3
# END: 3
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
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
