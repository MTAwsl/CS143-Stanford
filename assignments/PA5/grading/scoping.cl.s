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
	.word	int_const4
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const0
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const5
	.ascii	"Bob"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const0
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
	.word	int_const3
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const6
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
	.word	int_const10
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const0
	.ascii	"z = "
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	2
	.word	8
	.word	String_dispTab
	.word	int_const11
	.ascii	"./scoping.cl"
	.byte	0	
	.align	2
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
	.word	1
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
	.word	6
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
	.word	0
	.word	-1
int_const3:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	2
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
	.word	23
	.word	-1
int_const0:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	4
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
Bob_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	-1
Bob_protObj:
	.word	5
	.word	5
	.word	Bob_dispTab
	.space	8
	.align	2
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Main.jack
	.word	Main.print_z
	.word	Main.main
	.word	-1
Main_protObj:
	.word	6
	.word	6
	.word	Main_dispTab
	.space	12
	.align	2
class_nameTab:
	.word	str_const7
	.word	str_const9
	.word	str_const11
	.word	str_const10
	.word	str_const8
	.word	str_const12
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
	.word	Bob_protObj
	.word	Bob_init
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
	la	$a0 int_const4
	sw	$a0 20($s0)
	move	$a0 $s0
	jal	Bob_init
# INT_CONST: 7
	la	$a0 int_const1
# END: 7
	sw	$a0 20($s0)
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	move	$a0 $s0
	jr	$ra	
	.globl	Main.jack
Main.jack:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# BLOCK: 9
# LET: 10
# PLUS: 10
# OBJECT: 10
	lw	$a0 8($sp)
# END: 10
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 10
	lw	$a0 16($s0)
# END: 10
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 10
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# DISPATCH: 10
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 10
	lw	$a0 8($sp)
# END: 10
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 10
	move	$a0 $s0
# END: 10
	beqz	$a0 label0
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label1
	.globl	label0
label0:
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
	.globl	label1
label1:
# END: 10
	addiu	$sp $sp 4
# END: 10
# ASSIGN: 11
# PLUS: 11
# OBJECT: 11
	lw	$a0 16($s0)
# END: 11
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 11
	la	$a0 int_const0
# END: 11
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 11
	sw	$a0 16($s0)
	addiu	$a1 $s0 16
	jal	_GenGC_Assign
# END: 11
# LET: 12
# PLUS: 12
# OBJECT: 12
	lw	$a0 8($sp)
# END: 12
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 12
	lw	$a0 16($s0)
# END: 12
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 12
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# OBJECT: 12
	lw	$a0 4($sp)
# END: 12
	addiu	$sp $sp 4
# END: 12
# END: 9
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 8
	jr	$ra	
	.globl	Main.print_z
Main.print_z:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
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
	move	$a0 $s0
# END: 16
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
	li	$t1 16
	jal	_dispatch_abort
	.globl	label3
label3:
# END: 16
# DISPATCH: 17
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 17
	lw	$a0 12($sp)
# END: 17
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 17
	move	$a0 $s0
# END: 17
	beqz	$a0 label4
	lw	$t1 8($a0)
	lw	$t1 16($t1)
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
# DISPATCH: 18
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 18
	la	$a0 str_const2
# END: 18
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 18
	move	$a0 $s0
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
# END: 15
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	jr	$ra	
	.globl	Main.main
Main.main:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# BLOCK: 21
# DISPATCH: 22
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 22
	lw	$a0 20($s0)
# END: 22
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 22
	move	$a0 $s0
# END: 22
	beqz	$a0 label8
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label9
	.globl	label8
label8:
	la	$a0 str_const0
	li	$t1 22
	jal	_dispatch_abort
	.globl	label9
label9:
# END: 22
# LET: 23
# DISPATCH: 23
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 23
	la	$a0 int_const2
# END: 23
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# PLUS: 23
# OBJECT: 23
	lw	$a0 20($s0)
# END: 23
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 23
	la	$a0 int_const3
# END: 23
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 23
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 23
	move	$a0 $s0
# END: 23
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
	li	$t1 23
	jal	_dispatch_abort
	.globl	label11
label11:
# END: 23
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# DISPATCH: 24
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 24
	lw	$a0 8($sp)
# END: 24
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 24
	move	$a0 $s0
# END: 24
	beqz	$a0 label12
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label13
	.globl	label12
label12:
	la	$a0 str_const0
	li	$t1 24
	jal	_dispatch_abort
	.globl	label13
label13:
# END: 24
	addiu	$sp $sp 4
# END: 23
# END: 21
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
Bob_init:
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	la	$a0 int_const4
	sw	$a0 12($s0)
	la	$a0 int_const4
	sw	$a0 16($s0)
	move	$a0 $s0
# INT_CONST: 3
	la	$a0 int_const0
# END: 3
	sw	$a0 16($s0)
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	move	$a0 $s0
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
