	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.weak	_configstring_next
_configstring_next:
	stdec	r6

						//../DeMiSTify/firmware/configstring.c, line 30
		// Offsets 255, -44
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-44
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 30
						//FIXME convert
						// (convert - reducing type 503 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 21 type 503
						// matchobj comparing flags 21 with 1
						// matchobj comparing flags 21 with 1
						// const/deref
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						//sizemod based on type 0x503
	ld	r0
						//Saving to reg r1
						// (save temp)isreg
	mr	r0
						//save_temp done
						//No need to mask - same size
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.weak	_configstring_begin
_configstring_begin:
	stdec	r6

						//../DeMiSTify/firmware/configstring.c, line 44
		// Offsets 255, -44
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-44
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 45
		// Offsets 33, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	33
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 46
		// Offsets 20, -44
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	-44
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	20
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 46
						//FIXME convert
						// (convert - reducing type 503 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_configstring_coretype
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 21 type 503
						// matchobj comparing flags 21 with 82
						// matchobj comparing flags 21 with 82
						// const/deref
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a1 with 82
						// matchobj comparing flags a1 with 82
						// deref
						// const to tmp
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	-44
						//sizemod based on type 0x503
	ldt
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
	ldinc	r6
	mr	r7

	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
	.weak	_configstring_end
_configstring_end:
	stdec	r6

						//../DeMiSTify/firmware/configstring.c, line 52
		// Offsets 32, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 3
	st	r0
						//save_temp done
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.3
	.weak	_configstring_nextfield
_configstring_nextfield:
	stdec	r6
l13: # 
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 60
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/configstring.c, line 60
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/configstring.c, line 61
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r1 - only match against tmp
				// flags 42
	and	r1

						//../DeMiSTify/firmware/configstring.c, line 61
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l14
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 61
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	59
	cmp	r1

						//../DeMiSTify/firmware/configstring.c, line 61
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l13
		add	r7
l14: # 

						//../DeMiSTify/firmware/configstring.c, line 62
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.4
	.weak	_configstring_copytocomma
_configstring_copytocomma:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 70
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 72
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/configstring.c, line 72
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/configstring.c, line 73
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r1 - only match against tmp
				// flags 42
	and	r1

						//../DeMiSTify/firmware/configstring.c, line 73
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l35
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 73
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	44
	cmp	r1

						//../DeMiSTify/firmware/configstring.c, line 73
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l35
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 73
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	59
	cmp	r1

						//../DeMiSTify/firmware/configstring.c, line 73
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l35
		add	r7
l34: # 

						//../DeMiSTify/firmware/configstring.c, line 75
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	12
	ldidx	r6
	sgn
	cmp	r4

						//../DeMiSTify/firmware/configstring.c, line 75
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l23
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 75
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	16
	ldidx	r6

						//../DeMiSTify/firmware/configstring.c, line 75
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l23
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 76
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 2
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 1
	stbinc	r3
						//save_temp done
l23: # 

						//../DeMiSTify/firmware/configstring.c, line 77
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r1 - only match against tmp
	mt	r1
				// flags 42
	and	r1

						//../DeMiSTify/firmware/configstring.c, line 77
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l26
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 78
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r4
						// (save result) // isreg
l26: # 

						//../DeMiSTify/firmware/configstring.c, line 79
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/configstring.c, line 79
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/configstring.c, line 73
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r1 - only match against tmp
				// flags 42
	and	r1

						//../DeMiSTify/firmware/configstring.c, line 73
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l35
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 73
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	44
	cmp	r1

						//../DeMiSTify/firmware/configstring.c, line 73
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l35
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 73
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	59
	cmp	r1

						//../DeMiSTify/firmware/configstring.c, line 73
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7
l35: # 

						//../DeMiSTify/firmware/configstring.c, line 81
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	16
	ldidx	r6

						//../DeMiSTify/firmware/configstring.c, line 81
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l30
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 82
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)store type 1
	byt
	st	r3
						//save_temp done
l30: # 

						//../DeMiSTify/firmware/configstring.c, line 83
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	44
	cmp	r1

						//../DeMiSTify/firmware/configstring.c, line 83
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l32
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 83
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 83
						//pcreltotemp
	.lipcrel	l33
	add	r7
l32: # 

						//../DeMiSTify/firmware/configstring.c, line 83
						// Q1 disposable
						// (minus)
						// (obj to r2) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r2
						// matchobj comparing flags 1 with 42
	.liconst	0
	exg r2
	sub r2
						// (save result) // isreg
l33: # 

						//../DeMiSTify/firmware/configstring.c, line 83
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 3
						// reg r2 - only match against tmp
	mt	r2
	mr	r0
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.5
	.weak	_configstring_getdigit
_configstring_getdigit:
	stdec	r6
						// allocreg r2

						//../DeMiSTify/firmware/configstring.c, line 89
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 89
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/configstring.c, line 89
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size
						// freereg r1

						//../DeMiSTify/firmware/configstring.c, line 91
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	48
	cmp	r2

						//../DeMiSTify/firmware/configstring.c, line 91
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l39
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 91
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	57
	cmp	r2

						//../DeMiSTify/firmware/configstring.c, line 91
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l39
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 92
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	48
	sub	r2
						// (save result) // isreg
l39: # 

						//../DeMiSTify/firmware/configstring.c, line 93
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	65
	cmp	r2

						//../DeMiSTify/firmware/configstring.c, line 93
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l42
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 93
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	90
	cmp	r2

						//../DeMiSTify/firmware/configstring.c, line 93
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l42
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 94
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	55
	sub	r2
						// (save result) // isreg
l42: # 
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 99
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r2 - only match against tmp
	mt	r2
						//Saving to reg r1
						// (save temp)isreg
	mr	r0
						//save_temp done
						//No need to mask - same size
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.6
	.weak	_configstring_setindex
_configstring_setindex:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r3

						//../DeMiSTify/firmware/configstring.c, line 107
		// Offsets -44, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	-44
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 112
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 112
						//call
						//pcreltotemp
	.lipcrel	_configstring_matchextension // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/configstring.c, line 112
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r3

						//../DeMiSTify/firmware/configstring.c, line 114
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r3 - only match against tmp
				// flags 42
	and	r3

						//../DeMiSTify/firmware/configstring.c, line 114
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l47
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 115
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r3
						// (save result) // isreg
						// freereg r1
						// freereg r2
l47: # 

						//../DeMiSTify/firmware/configstring.c, line 119
		// Offsets 5, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	5
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 119
		// Offsets 85, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 403
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	85
						// (save temp)store type 3
	st	r4
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 119
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	6
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/configstring.c, line 119
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_romtype
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 119
						// Q1 disposable
						// Q2 disposable
						// Z disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	or	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x62
	mt	r0
	st	r4
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/configstring.c, line 119
		// Offsets 4, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 62
						// matchobj comparing flags a1 with 62
						// deref
						// const to r0
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 120
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// freereg r3
						// freereg r4
	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.7
	.weak	_configstring_matchextension
_configstring_matchextension:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-8
	add	r6
						// allocreg r5
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//../DeMiSTify/firmware/configstring.c, line 126
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 151
						//call
						//pcreltotemp
	.lipcrel	_configstring_begin // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/configstring.c, line 161
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 162
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_configstring_index
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 162
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/configstring.c, line 162
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l77
		add	r7
l74: # 

						//../DeMiSTify/firmware/configstring.c, line 162
						//call
						//pcreltotemp
	.lipcrel	_configstring_nextfield // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/configstring.c, line 162
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 162
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_configstring_index
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 162
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	cmp	r3
						// freereg r1

						//../DeMiSTify/firmware/configstring.c, line 162
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l74
		add	r7
l77: # 
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 166
						// (test)
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_configstring_index
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//../DeMiSTify/firmware/configstring.c, line 166
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l78
		add	r7
l75: # 

						//../DeMiSTify/firmware/configstring.c, line 170
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/configstring.c, line 170
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/configstring.c, line 172
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r1 - only match against tmp
				// flags 42
	and	r1

						//../DeMiSTify/firmware/configstring.c, line 172
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l78
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 172
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	44
	cmp	r1

						//../DeMiSTify/firmware/configstring.c, line 172
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l75
		add	r7
l78: # 

						//../DeMiSTify/firmware/configstring.c, line 175
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 162
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type a
	st	r6
						//save_temp done
						// freereg r1
l76: # 

						//../DeMiSTify/firmware/configstring.c, line 179
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/configstring.c, line 179
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r4

						//../DeMiSTify/firmware/configstring.c, line 180
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/configstring.c, line 180
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r5

						//../DeMiSTify/firmware/configstring.c, line 181
						//call
						//pcreltotemp
	.lipcrel	_configstring_next // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/configstring.c, line 181
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r2

						//../DeMiSTify/firmware/configstring.c, line 183
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	add	r3
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 185
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	8
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/configstring.c, line 185
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 185
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	cmp	r4
						// freereg r1

						//../DeMiSTify/firmware/configstring.c, line 185
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l66
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 185
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	63
	cmp	r4

						//../DeMiSTify/firmware/configstring.c, line 185
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l64
		add	r7
						// freereg r1
l66: # 
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 185
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	9
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/configstring.c, line 185
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 185
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	cmp	r5
						// freereg r1

						//../DeMiSTify/firmware/configstring.c, line 185
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l65
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 185
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	63
	cmp	r5

						//../DeMiSTify/firmware/configstring.c, line 185
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l64
		add	r7
						// freereg r1
l65: # 
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 185
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	10
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/configstring.c, line 185
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 1
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 185
						// Q2 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	cmp	r2
						// freereg r1

						//../DeMiSTify/firmware/configstring.c, line 185
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l63
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 185
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	63
	cmp	r2

						//../DeMiSTify/firmware/configstring.c, line 185
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l64
		add	r7
l63: # 

						//../DeMiSTify/firmware/configstring.c, line 185
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 186
						//pcreltotemp
	.lipcrel	l72
	add	r7
l64: # 

						//../DeMiSTify/firmware/configstring.c, line 186
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	44
	cmp	r4

						//../DeMiSTify/firmware/configstring.c, line 186
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l71
		add	r7

						//../DeMiSTify/firmware/configstring.c, line 186
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	59
	cmp	r4

						//../DeMiSTify/firmware/configstring.c, line 186
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l72
		add	r7
l71: # 

						//../DeMiSTify/firmware/configstring.c, line 188
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/configstring.c, line 189
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
l72: # 

						//../DeMiSTify/firmware/configstring.c, line 177
						// (test)
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6

						//../DeMiSTify/firmware/configstring.c, line 177
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l76
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/configstring.c, line 192
						//call
						//pcreltotemp
	.lipcrel	_configstring_end // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// allocreg r1

						//../DeMiSTify/firmware/configstring.c, line 194
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r3 - only match against tmp
	mt	r3
						//Saving to reg r1
						// (save temp)isreg
	mr	r0
						//save_temp done
						//No need to mask - same size
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 42
	.liconst	-8
	sub	r6
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.data.8
	.align	4
	.weak	_configstring_index
_configstring_index:
	.byte	0
	.section	.bss.9
	.align	4
	.global	_configstring_coretype
	.comm	_configstring_coretype,1
