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
str_const11:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const4
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
	.word	int_const5
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
	.word	int_const4
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
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"./not.cl"
	.byte	0	
	.align	2
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
	.word	6
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
	.word	1
	.word	-1
int_const1:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	100
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
	.word	str_const5
	.word	str_const7
	.word	str_const9
	.word	str_const8
	.word	str_const6
	.word	str_const10
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
# LET: 7
# INT_CONST: 7
	la	$a0 int_const0
# END: 7
	addiu	$sp $sp -4
	sw	$a0 4($sp)
	la	$a0 bool_const0
	addiu	$sp $sp -4
	sw	$a0 4($sp)
# BLOCK: 9
# LOOP: 10
	.globl	label0
label0:
# LT: 10
# OBJECT: 10
	lw	$a0 8($sp)
# END: 10
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 10
	la	$a0 int_const1
# END: 10
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label2
	la	$a0 bool_const0
	b	label3
	.globl	label2
label2:
	la	$a0 bool_const1
	.globl	label3
label3:
# END: 10
	la	$t1 bool_const1
	bne	$a0 $t1 label1
# BLOCK: 10
# EQ: 11
# OBJECT: 11
	lw	$a0 4($sp)
# END: 11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# COMP: 11
# COMP: 11
# COMP: 11
# COMP: 11
# COMP: 11
# COMP: 11
# COMP: 11
# COMP: 11
# COMP: 11
# COMP: 11
# COMP: 11
# OBJECT: 11
	lw	$a0 8($sp)
# END: 11
	la	$t1 bool_const1
	bne	$a0 $t1 label26
	la	$a0 bool_const0
	b	label27
	.globl	label26
label26:
	move	$a0 $t1
	.globl	label27
label27:
# END: 11
	la	$t1 bool_const1
	bne	$a0 $t1 label24
	la	$a0 bool_const0
	b	label25
	.globl	label24
label24:
	move	$a0 $t1
	.globl	label25
label25:
# END: 11
	la	$t1 bool_const1
	bne	$a0 $t1 label22
	la	$a0 bool_const0
	b	label23
	.globl	label22
label22:
	move	$a0 $t1
	.globl	label23
label23:
# END: 11
	la	$t1 bool_const1
	bne	$a0 $t1 label20
	la	$a0 bool_const0
	b	label21
	.globl	label20
label20:
	move	$a0 $t1
	.globl	label21
label21:
# END: 11
	la	$t1 bool_const1
	bne	$a0 $t1 label18
	la	$a0 bool_const0
	b	label19
	.globl	label18
label18:
	move	$a0 $t1
	.globl	label19
label19:
# END: 11
	la	$t1 bool_const1
	bne	$a0 $t1 label16
	la	$a0 bool_const0
	b	label17
	.globl	label16
label16:
	move	$a0 $t1
	.globl	label17
label17:
# END: 11
	la	$t1 bool_const1
	bne	$a0 $t1 label14
	la	$a0 bool_const0
	b	label15
	.globl	label14
label14:
	move	$a0 $t1
	.globl	label15
label15:
# END: 11
	la	$t1 bool_const1
	bne	$a0 $t1 label12
	la	$a0 bool_const0
	b	label13
	.globl	label12
label12:
	move	$a0 $t1
	.globl	label13
label13:
# END: 11
	la	$t1 bool_const1
	bne	$a0 $t1 label10
	la	$a0 bool_const0
	b	label11
	.globl	label10
label10:
	move	$a0 $t1
	.globl	label11
label11:
# END: 11
	la	$t1 bool_const1
	bne	$a0 $t1 label8
	la	$a0 bool_const0
	b	label9
	.globl	label8
label8:
	move	$a0 $t1
	.globl	label9
label9:
# END: 11
	la	$t1 bool_const1
	bne	$a0 $t1 label6
	la	$a0 bool_const0
	b	label7
	.globl	label6
label6:
	move	$a0 $t1
	.globl	label7
label7:
# END: 11
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label4
	la	$a0 bool_const0
	b	label5
	.globl	label4
label4:
	la	$a0 bool_const1
	.globl	label5
label5:
# END: 11
# EQ: 12
# OBJECT: 12
	lw	$a0 4($sp)
# END: 12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# COMP: 12
# COMP: 12
# COMP: 12
# COMP: 12
# COMP: 12
# COMP: 12
# COMP: 12
# COMP: 12
# COMP: 12
# COMP: 12
# COMP: 12
# OBJECT: 12
	lw	$a0 8($sp)
# END: 12
	la	$t1 bool_const1
	bne	$a0 $t1 label50
	la	$a0 bool_const0
	b	label51
	.globl	label50
label50:
	move	$a0 $t1
	.globl	label51
label51:
# END: 12
	la	$t1 bool_const1
	bne	$a0 $t1 label48
	la	$a0 bool_const0
	b	label49
	.globl	label48
label48:
	move	$a0 $t1
	.globl	label49
label49:
# END: 12
	la	$t1 bool_const1
	bne	$a0 $t1 label46
	la	$a0 bool_const0
	b	label47
	.globl	label46
label46:
	move	$a0 $t1
	.globl	label47
label47:
# END: 12
	la	$t1 bool_const1
	bne	$a0 $t1 label44
	la	$a0 bool_const0
	b	label45
	.globl	label44
label44:
	move	$a0 $t1
	.globl	label45
label45:
# END: 12
	la	$t1 bool_const1
	bne	$a0 $t1 label42
	la	$a0 bool_const0
	b	label43
	.globl	label42
label42:
	move	$a0 $t1
	.globl	label43
label43:
# END: 12
	la	$t1 bool_const1
	bne	$a0 $t1 label40
	la	$a0 bool_const0
	b	label41
	.globl	label40
label40:
	move	$a0 $t1
	.globl	label41
label41:
# END: 12
	la	$t1 bool_const1
	bne	$a0 $t1 label38
	la	$a0 bool_const0
	b	label39
	.globl	label38
label38:
	move	$a0 $t1
	.globl	label39
label39:
# END: 12
	la	$t1 bool_const1
	bne	$a0 $t1 label36
	la	$a0 bool_const0
	b	label37
	.globl	label36
label36:
	move	$a0 $t1
	.globl	label37
label37:
# END: 12
	la	$t1 bool_const1
	bne	$a0 $t1 label34
	la	$a0 bool_const0
	b	label35
	.globl	label34
label34:
	move	$a0 $t1
	.globl	label35
label35:
# END: 12
	la	$t1 bool_const1
	bne	$a0 $t1 label32
	la	$a0 bool_const0
	b	label33
	.globl	label32
label32:
	move	$a0 $t1
	.globl	label33
label33:
# END: 12
	la	$t1 bool_const1
	bne	$a0 $t1 label30
	la	$a0 bool_const0
	b	label31
	.globl	label30
label30:
	move	$a0 $t1
	.globl	label31
label31:
# END: 12
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
# END: 12
# EQ: 13
# OBJECT: 13
	lw	$a0 4($sp)
# END: 13
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# COMP: 13
# COMP: 13
# COMP: 13
# COMP: 13
# COMP: 13
# COMP: 13
# COMP: 13
# COMP: 13
# COMP: 13
# COMP: 13
# COMP: 13
# OBJECT: 13
	lw	$a0 8($sp)
# END: 13
	la	$t1 bool_const1
	bne	$a0 $t1 label74
	la	$a0 bool_const0
	b	label75
	.globl	label74
label74:
	move	$a0 $t1
	.globl	label75
label75:
# END: 13
	la	$t1 bool_const1
	bne	$a0 $t1 label72
	la	$a0 bool_const0
	b	label73
	.globl	label72
label72:
	move	$a0 $t1
	.globl	label73
label73:
# END: 13
	la	$t1 bool_const1
	bne	$a0 $t1 label70
	la	$a0 bool_const0
	b	label71
	.globl	label70
label70:
	move	$a0 $t1
	.globl	label71
label71:
# END: 13
	la	$t1 bool_const1
	bne	$a0 $t1 label68
	la	$a0 bool_const0
	b	label69
	.globl	label68
label68:
	move	$a0 $t1
	.globl	label69
label69:
# END: 13
	la	$t1 bool_const1
	bne	$a0 $t1 label66
	la	$a0 bool_const0
	b	label67
	.globl	label66
label66:
	move	$a0 $t1
	.globl	label67
label67:
# END: 13
	la	$t1 bool_const1
	bne	$a0 $t1 label64
	la	$a0 bool_const0
	b	label65
	.globl	label64
label64:
	move	$a0 $t1
	.globl	label65
label65:
# END: 13
	la	$t1 bool_const1
	bne	$a0 $t1 label62
	la	$a0 bool_const0
	b	label63
	.globl	label62
label62:
	move	$a0 $t1
	.globl	label63
label63:
# END: 13
	la	$t1 bool_const1
	bne	$a0 $t1 label60
	la	$a0 bool_const0
	b	label61
	.globl	label60
label60:
	move	$a0 $t1
	.globl	label61
label61:
# END: 13
	la	$t1 bool_const1
	bne	$a0 $t1 label58
	la	$a0 bool_const0
	b	label59
	.globl	label58
label58:
	move	$a0 $t1
	.globl	label59
label59:
# END: 13
	la	$t1 bool_const1
	bne	$a0 $t1 label56
	la	$a0 bool_const0
	b	label57
	.globl	label56
label56:
	move	$a0 $t1
	.globl	label57
label57:
# END: 13
	la	$t1 bool_const1
	bne	$a0 $t1 label54
	la	$a0 bool_const0
	b	label55
	.globl	label54
label54:
	move	$a0 $t1
	.globl	label55
label55:
# END: 13
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
# END: 13
# EQ: 14
# OBJECT: 14
	lw	$a0 4($sp)
# END: 14
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# COMP: 14
# COMP: 14
# COMP: 14
# COMP: 14
# COMP: 14
# COMP: 14
# COMP: 14
# COMP: 14
# COMP: 14
# COMP: 14
# COMP: 14
# OBJECT: 14
	lw	$a0 8($sp)
# END: 14
	la	$t1 bool_const1
	bne	$a0 $t1 label98
	la	$a0 bool_const0
	b	label99
	.globl	label98
label98:
	move	$a0 $t1
	.globl	label99
label99:
# END: 14
	la	$t1 bool_const1
	bne	$a0 $t1 label96
	la	$a0 bool_const0
	b	label97
	.globl	label96
label96:
	move	$a0 $t1
	.globl	label97
label97:
# END: 14
	la	$t1 bool_const1
	bne	$a0 $t1 label94
	la	$a0 bool_const0
	b	label95
	.globl	label94
label94:
	move	$a0 $t1
	.globl	label95
label95:
# END: 14
	la	$t1 bool_const1
	bne	$a0 $t1 label92
	la	$a0 bool_const0
	b	label93
	.globl	label92
label92:
	move	$a0 $t1
	.globl	label93
label93:
# END: 14
	la	$t1 bool_const1
	bne	$a0 $t1 label90
	la	$a0 bool_const0
	b	label91
	.globl	label90
label90:
	move	$a0 $t1
	.globl	label91
label91:
# END: 14
	la	$t1 bool_const1
	bne	$a0 $t1 label88
	la	$a0 bool_const0
	b	label89
	.globl	label88
label88:
	move	$a0 $t1
	.globl	label89
label89:
# END: 14
	la	$t1 bool_const1
	bne	$a0 $t1 label86
	la	$a0 bool_const0
	b	label87
	.globl	label86
label86:
	move	$a0 $t1
	.globl	label87
label87:
# END: 14
	la	$t1 bool_const1
	bne	$a0 $t1 label84
	la	$a0 bool_const0
	b	label85
	.globl	label84
label84:
	move	$a0 $t1
	.globl	label85
label85:
# END: 14
	la	$t1 bool_const1
	bne	$a0 $t1 label82
	la	$a0 bool_const0
	b	label83
	.globl	label82
label82:
	move	$a0 $t1
	.globl	label83
label83:
# END: 14
	la	$t1 bool_const1
	bne	$a0 $t1 label80
	la	$a0 bool_const0
	b	label81
	.globl	label80
label80:
	move	$a0 $t1
	.globl	label81
label81:
# END: 14
	la	$t1 bool_const1
	bne	$a0 $t1 label78
	la	$a0 bool_const0
	b	label79
	.globl	label78
label78:
	move	$a0 $t1
	.globl	label79
label79:
# END: 14
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label76
	la	$a0 bool_const0
	b	label77
	.globl	label76
label76:
	la	$a0 bool_const1
	.globl	label77
label77:
# END: 14
# EQ: 15
# OBJECT: 15
	lw	$a0 4($sp)
# END: 15
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# COMP: 15
# COMP: 15
# COMP: 15
# COMP: 15
# COMP: 15
# COMP: 15
# COMP: 15
# COMP: 15
# COMP: 15
# COMP: 15
# COMP: 15
# OBJECT: 15
	lw	$a0 8($sp)
# END: 15
	la	$t1 bool_const1
	bne	$a0 $t1 label122
	la	$a0 bool_const0
	b	label123
	.globl	label122
label122:
	move	$a0 $t1
	.globl	label123
label123:
# END: 15
	la	$t1 bool_const1
	bne	$a0 $t1 label120
	la	$a0 bool_const0
	b	label121
	.globl	label120
label120:
	move	$a0 $t1
	.globl	label121
label121:
# END: 15
	la	$t1 bool_const1
	bne	$a0 $t1 label118
	la	$a0 bool_const0
	b	label119
	.globl	label118
label118:
	move	$a0 $t1
	.globl	label119
label119:
# END: 15
	la	$t1 bool_const1
	bne	$a0 $t1 label116
	la	$a0 bool_const0
	b	label117
	.globl	label116
label116:
	move	$a0 $t1
	.globl	label117
label117:
# END: 15
	la	$t1 bool_const1
	bne	$a0 $t1 label114
	la	$a0 bool_const0
	b	label115
	.globl	label114
label114:
	move	$a0 $t1
	.globl	label115
label115:
# END: 15
	la	$t1 bool_const1
	bne	$a0 $t1 label112
	la	$a0 bool_const0
	b	label113
	.globl	label112
label112:
	move	$a0 $t1
	.globl	label113
label113:
# END: 15
	la	$t1 bool_const1
	bne	$a0 $t1 label110
	la	$a0 bool_const0
	b	label111
	.globl	label110
label110:
	move	$a0 $t1
	.globl	label111
label111:
# END: 15
	la	$t1 bool_const1
	bne	$a0 $t1 label108
	la	$a0 bool_const0
	b	label109
	.globl	label108
label108:
	move	$a0 $t1
	.globl	label109
label109:
# END: 15
	la	$t1 bool_const1
	bne	$a0 $t1 label106
	la	$a0 bool_const0
	b	label107
	.globl	label106
label106:
	move	$a0 $t1
	.globl	label107
label107:
# END: 15
	la	$t1 bool_const1
	bne	$a0 $t1 label104
	la	$a0 bool_const0
	b	label105
	.globl	label104
label104:
	move	$a0 $t1
	.globl	label105
label105:
# END: 15
	la	$t1 bool_const1
	bne	$a0 $t1 label102
	la	$a0 bool_const0
	b	label103
	.globl	label102
label102:
	move	$a0 $t1
	.globl	label103
label103:
# END: 15
	move	$t1 $a0
	addiu	$sp $sp 4
	lw	$t2 0($sp)
	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	la	$t1 bool_const1
	beq	$a0 $t1 label100
	la	$a0 bool_const0
	b	label101
	.globl	label100
label100:
	la	$a0 bool_const1
	.globl	label101
label101:
# END: 15
# ASSIGN: 16
# PLUS: 16
# OBJECT: 16
	lw	$a0 8($sp)
# END: 16
	jal	Object.copy
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# INT_CONST: 16
	la	$a0 int_const2
# END: 16
	move	$t2 $a0
	addiu	$sp $sp 4
	lw	$a0 0($sp)
	move	$t1 $a0
	lw	$t1 12($t1)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
# END: 16
	sw	$a0 8($sp)
	addiu	$a1 $sp 8
	jal	_GenGC_Assign
# END: 16
# END: 10
	b	label0
	.globl	label1
label1:
	xor	$a0	$a0	$a0
# END: 10
# CONDITION: 18
# OBJECT: 18
	lw	$a0 4($sp)
# END: 18
	la	$t1 bool_const1
	beq	$a0 $t1 label124
# INT_CONST: 18
	la	$a0 int_const0
# END: 18
	b	label125
	.globl	label124
label124:
# DISPATCH: 18
	sw	$s0 0($sp)
	addiu	$sp $sp -4
# OBJECT: 18
	move	$a0 $s0
# END: 18
	beqz	$a0 label126
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	move	$s0 $a0
	jal	$t1
	addiu	$sp $sp 4
	lw	$s0 0($sp)
	b	label127
	.globl	label126
label126:
	la	$a0 str_const0
	li	$t1 18
	jal	_dispatch_abort
	.globl	label127
label127:
# END: 18
	.globl	label125
label125:
# END: 18
# END: 9
	addiu	$sp $sp 8
# END: 7
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
