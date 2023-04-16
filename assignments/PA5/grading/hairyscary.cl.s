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
str_const16:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const2
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bazz"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Razz"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bar"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Foo"
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
	.word	int_const4
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
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
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	2
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"do nothing"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	2
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"./hairyscary.cl"
	.byte	0	
	.align	2
	.word	-1
int_const9:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	15
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
	.word	6
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
	.word	4
	.word	-1
int_const2:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const1:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	1
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
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
	.word	-1
Main_protObj:
	.word	5
	.word	7
	.word	Main_dispTab
	.space	16
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
Bazz_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Bazz.doh
	.word	-1
Bazz_protObj:
	.word	6
	.word	6
	.word	Bazz_dispTab
	.space	12
	.align	2
Foo_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
	.word	-1
Foo_protObj:
	.word	7
	.word	8
	.word	Foo_dispTab
	.space	20
	.align	2
Razz_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
	.word	-1
Razz_protObj:
	.word	8
	.word	10
	.word	Razz_dispTab
	.space	28
	.align	2
Bar_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
	.word	-1
Bar_protObj:
	.word	9
	.word	12
	.word	Bar_dispTab
	.space	36
	.align	2
class_nameTab:
	.word	str_const6
	.word	str_const8
	.word	str_const10
	.word	str_const9
	.word	str_const7
	.word	str_const15
	.word	str_const14
	.word	str_const11
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
	.word	Bazz_protObj
	.word	Bazz_init
	.word	Foo_protObj
	.word	Foo_init
	.word	Razz_protObj
	.word	Razz_init
	.word	Bar_protObj
	.word	Bar_init
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
	move	$a0 $s0
# NEW: 55
	la	$a0 Bazz_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	Bazz_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 55
	sw	$a0 12($s0)
# NEW: 56
	la	$a0 Foo_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	Foo_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 56
	sw	$a0 16($s0)
# NEW: 57
	la	$a0 Razz_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	Razz_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 57
	sw	$a0 20($s0)
# NEW: 58
	la	$a0 Bar_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	Bar_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 58
	sw	$a0 24($s0)
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
# STR_CONST: 60
	la	$a0 str_const1
# END: 60
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
Bazz_init:
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	la	$a0 int_const2
	sw	$a0 12($s0)
	move	$a0 $s0
# INT_CONST: 37
	la	$a0 int_const1
# END: 37
	sw	$a0 12($s0)
# TYPE CASE: 39
# OBJECT: 39
	move	$a0 $s0
# END: 39
	beqz	$a0 label0
	lw	$t1 0($a0)
	blt	$t1 9 label2
	bgt	$t1 9 label2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 43
	lw	$a0 4($sp)
# END: 43
	addiu	$sp $sp 4
	b	label1
	.globl	label2
label2:
	blt	$t1 8 label3
	bgt	$t1 9 label3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# NEW: 41
	la	$a0 Bar_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	Bar_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 41
	addiu	$sp $sp 4
	b	label1
	.globl	label3
label3:
	blt	$t1 7 label4
	bgt	$t1 8 label4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# NEW: 42
	la	$a0 Razz_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	Razz_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 42
	addiu	$sp $sp 4
	b	label1
	.globl	label4
label4:
	blt	$t1 6 label5
	bgt	$t1 7 label5
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# NEW: 40
	la	$a0 Foo_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	Foo_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 40
	addiu	$sp $sp 4
	b	label1
	.globl	label5
label5:
	jal	_case_abort
	.globl	label0
label0:
	la	$a0 str_const0
	li	$t1 39
	jal	_case_abort2
	.globl	label1
label1:
# END: 39
	sw	$a0 16($s0)
# DISPATCH: 46
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 46
	move	$a0 $s0
# END: 46
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
	li	$t1 46
	jal	_dispatch_abort
	.globl	label7
label7:
# END: 46
	sw	$a0 20($s0)
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	move	$a0 $s0
	jr	$ra	
	.globl	Bazz.printh
Bazz.printh:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# BLOCK: 48
# DISPATCH: 48
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 48
	lw	$a0 12($s0)
# END: 48
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 48
	move	$a0 $s0
# END: 48
	beqz	$a0 label8
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label9
	.globl	label8
label8:
	la	$a0 str_const0
	li	$t1 48
	jal	_dispatch_abort
	.globl	label9
label9:
# END: 48
# INT_CONST: 48
	la	$a0 int_const2
# END: 48
# END: 48
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
	.globl	Bazz.doh
Bazz.doh:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# LET: 50
# OBJECT: 50
	lw	$a0 12($s0)
# END: 50
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# BLOCK: 50
# ASSIGN: 50
# PLUS: 50
# OBJECT: 50
	lw	$a0 12($s0)
# END: 50
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 50
	la	$a0 int_const1
# END: 50
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 50
	sw	$a0 12($s0)
	addiu	$a1 $s0 12
	jal	_GenGC_Assign
# END: 50
# OBJECT: 50
	lw	$a0 4($sp)
# END: 50
# END: 50
	addiu	$sp $sp 4
# END: 50
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
Razz_init:
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	la	$a0 int_const2
	sw	$a0 36($s0)
	move	$a0 $s0
	jal	Foo_init
# TYPE CASE: 26
# OBJECT: 26
	move	$a0 $s0
# END: 26
	beqz	$a0 label10
	lw	$t1 0($a0)
	blt	$t1 9 label12
	bgt	$t1 9 label12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 28
	lw	$a0 4($sp)
# END: 28
	addiu	$sp $sp 4
	b	label11
	.globl	label12
label12:
	blt	$t1 8 label13
	bgt	$t1 9 label13
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# NEW: 27
	la	$a0 Bar_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	Bar_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 27
	addiu	$sp $sp 4
	b	label11
	.globl	label13
label13:
	jal	_case_abort
	.globl	label10
label10:
	la	$a0 str_const0
	li	$t1 26
	jal	_case_abort2
	.globl	label11
label11:
# END: 26
	sw	$a0 32($s0)
# PLUS: 31
# PLUS: 31
# PLUS: 31
# PLUS: 31
# STATIC DISPATCH: 31
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 31
	lw	$a0 24($s0)
# END: 31
	beqz	$a0 label14
	la	$t1 Bazz_dispTab
	lw	$t1 32($t1)
	move	$s0 $a0
	jal	$t1
	move	$s0 $a0
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label15
	.globl	label14
label14:
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
	.globl	label15
label15:
# END: 31
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 31
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 31
	lw	$a0 16($s0)
# END: 31
	beqz	$a0 label16
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label17
	.globl	label16
label16:
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
	.globl	label17
label17:
# END: 31
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 31
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 31
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 31
	lw	$a0 32($s0)
# END: 31
	beqz	$a0 label18
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label19
	.globl	label18
label18:
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
	.globl	label19
label19:
# END: 31
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 31
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 31
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 31
	move	$a0 $s0
# END: 31
	beqz	$a0 label20
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label21
	.globl	label20
label20:
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
	.globl	label21
label21:
# END: 31
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 31
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 31
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 31
	move	$a0 $s0
# END: 31
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
	li	$t1 31
	jal	_dispatch_abort
	.globl	label23
label23:
# END: 31
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 31
	sw	$a0 36($s0)
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	move	$a0 $s0
	jr	$ra	
Bar_init:
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	la	$a0 int_const2
	sw	$a0 40($s0)
	move	$a0 $s0
	jal	Razz_init
# DISPATCH: 18
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 18
	move	$a0 $s0
# END: 18
	beqz	$a0 label24
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label25
	.globl	label24
label24:
	la	$a0 str_const0
	li	$t1 18
	jal	_dispatch_abort
	.globl	label25
label25:
# END: 18
	sw	$a0 40($s0)
# DISPATCH: 20
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 20
	move	$a0 $s0
# END: 20
	beqz	$a0 label26
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label27
	.globl	label26
label26:
	la	$a0 str_const0
	li	$t1 20
	jal	_dispatch_abort
	.globl	label27
label27:
# END: 20
	sw	$a0 44($s0)
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	move	$a0 $s0
	jr	$ra	
Foo_init:
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	la	$a0 int_const2
	sw	$a0 28($s0)
	move	$a0 $s0
	jal	Bazz_init
# TYPE CASE: 4
# OBJECT: 4
	move	$a0 $s0
# END: 4
	beqz	$a0 label28
	lw	$t1 0($a0)
	blt	$t1 9 label30
	bgt	$t1 9 label30
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 7
	lw	$a0 4($sp)
# END: 7
	addiu	$sp $sp 4
	b	label29
	.globl	label30
label30:
	blt	$t1 8 label31
	bgt	$t1 9 label31
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# NEW: 5
	la	$a0 Bar_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	Bar_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 5
	addiu	$sp $sp 4
	b	label29
	.globl	label31
label31:
	blt	$t1 7 label32
	bgt	$t1 8 label32
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# NEW: 6
	la	$a0 Razz_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	Razz_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 6
	addiu	$sp $sp 4
	b	label29
	.globl	label32
label32:
	jal	_case_abort
	.globl	label28
label28:
	la	$a0 str_const0
	li	$t1 4
	jal	_case_abort2
	.globl	label29
label29:
# END: 4
	sw	$a0 24($s0)
# PLUS: 10
# PLUS: 10
# PLUS: 10
# DISPATCH: 10
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 10
	lw	$a0 24($s0)
# END: 10
	beqz	$a0 label33
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label34
	.globl	label33
label33:
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
	.globl	label34
label34:
# END: 10
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 10
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 10
	lw	$a0 16($s0)
# END: 10
	beqz	$a0 label35
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label36
	.globl	label35
label35:
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
	.globl	label36
label36:
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
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 10
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 10
	move	$a0 $s0
# END: 10
	beqz	$a0 label37
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label38
	.globl	label37
label37:
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
	.globl	label38
label38:
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
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 10
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 10
	move	$a0 $s0
# END: 10
	beqz	$a0 label39
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label40
	.globl	label39
label39:
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
	.globl	label40
label40:
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
	sw	$a0 28($s0)
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	move	$a0 $s0
	jr	$ra	
	.globl	Foo.doh
Foo.doh:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# LET: 12
# OBJECT: 12
	lw	$a0 12($s0)
# END: 12
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# BLOCK: 12
# ASSIGN: 12
# PLUS: 12
# OBJECT: 12
	lw	$a0 12($s0)
# END: 12
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 12
	la	$a0 int_const0
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
	sw	$a0 12($s0)
	addiu	$a1 $s0 12
	jal	_GenGC_Assign
# END: 12
# OBJECT: 12
	lw	$a0 4($sp)
# END: 12
# END: 12
	addiu	$sp $sp 4
# END: 12
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
