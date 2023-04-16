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
	.word	int_const6
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
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"D"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"C"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"B"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"A"
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
	.word	int_const7
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
	.word	int_const9
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
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"./override.cl"
	.byte	0	
	.align	2
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
	.word	0
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
A_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A.f
	.word	A.g
	.word	-1
A_protObj:
	.word	5
	.word	3
	.word	A_dispTab
	.space	0
	.align	2
B_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A.f
	.word	B.g
	.word	-1
B_protObj:
	.word	6
	.word	3
	.word	B_dispTab
	.space	0
	.align	2
C_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	C.f
	.word	B.g
	.word	-1
C_protObj:
	.word	7
	.word	3
	.word	C_dispTab
	.space	0
	.align	2
D_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	D.f
	.word	D.g
	.word	-1
D_protObj:
	.word	8
	.word	3
	.word	D_dispTab
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
	.word	9
	.word	7
	.word	Main_dispTab
	.space	16
	.align	2
class_nameTab:
	.word	str_const6
	.word	str_const8
	.word	str_const10
	.word	str_const9
	.word	str_const7
	.word	str_const11
	.word	str_const12
	.word	str_const13
	.word	str_const14
	.word	str_const15
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
	.word	A_protObj
	.word	A_init
	.word	B_protObj
	.word	B_init
	.word	C_protObj
	.word	C_init
	.word	D_protObj
	.word	D_init
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
	move	$a0 $s0
# NEW: 20
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
# END: 20
	sw	$a0 12($s0)
# NEW: 21
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
# END: 21
	sw	$a0 16($s0)
# NEW: 22
	la	$a0 C_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	C_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 22
	sw	$a0 20($s0)
# NEW: 23
	la	$a0 D_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	D_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 23
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
# BLOCK: 24
# DISPATCH: 25
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 25
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 25
	lw	$a0 12($s0)
# END: 25
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
	li	$t1 25
	jal	_dispatch_abort
	.globl	label3
label3:
# END: 25
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 25
	move	$a0 $s0
# END: 25
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
	li	$t1 25
	jal	_dispatch_abort
	.globl	label1
label1:
# END: 25
# DISPATCH: 26
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 26
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 26
	lw	$a0 12($s0)
# END: 26
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
	li	$t1 26
	jal	_dispatch_abort
	.globl	label7
label7:
# END: 26
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 26
	move	$a0 $s0
# END: 26
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
	li	$t1 26
	jal	_dispatch_abort
	.globl	label5
label5:
# END: 26
# DISPATCH: 27
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 27
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 27
	lw	$a0 16($s0)
# END: 27
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
	li	$t1 27
	jal	_dispatch_abort
	.globl	label11
label11:
# END: 27
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 27
	move	$a0 $s0
# END: 27
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
	li	$t1 27
	jal	_dispatch_abort
	.globl	label9
label9:
# END: 27
# DISPATCH: 28
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 28
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 28
	lw	$a0 16($s0)
# END: 28
	beqz	$a0 label14
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label15
	.globl	label14
label14:
	la	$a0 str_const0
	li	$t1 28
	jal	_dispatch_abort
	.globl	label15
label15:
# END: 28
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 28
	move	$a0 $s0
# END: 28
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
	li	$t1 28
	jal	_dispatch_abort
	.globl	label13
label13:
# END: 28
# DISPATCH: 29
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 29
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 29
	lw	$a0 20($s0)
# END: 29
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
	li	$t1 29
	jal	_dispatch_abort
	.globl	label19
label19:
# END: 29
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 29
	move	$a0 $s0
# END: 29
	beqz	$a0 label16
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label17
	.globl	label16
label16:
	la	$a0 str_const0
	li	$t1 29
	jal	_dispatch_abort
	.globl	label17
label17:
# END: 29
# DISPATCH: 30
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 30
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 30
	lw	$a0 20($s0)
# END: 30
	beqz	$a0 label22
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label23
	.globl	label22
label22:
	la	$a0 str_const0
	li	$t1 30
	jal	_dispatch_abort
	.globl	label23
label23:
# END: 30
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 30
	move	$a0 $s0
# END: 30
	beqz	$a0 label20
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label21
	.globl	label20
label20:
	la	$a0 str_const0
	li	$t1 30
	jal	_dispatch_abort
	.globl	label21
label21:
# END: 30
# DISPATCH: 31
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 31
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 31
	lw	$a0 24($s0)
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
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 31
	move	$a0 $s0
# END: 31
	beqz	$a0 label24
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label25
	.globl	label24
label24:
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
	.globl	label25
label25:
# END: 31
# DISPATCH: 32
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 32
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 32
	lw	$a0 24($s0)
# END: 32
	beqz	$a0 label30
	lw	$t1 8($a0)
	lw	$t1 16($t1)
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
	move	$a0 $s0
# END: 32
	beqz	$a0 label28
	lw	$t1 8($a0)
	lw	$t1 16($t1)
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
# STATIC DISPATCH: 33
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 33
	lw	$a0 12($s0)
# END: 33
	beqz	$a0 label34
	la	$t1 A_dispTab
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	move	$s0 $a0
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label35
	.globl	label34
label34:
	la	$a0 str_const0
	li	$t1 33
	jal	_dispatch_abort
	.globl	label35
label35:
# END: 33
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 33
	move	$a0 $s0
# END: 33
	beqz	$a0 label32
	lw	$t1 8($a0)
	lw	$t1 16($t1)
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
# DISPATCH: 34
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STATIC DISPATCH: 34
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 34
	lw	$a0 12($s0)
# END: 34
	beqz	$a0 label38
	la	$t1 A_dispTab
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	move	$s0 $a0
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label39
	.globl	label38
label38:
	la	$a0 str_const0
	li	$t1 34
	jal	_dispatch_abort
	.globl	label39
label39:
# END: 34
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 34
	move	$a0 $s0
# END: 34
	beqz	$a0 label36
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label37
	.globl	label36
label36:
	la	$a0 str_const0
	li	$t1 34
	jal	_dispatch_abort
	.globl	label37
label37:
# END: 34
# DISPATCH: 35
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STATIC DISPATCH: 35
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 35
	lw	$a0 16($s0)
# END: 35
	beqz	$a0 label42
	la	$t1 A_dispTab
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	move	$s0 $a0
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label43
	.globl	label42
label42:
	la	$a0 str_const0
	li	$t1 35
	jal	_dispatch_abort
	.globl	label43
label43:
# END: 35
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 35
	move	$a0 $s0
# END: 35
	beqz	$a0 label40
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label41
	.globl	label40
label40:
	la	$a0 str_const0
	li	$t1 35
	jal	_dispatch_abort
	.globl	label41
label41:
# END: 35
# DISPATCH: 36
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STATIC DISPATCH: 36
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 36
	lw	$a0 16($s0)
# END: 36
	beqz	$a0 label46
	la	$t1 A_dispTab
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	move	$s0 $a0
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label47
	.globl	label46
label46:
	la	$a0 str_const0
	li	$t1 36
	jal	_dispatch_abort
	.globl	label47
label47:
# END: 36
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 36
	move	$a0 $s0
# END: 36
	beqz	$a0 label44
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label45
	.globl	label44
label44:
	la	$a0 str_const0
	li	$t1 36
	jal	_dispatch_abort
	.globl	label45
label45:
# END: 36
# DISPATCH: 37
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STATIC DISPATCH: 37
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 37
	lw	$a0 20($s0)
# END: 37
	beqz	$a0 label50
	la	$t1 B_dispTab
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	move	$s0 $a0
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label51
	.globl	label50
label50:
	la	$a0 str_const0
	li	$t1 37
	jal	_dispatch_abort
	.globl	label51
label51:
# END: 37
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 37
	move	$a0 $s0
# END: 37
	beqz	$a0 label48
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label49
	.globl	label48
label48:
	la	$a0 str_const0
	li	$t1 37
	jal	_dispatch_abort
	.globl	label49
label49:
# END: 37
# DISPATCH: 38
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STATIC DISPATCH: 38
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 38
	lw	$a0 20($s0)
# END: 38
	beqz	$a0 label54
	la	$t1 B_dispTab
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	move	$s0 $a0
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label55
	.globl	label54
label54:
	la	$a0 str_const0
	li	$t1 38
	jal	_dispatch_abort
	.globl	label55
label55:
# END: 38
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 38
	move	$a0 $s0
# END: 38
	beqz	$a0 label52
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label53
	.globl	label52
label52:
	la	$a0 str_const0
	li	$t1 38
	jal	_dispatch_abort
	.globl	label53
label53:
# END: 38
# DISPATCH: 39
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STATIC DISPATCH: 39
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 39
	lw	$a0 24($s0)
# END: 39
	beqz	$a0 label58
	la	$t1 C_dispTab
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	move	$s0 $a0
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label59
	.globl	label58
label58:
	la	$a0 str_const0
	li	$t1 39
	jal	_dispatch_abort
	.globl	label59
label59:
# END: 39
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 39
	move	$a0 $s0
# END: 39
	beqz	$a0 label56
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label57
	.globl	label56
label56:
	la	$a0 str_const0
	li	$t1 39
	jal	_dispatch_abort
	.globl	label57
label57:
# END: 39
# DISPATCH: 40
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STATIC DISPATCH: 40
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 40
	lw	$a0 24($s0)
# END: 40
	beqz	$a0 label62
	la	$t1 C_dispTab
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	move	$s0 $a0
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label63
	.globl	label62
label62:
	la	$a0 str_const0
	li	$t1 40
	jal	_dispatch_abort
	.globl	label63
label63:
# END: 40
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 40
	move	$a0 $s0
# END: 40
	beqz	$a0 label60
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label61
	.globl	label60
label60:
	la	$a0 str_const0
	li	$t1 40
	jal	_dispatch_abort
	.globl	label61
label61:
# END: 40
# ASSIGN: 41
# NEW: 41
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
# END: 41
	sw	$a0 12($s0)
	addiu	$a1 $s0 12
	jal	_GenGC_Assign
# END: 41
# ASSIGN: 42
# NEW: 42
	la	$a0 C_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	C_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 42
	sw	$a0 16($s0)
	addiu	$a1 $s0 16
	jal	_GenGC_Assign
# END: 42
# ASSIGN: 43
# NEW: 43
	la	$a0 D_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	D_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 43
	sw	$a0 20($s0)
	addiu	$a1 $s0 20
	jal	_GenGC_Assign
# END: 43
# DISPATCH: 44
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 44
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 44
	lw	$a0 12($s0)
# END: 44
	beqz	$a0 label66
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label67
	.globl	label66
label66:
	la	$a0 str_const0
	li	$t1 44
	jal	_dispatch_abort
	.globl	label67
label67:
# END: 44
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 44
	move	$a0 $s0
# END: 44
	beqz	$a0 label64
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label65
	.globl	label64
label64:
	la	$a0 str_const0
	li	$t1 44
	jal	_dispatch_abort
	.globl	label65
label65:
# END: 44
# DISPATCH: 45
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 45
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 45
	lw	$a0 12($s0)
# END: 45
	beqz	$a0 label70
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label71
	.globl	label70
label70:
	la	$a0 str_const0
	li	$t1 45
	jal	_dispatch_abort
	.globl	label71
label71:
# END: 45
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 45
	move	$a0 $s0
# END: 45
	beqz	$a0 label68
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label69
	.globl	label68
label68:
	la	$a0 str_const0
	li	$t1 45
	jal	_dispatch_abort
	.globl	label69
label69:
# END: 45
# DISPATCH: 46
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 46
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 46
	lw	$a0 16($s0)
# END: 46
	beqz	$a0 label74
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label75
	.globl	label74
label74:
	la	$a0 str_const0
	li	$t1 46
	jal	_dispatch_abort
	.globl	label75
label75:
# END: 46
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 46
	move	$a0 $s0
# END: 46
	beqz	$a0 label72
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label73
	.globl	label72
label72:
	la	$a0 str_const0
	li	$t1 46
	jal	_dispatch_abort
	.globl	label73
label73:
# END: 46
# DISPATCH: 47
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 47
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 47
	lw	$a0 16($s0)
# END: 47
	beqz	$a0 label78
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label79
	.globl	label78
label78:
	la	$a0 str_const0
	li	$t1 47
	jal	_dispatch_abort
	.globl	label79
label79:
# END: 47
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 47
	move	$a0 $s0
# END: 47
	beqz	$a0 label76
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label77
	.globl	label76
label76:
	la	$a0 str_const0
	li	$t1 47
	jal	_dispatch_abort
	.globl	label77
label77:
# END: 47
# DISPATCH: 48
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 48
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 48
	lw	$a0 20($s0)
# END: 48
	beqz	$a0 label82
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label83
	.globl	label82
label82:
	la	$a0 str_const0
	li	$t1 48
	jal	_dispatch_abort
	.globl	label83
label83:
# END: 48
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 48
	move	$a0 $s0
# END: 48
	beqz	$a0 label80
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label81
	.globl	label80
label80:
	la	$a0 str_const0
	li	$t1 48
	jal	_dispatch_abort
	.globl	label81
label81:
# END: 48
# DISPATCH: 49
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 49
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 49
	lw	$a0 20($s0)
# END: 49
	beqz	$a0 label86
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label87
	.globl	label86
label86:
	la	$a0 str_const0
	li	$t1 49
	jal	_dispatch_abort
	.globl	label87
label87:
# END: 49
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 49
	move	$a0 $s0
# END: 49
	beqz	$a0 label84
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label85
	.globl	label84
label84:
	la	$a0 str_const0
	li	$t1 49
	jal	_dispatch_abort
	.globl	label85
label85:
# END: 49
# DISPATCH: 50
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 50
	la	$a0 str_const1
# END: 50
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 50
	move	$a0 $s0
# END: 50
	beqz	$a0 label88
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label89
	.globl	label88
label88:
	la	$a0 str_const0
	li	$t1 50
	jal	_dispatch_abort
	.globl	label89
label89:
# END: 50
# END: 24
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
D_init:
	jr	$ra	
	.globl	D.f
D.f:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 15
	la	$a0 int_const4
# END: 15
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
	.globl	D.g
D.g:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 16
	la	$a0 int_const5
# END: 16
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
C_init:
	jr	$ra	
	.globl	C.f
C.f:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 11
	la	$a0 int_const3
# END: 11
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
B_init:
	jr	$ra	
	.globl	B.g
B.g:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 7
	la	$a0 int_const2
# END: 7
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
A_init:
	jr	$ra	
	.globl	A.f
A.f:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 2
	la	$a0 int_const0
# END: 2
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
	.globl	A.g
A.g:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 3
	la	$a0 int_const1
# END: 3
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
