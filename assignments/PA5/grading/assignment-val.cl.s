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
str_const14:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const3
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const5
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	2
	.word	8
	.word	String_dispTab
	.word	int_const7
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const8
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"\ny: "
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"x: "
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	2
	.word	9
	.word	String_dispTab
	.word	int_const9
	.ascii	"./assignment-val.cl"
	.byte	0	
	.align	2
	.word	-1
int_const9:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	19
	.word	-1
int_const8:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const7:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const6:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const5:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const4:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const3:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	0
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
	.word	3
	.word	-1
int_const0:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	2
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
	.word	Main.f
	.word	Main.main
	.word	-1
Main_protObj:
	.word	5
	.word	3
	.word	Main_dispTab
	.space	0
	.align	2
class_nameTab:
	.word	str_const8
	.word	str_const10
	.word	str_const12
	.word	str_const11
	.word	str_const9
	.word	str_const13
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
	.globl	Main.f
Main.f:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# BLOCK: 2
# DISPATCH: 3
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 3
	la	$a0 str_const1
# END: 3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 3
	move	$a0 $s0
# END: 3
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
	li	$t1 3
	jal	_dispatch_abort
	.globl	label1
label1:
# END: 3
# DISPATCH: 4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 4
	lw	$a0 16($sp)
# END: 4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 4
	move	$a0 $s0
# END: 4
	beqz	$a0 label2
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label3
	.globl	label2
label2:
	la	$a0 str_const0
	li	$t1 4
	jal	_dispatch_abort
	.globl	label3
label3:
# END: 4
# DISPATCH: 5
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 5
	la	$a0 str_const2
# END: 5
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 5
	move	$a0 $s0
# END: 5
	beqz	$a0 label4
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label5
	.globl	label4
label4:
	la	$a0 str_const0
	li	$t1 5
	jal	_dispatch_abort
	.globl	label5
label5:
# END: 5
# DISPATCH: 6
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 6
	lw	$a0 12($sp)
# END: 6
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 6
	move	$a0 $s0
# END: 6
	beqz	$a0 label6
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label7
	.globl	label6
label6:
	la	$a0 str_const0
	li	$t1 6
	jal	_dispatch_abort
	.globl	label7
label7:
# END: 6
# DISPATCH: 7
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 7
	la	$a0 str_const3
# END: 7
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 7
	move	$a0 $s0
# END: 7
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
	li	$t1 7
	jal	_dispatch_abort
	.globl	label9
label9:
# END: 7
# END: 2
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 8
	jr	$ra	
	.globl	Main.main
Main.main:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# LET: 10
# INT_CONST: 10
	la	$a0 int_const0
# END: 10
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# BLOCK: 10
# DISPATCH: 11
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# ASSIGN: 11
# INT_CONST: 11
	la	$a0 int_const1
# END: 11
	sw	$a0 8($sp)
	addiu	$a1 $sp 8
	jal	_GenGC_Assign
# END: 11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# ASSIGN: 11
# INT_CONST: 11
	la	$a0 int_const2
# END: 11
	sw	$a0 12($sp)
	addiu	$a1 $sp 12
	jal	_GenGC_Assign
# END: 11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 11
	move	$a0 $s0
# END: 11
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
	li	$t1 11
	jal	_dispatch_abort
	.globl	label11
label11:
# END: 11
# DISPATCH: 12
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 12
	lw	$a0 8($sp)
# END: 12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 12
	move	$a0 $s0
# END: 12
	beqz	$a0 label12
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label13
	.globl	label12
label12:
	la	$a0 str_const0
	li	$t1 12
	jal	_dispatch_abort
	.globl	label13
label13:
# END: 12
# END: 10
	addiu	$sp $sp 4
# END: 10
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
