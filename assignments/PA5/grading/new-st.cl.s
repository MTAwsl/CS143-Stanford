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
	.word	int_const1
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
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"A"
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
	.word	int_const2
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const5
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
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	2
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"<basic class>"
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
	.word	6
	.word	String_dispTab
	.word	int_const9
	.ascii	"x is "
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"./new-st.cl"
	.byte	0	
	.align	2
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
	.word	5
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
A_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A.printX
	.word	A.new_st
	.word	A.bump
	.word	-1
A_protObj:
	.word	6
	.word	4
	.word	A_dispTab
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
	.word	str_const7
	.word	str_const9
	.word	str_const11
	.word	str_const10
	.word	str_const8
	.word	str_const13
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
	.word	A_protObj
	.word	A_init
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
# LET: 22
# NEW: 22
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
# END: 22
	addiu	$sp $sp -4
	sw	$a0 4($sp)
	addiu	$sp $sp -4
# BLOCK: 24
# DISPATCH: 25
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 25
	lw	$a0 12($sp)
# END: 25
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
	li	$t1 25
	jal	_dispatch_abort
	.globl	label1
label1:
# END: 25
# DISPATCH: 26
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 26
	lw	$a0 12($sp)
# END: 26
	beqz	$a0 label2
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label3
	.globl	label2
label2:
	la	$a0 str_const0
	li	$t1 26
	jal	_dispatch_abort
	.globl	label3
label3:
# END: 26
# DISPATCH: 27
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 27
	lw	$a0 12($sp)
# END: 27
	beqz	$a0 label4
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label5
	.globl	label4
label4:
	la	$a0 str_const0
	li	$t1 27
	jal	_dispatch_abort
	.globl	label5
label5:
# END: 27
# DISPATCH: 28
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 28
	lw	$a0 12($sp)
# END: 28
	beqz	$a0 label6
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label7
	.globl	label6
label6:
	la	$a0 str_const0
	li	$t1 28
	jal	_dispatch_abort
	.globl	label7
label7:
# END: 28
# DISPATCH: 29
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 29
	lw	$a0 12($sp)
# END: 29
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
	li	$t1 29
	jal	_dispatch_abort
	.globl	label9
label9:
# END: 29
# ASSIGN: 30
# DISPATCH: 30
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 30
	lw	$a0 12($sp)
# END: 30
	beqz	$a0 label10
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label11
	.globl	label10
label10:
	la	$a0 str_const0
	li	$t1 30
	jal	_dispatch_abort
	.globl	label11
label11:
# END: 30
	sw	$a0 4($sp)
	addiu	$a1 $sp 4
	jal	_GenGC_Assign
# END: 30
# DISPATCH: 31
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 31
	lw	$a0 8($sp)
# END: 31
	beqz	$a0 label12
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label13
	.globl	label12
label12:
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
	.globl	label13
label13:
# END: 31
# DISPATCH: 32
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 32
	lw	$a0 12($sp)
# END: 32
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
	li	$t1 32
	jal	_dispatch_abort
	.globl	label15
label15:
# END: 32
# END: 24
	addiu	$sp $sp 8
# END: 22
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
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
# PLUS: 5
# OBJECT: 5
	lw	$a0 12($s0)
# END: 5
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 5
	la	$a0 int_const0
# END: 5
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 5
	sw	$a0 12($s0)
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	move	$a0 $s0
	jr	$ra	
	.globl	A.printX
A.printX:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# BLOCK: 6
# DISPATCH: 7
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 7
	la	$a0 str_const1
# END: 7
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# NEW: 7
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
# END: 7
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
	li	$t1 7
	jal	_dispatch_abort
	.globl	label17
label17:
# END: 7
# DISPATCH: 8
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 8
	lw	$a0 12($s0)
# END: 8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# NEW: 8
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
# END: 8
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
	li	$t1 8
	jal	_dispatch_abort
	.globl	label19
label19:
# END: 8
# DISPATCH: 9
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 9
	la	$a0 str_const2
# END: 9
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# NEW: 9
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
# END: 9
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
	li	$t1 9
	jal	_dispatch_abort
	.globl	label21
label21:
# END: 9
# END: 6
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
	.globl	A.new_st
A.new_st:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# NEW: 12
	lw	$t2 0($s0)
	la	$t1 class_objTab
	sll	$t2 $t2 3
	add	$t1 $t1 $t2
	lw	$a0 0($t1)
	sw	$t1 0($sp)
	addiu	$sp $sp -4
	jal	Object.copy
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	lw	$t1 4($t1)
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jalr		$t1
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 12
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
	.globl	A.bump
A.bump:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# ASSIGN: 15
# PLUS: 15
# OBJECT: 15
	lw	$a0 12($s0)
# END: 15
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 15
	la	$a0 int_const0
# END: 15
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 15
	sw	$a0 12($s0)
	addiu	$a1 $s0 12
	jal	_GenGC_Assign
# END: 15
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
