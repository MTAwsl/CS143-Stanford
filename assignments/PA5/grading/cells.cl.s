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
	.word	int_const1
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
	.word	9
	.word	String_dispTab
	.word	int_const4
	.ascii	"CellularAutomaton"
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
	.word	int_const3
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
	.word	int_const7
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
	.word	int_const8
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	2
	.word	8
	.word	String_dispTab
	.word	int_const10
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	2
	.word	9
	.word	String_dispTab
	.word	int_const11
	.ascii	"         X         "
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"."
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"X"
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
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"./cells.cl"
	.byte	0	
	.align	2
	.word	-1
int_const11:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	19
	.word	-1
int_const10:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const9:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const8:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const7:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	2
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
	.word	17
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
	.word	20
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
	.word	4
	.word	Main_dispTab
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
CellularAutomaton_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	CellularAutomaton.init
	.word	CellularAutomaton.print
	.word	CellularAutomaton.num_cells
	.word	CellularAutomaton.cell
	.word	CellularAutomaton.cell_left_neighbor
	.word	CellularAutomaton.cell_right_neighbor
	.word	CellularAutomaton.cell_at_next_evolution
	.word	CellularAutomaton.evolve
	.word	-1
CellularAutomaton_protObj:
	.word	6
	.word	4
	.word	CellularAutomaton_dispTab
	.space	4
	.align	2
class_nameTab:
	.word	str_const9
	.word	str_const11
	.word	str_const13
	.word	str_const12
	.word	str_const10
	.word	str_const15
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
	.word	CellularAutomaton_protObj
	.word	CellularAutomaton_init
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
# BLOCK: 82
# ASSIGN: 83
# DISPATCH: 83
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 83
	la	$a0 str_const4
# END: 83
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# NEW: 83
	la	$a0 CellularAutomaton_protObj
	jal	Object.copy
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	CellularAutomaton_init
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
# END: 83
	beqz	$a0 label0
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label1
	.globl	label0
label0:
	la	$a0 str_const0
	li	$t1 83
	jal	_dispatch_abort
	.globl	label1
label1:
# END: 83
	sw	$a0 12($s0)
	addiu	$a1 $s0 12
	jal	_GenGC_Assign
# END: 83
# DISPATCH: 84
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 84
	lw	$a0 12($s0)
# END: 84
	beqz	$a0 label2
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label3
	.globl	label2
label2:
	la	$a0 str_const0
	li	$t1 84
	jal	_dispatch_abort
	.globl	label3
label3:
# END: 84
# LET: 85
# INT_CONST: 85
	la	$a0 int_const2
# END: 85
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# LOOP: 86
	.globl	label4
label4:
# LT: 86
# INT_CONST: 86
	la	$a0 int_const1
# END: 86
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 86
	lw	$a0 8($sp)
# END: 86
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label6
	la	$a0 bool_const0
	b	label7
	.globl	label6
label6:
	la	$a0 bool_const1
	.globl	label7
label7:
# END: 86
	la	$t1 bool_const1
	bne	$a0 $t1 label5
# BLOCK: 87
# DISPATCH: 88
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 88
	lw	$a0 12($s0)
# END: 88
	beqz	$a0 label8
	lw	$t1 8($a0)
	lw	$t1 56($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label9
	.globl	label8
label8:
	la	$a0 str_const0
	li	$t1 88
	jal	_dispatch_abort
	.globl	label9
label9:
# END: 88
# DISPATCH: 89
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 89
	lw	$a0 12($s0)
# END: 89
	beqz	$a0 label10
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label11
	.globl	label10
label10:
	la	$a0 str_const0
	li	$t1 89
	jal	_dispatch_abort
	.globl	label11
label11:
# END: 89
# ASSIGN: 90
# SUB: 90
# OBJECT: 90
	lw	$a0 4($sp)
# END: 90
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 90
	la	$a0 int_const0
# END: 90
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 90
	sw	$a0 4($sp)
	addiu	$a1 $sp 4
	jal	_GenGC_Assign
# END: 90
# END: 87
	b	label4
	.globl	label5
label5:
	xor	$a0	$a0	$a0
# END: 86
	addiu	$sp $sp 4
# END: 85
# OBJECT: 94
	move	$a0 $s0
# END: 94
# END: 82
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
CellularAutomaton_init:
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	la	$a0 str_const16
	sw	$a0 12($s0)
	move	$a0 $s0
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	move	$a0 $s0
	jr	$ra	
	.globl	CellularAutomaton.init
CellularAutomaton.init:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# BLOCK: 9
# ASSIGN: 10
# OBJECT: 10
	lw	$a0 8($sp)
# END: 10
	sw	$a0 12($s0)
	addiu	$a1 $s0 12
	jal	_GenGC_Assign
# END: 10
# OBJECT: 11
	move	$a0 $s0
# END: 11
# END: 9
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	jr	$ra	
	.globl	CellularAutomaton.print
CellularAutomaton.print:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# BLOCK: 16
# DISPATCH: 17
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 17
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 17
	la	$a0 str_const1
# END: 17
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 17
	lw	$a0 12($s0)
# END: 17
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
	li	$t1 17
	jal	_dispatch_abort
	.globl	label15
label15:
# END: 17
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 17
	move	$a0 $s0
# END: 17
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
	li	$t1 17
	jal	_dispatch_abort
	.globl	label13
label13:
# END: 17
# OBJECT: 18
	move	$a0 $s0
# END: 18
# END: 16
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
	.globl	CellularAutomaton.num_cells
CellularAutomaton.num_cells:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 23
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 23
	lw	$a0 12($s0)
# END: 23
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
	li	$t1 23
	jal	_dispatch_abort
	.globl	label17
label17:
# END: 23
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 0
	jr	$ra	
	.globl	CellularAutomaton.cell
CellularAutomaton.cell:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 27
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 27
	lw	$a0 12($sp)
# END: 27
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 27
	la	$a0 int_const0
# END: 27
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 27
	lw	$a0 12($s0)
# END: 27
	beqz	$a0 label18
	lw	$t1 8($a0)
	lw	$t1 20($t1)
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
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	jr	$ra	
	.globl	CellularAutomaton.cell_left_neighbor
CellularAutomaton.cell_left_neighbor:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# CONDITION: 31
# EQ: 31
# OBJECT: 31
	lw	$a0 8($sp)
# END: 31
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 31
	la	$a0 int_const1
# END: 31
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
# END: 31
	la	$t1 bool_const1
	beq	$a0 $t1 label20
# DISPATCH: 34
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# SUB: 34
# OBJECT: 34
	lw	$a0 12($sp)
# END: 34
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 34
	la	$a0 int_const0
# END: 34
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 34
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 34
	move	$a0 $s0
# END: 34
	beqz	$a0 label24
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label25
	.globl	label24
label24:
	la	$a0 str_const0
	li	$t1 34
	jal	_dispatch_abort
	.globl	label25
label25:
# END: 34
	b	label21
	.globl	label20
label20:
# DISPATCH: 32
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# SUB: 32
# DISPATCH: 32
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 32
	move	$a0 $s0
# END: 32
	beqz	$a0 label28
	lw	$t1 8($a0)
	lw	$t1 36($t1)
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
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 32
	la	$a0 int_const0
# END: 32
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 32
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 32
	move	$a0 $s0
# END: 32
	beqz	$a0 label26
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label27
	.globl	label26
label26:
	la	$a0 str_const0
	li	$t1 32
	jal	_dispatch_abort
	.globl	label27
label27:
# END: 32
	.globl	label21
label21:
# END: 31
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	jr	$ra	
	.globl	CellularAutomaton.cell_right_neighbor
CellularAutomaton.cell_right_neighbor:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# CONDITION: 39
# EQ: 39
# OBJECT: 39
	lw	$a0 8($sp)
# END: 39
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# SUB: 39
# DISPATCH: 39
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 39
	move	$a0 $s0
# END: 39
	beqz	$a0 label34
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label35
	.globl	label34
label34:
	la	$a0 str_const0
	li	$t1 39
	jal	_dispatch_abort
	.globl	label35
label35:
# END: 39
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 39
	la	$a0 int_const0
# END: 39
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 39
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label32
	la	$a0 bool_const0
	b	label33
	.globl	label32
label32:
	la	$a0 bool_const1
	.globl	label33
label33:
# END: 39
	la	$t1 bool_const1
	beq	$a0 $t1 label30
# DISPATCH: 42
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# PLUS: 42
# OBJECT: 42
	lw	$a0 12($sp)
# END: 42
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 42
	la	$a0 int_const0
# END: 42
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 42
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 42
	move	$a0 $s0
# END: 42
	beqz	$a0 label36
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label37
	.globl	label36
label36:
	la	$a0 str_const0
	li	$t1 42
	jal	_dispatch_abort
	.globl	label37
label37:
# END: 42
	b	label31
	.globl	label30
label30:
# DISPATCH: 40
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 40
	la	$a0 int_const1
# END: 40
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 40
	move	$a0 $s0
# END: 40
	beqz	$a0 label38
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label39
	.globl	label38
label38:
	la	$a0 str_const0
	li	$t1 40
	jal	_dispatch_abort
	.globl	label39
label39:
# END: 40
	.globl	label31
label31:
# END: 39
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	jr	$ra	
	.globl	CellularAutomaton.cell_at_next_evolution
CellularAutomaton.cell_at_next_evolution:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# CONDITION: 49
# EQ: 52
# PLUS: 51
# PLUS: 50
# CONDITION: 49
# EQ: 49
# DISPATCH: 49
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 49
	lw	$a0 12($sp)
# END: 49
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 49
	move	$a0 $s0
# END: 49
	beqz	$a0 label48
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label49
	.globl	label48
label48:
	la	$a0 str_const0
	li	$t1 49
	jal	_dispatch_abort
	.globl	label49
label49:
# END: 49
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 49
	la	$a0 str_const2
# END: 49
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label46
	la	$a0 bool_const0
	b	label47
	.globl	label46
label46:
	la	$a0 bool_const1
	.globl	label47
label47:
# END: 49
	la	$t1 bool_const1
	beq	$a0 $t1 label44
# INT_CONST: 49
	la	$a0 int_const1
# END: 49
	b	label45
	.globl	label44
label44:
# INT_CONST: 49
	la	$a0 int_const0
# END: 49
	.globl	label45
label45:
# END: 49
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# CONDITION: 50
# EQ: 50
# DISPATCH: 50
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 50
	lw	$a0 16($sp)
# END: 50
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 50
	move	$a0 $s0
# END: 50
	beqz	$a0 label54
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label55
	.globl	label54
label54:
	la	$a0 str_const0
	li	$t1 50
	jal	_dispatch_abort
	.globl	label55
label55:
# END: 50
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 50
	la	$a0 str_const2
# END: 50
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label52
	la	$a0 bool_const0
	b	label53
	.globl	label52
label52:
	la	$a0 bool_const1
	.globl	label53
label53:
# END: 50
	la	$t1 bool_const1
	beq	$a0 $t1 label50
# INT_CONST: 50
	la	$a0 int_const1
# END: 50
	b	label51
	.globl	label50
label50:
# INT_CONST: 50
	la	$a0 int_const0
# END: 50
	.globl	label51
label51:
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
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# CONDITION: 51
# EQ: 51
# DISPATCH: 51
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 51
	lw	$a0 16($sp)
# END: 51
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 51
	move	$a0 $s0
# END: 51
	beqz	$a0 label60
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label61
	.globl	label60
label60:
	la	$a0 str_const0
	li	$t1 51
	jal	_dispatch_abort
	.globl	label61
label61:
# END: 51
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# STR_CONST: 51
	la	$a0 str_const2
# END: 51
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label58
	la	$a0 bool_const0
	b	label59
	.globl	label58
label58:
	la	$a0 bool_const1
	.globl	label59
label59:
# END: 51
	la	$t1 bool_const1
	beq	$a0 $t1 label56
# INT_CONST: 51
	la	$a0 int_const1
# END: 51
	b	label57
	.globl	label56
label56:
# INT_CONST: 51
	la	$a0 int_const0
# END: 51
	.globl	label57
label57:
# END: 51
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 51
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 52
	la	$a0 int_const0
# END: 52
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label42
	la	$a0 bool_const0
	b	label43
	.globl	label42
label42:
	la	$a0 bool_const1
	.globl	label43
label43:
# END: 52
	la	$t1 bool_const1
	beq	$a0 $t1 label40
# STR_CONST: 56
	la	$a0 str_const3
# END: 56
	b	label41
	.globl	label40
label40:
# STR_CONST: 54
	la	$a0 str_const2
# END: 54
	.globl	label41
label41:
# END: 49
	addiu	$sp $sp 4
	lw	$ra 0($sp)
	addiu	$sp $sp 4
	jr	$ra	
	.globl	CellularAutomaton.evolve
CellularAutomaton.evolve:
	sw	$ra 0($sp)
	addiu	$sp $sp -4
# LET: 61
	la	$a0 int_const1
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# DISPATCH: 62
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 62
	move	$a0 $s0
# END: 62
	beqz	$a0 label62
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label63
	.globl	label62
label62:
	la	$a0 str_const0
	li	$t1 62
	jal	_dispatch_abort
	.globl	label63
label63:
# END: 62
	addiu	$sp $sp -4
	sw	$a0 4($sp)
	la	$a0 str_const16
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# BLOCK: 64
# LOOP: 65
	.globl	label64
label64:
# LT: 65
# OBJECT: 65
	lw	$a0 12($sp)
# END: 65
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 65
	lw	$a0 12($sp)
# END: 65
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label66
	la	$a0 bool_const0
	b	label67
	.globl	label66
label66:
	la	$a0 bool_const1
	.globl	label67
label67:
# END: 65
	la	$t1 bool_const1
	bne	$a0 $t1 label65
# BLOCK: 66
# ASSIGN: 67
# DISPATCH: 67
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# DISPATCH: 67
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 67
	lw	$a0 20($sp)
# END: 67
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 67
	move	$a0 $s0
# END: 67
	beqz	$a0 label70
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label71
	.globl	label70
label70:
	la	$a0 str_const0
	li	$t1 67
	jal	_dispatch_abort
	.globl	label71
label71:
# END: 67
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 67
	lw	$a0 12($sp)
# END: 67
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
	li	$t1 67
	jal	_dispatch_abort
	.globl	label69
label69:
# END: 67
	sw	$a0 4($sp)
	addiu	$a1 $sp 4
	jal	_GenGC_Assign
# END: 67
# ASSIGN: 68
# PLUS: 68
# OBJECT: 68
	lw	$a0 12($sp)
# END: 68
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 68
	la	$a0 int_const0
# END: 68
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 68
	sw	$a0 12($sp)
	addiu	$a1 $sp 12
	jal	_GenGC_Assign
# END: 68
# END: 66
	b	label64
	.globl	label65
label65:
	xor	$a0	$a0	$a0
# END: 65
# ASSIGN: 71
# OBJECT: 71
	lw	$a0 4($sp)
# END: 71
	sw	$a0 12($s0)
	addiu	$a1 $s0 12
	jal	_GenGC_Assign
# END: 71
# OBJECT: 72
	move	$a0 $s0
# END: 72
# END: 64
	addiu	$sp $sp 12
# END: 61
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
