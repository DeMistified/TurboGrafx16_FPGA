	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_HandlePS2Mouse
_HandlePS2Mouse:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
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
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r5
		// Offsets -44, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	-44
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r4
						// allocreg r3
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 44
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//../DeMiSTify/firmware/mouse.c, line 44
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l13
		add	r7

						//../DeMiSTify/firmware/mouse.c, line 45
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l8,0
						// static pe not varadr
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
l13: # 

						//../DeMiSTify/firmware/mouse.c, line 47
						// (test)
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l8,0
						//static deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/mouse.c, line 47
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l15
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 49
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_mousebuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 49
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_read // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 49
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r0
						// freereg r1

						//../DeMiSTify/firmware/mouse.c, line 49
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l47
		add	r7
l45: # 
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 49
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_mousebuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 49
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_read // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 49
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r0
						// freereg r1

						//../DeMiSTify/firmware/mouse.c, line 49
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l45
		add	r7
l47: # 
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 51
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 140
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l8,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 51
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l8,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
	addt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//../DeMiSTify/firmware/mouse.c, line 51
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l1,0
						// static pe is varadr
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/mouse.c, line 51
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l9,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//../DeMiSTify/firmware/mouse.c, line 52
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 10
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 2
						// static
	.liabs	l10,0
						// static pe not varadr
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

						//../DeMiSTify/firmware/mouse.c, line 55
						//pcreltotemp
	.lipcrel	l48
	add	r7
l15: # 
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 56
						// (test)
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l10,0
						//static deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/mouse.c, line 56
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l21
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 58
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 0)
	.liabs	_mousebuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 58
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_read // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 59
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r0
						// freereg r1

						//../DeMiSTify/firmware/mouse.c, line 59
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l23
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 62
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l10,0
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l10,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/mouse.c, line 64
						//pcreltotemp
	.lipcrel	l26
	add	r7
						// freereg r1
l23: # 
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 64
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l6,0
						//static deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../DeMiSTify/firmware/mouse.c, line 64
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 64
						// (test)
						// (obj to tmp) flags 4a type 103
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/mouse.c, line 64
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l26
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 67
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_mousebuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 67
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_init // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/mouse.c, line 68
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l8,0
						// static pe not varadr
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
l26: # 
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 71
						// (test)
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l9,0
						//static deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/mouse.c, line 71
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l48
		add	r7

						//../DeMiSTify/firmware/mouse.c, line 71
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l10,0
						//static deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/mouse.c, line 71
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l48
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 73
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 144
		// Real offset of type is 144, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l8,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 73
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l8,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
	addt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//../DeMiSTify/firmware/mouse.c, line 73
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l1,0
						// static pe is varadr
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/mouse.c, line 73
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 74
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 6a
						// reg r4 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	128
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/mouse.c, line 74
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l31
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 76
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
	.liconst	127
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l10,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/mouse.c, line 80
						//pcreltotemp
	.lipcrel	l48
	add	r7
l31: # 

						//../DeMiSTify/firmware/mouse.c, line 81
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l9,4
						// static pe not varadr
						//sizemod based on type 0x3
	stmpdec	r4

						//../DeMiSTify/firmware/mouse.c, line 88
						//pcreltotemp
	.lipcrel	l48
	add	r7
l21: # 

						//../DeMiSTify/firmware/mouse.c, line 88
						// (test)
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l9,0
						//static deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/mouse.c, line 88
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l35
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 91
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 148
		// Real offset of type is 148, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l8,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 91
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l8,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
	addt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//../DeMiSTify/firmware/mouse.c, line 91
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l1,0
						// static pe is varadr
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/mouse.c, line 91
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 91
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 91
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_mousebuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 91
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_write // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/mouse.c, line 92
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l9,0
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l9,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/mouse.c, line 93
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 10
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 2
						// static
	.liabs	l10,0
						// static pe not varadr
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
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 94
		// Offsets 3500, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	3500
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 94
						//call
						//pcreltotemp
	.lipcrel	_GetTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 94
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/mouse.c, line 94
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l6,4
						// static pe not varadr
						//sizemod based on type 0x3
	stmpdec	r1
						// freereg r1

						//../DeMiSTify/firmware/mouse.c, line 98
						//pcreltotemp
	.lipcrel	l48
	add	r7
l35: # 
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 100
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_mousebuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 100
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_read // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/mouse.c, line 100
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r3

						//../DeMiSTify/firmware/mouse.c, line 100
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
	sgn
	cmp	r3

						//../DeMiSTify/firmware/mouse.c, line 100
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l48
		add	r7
l46: # 
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 102
						// (test)
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l7,0
						//static deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/mouse.c, line 102
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l41
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 102
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l6,0
						//static deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../DeMiSTify/firmware/mouse.c, line 102
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 102
						// (test)
						// (obj to tmp) flags 4a type 103
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/mouse.c, line 102
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l41
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 105
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	7
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l11,0
						//static deref
						//sizemod based on type 0x3
	ldt
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l11,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/mouse.c, line 106
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 7
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 2
						// static
	.liabs	l7,0
						// static pe not varadr
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
						// freereg r1
						// freereg r2
l41: # 
						// allocreg r2

						//../DeMiSTify/firmware/mouse.c, line 108
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 152
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l7,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 108
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l7,4
						// static pe not varadr
						//sizemod based on type 0x3
	stmpdec	r1

						//../DeMiSTify/firmware/mouse.c, line 108
						// (bitwise/arithmetic) 	//ops: 0, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l2,0
						// static pe is varadr
	add	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/mouse.c, line 108
						// Z disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)store type 1
	stbinc	r2
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/mouse.c, line 109
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 42
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l11,0
						//static deref
						//sizemod based on type 0x3
	ldt
	sgn
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/mouse.c, line 109
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l44
		add	r7
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 112
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 112
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 112
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 64, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 112
						//call
						//pcreltotemp
	.lipcrel	_spi_uio_cmd8_cont // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/mouse.c, line 113
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 3
	st	r5
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 114
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l2,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 3
	st	r5
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 115
		// Offsets 32, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 2
						// deref
						// const to r0
						// matchobj comparing flags 1 with 2
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

						//../DeMiSTify/firmware/mouse.c, line 116
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 7
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 1
						// static
	.liabs	l7,0
						// static pe not varadr
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
l44: # 
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 118
		// Offsets 500, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	500
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 118
						//call
						//pcreltotemp
	.lipcrel	_GetTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 118
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/mouse.c, line 118
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l6,4
						// static pe not varadr
						//sizemod based on type 0x3
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/mouse.c, line 100
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_mousebuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/mouse.c, line 100
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_read // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/mouse.c, line 100
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r3

						//../DeMiSTify/firmware/mouse.c, line 100
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
	sgn
	cmp	r3

						//../DeMiSTify/firmware/mouse.c, line 100
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l46
		add	r7
l48: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.data.1
	.align	4
l7:
	.int	0
	.section	.data.2
	.align	4
l8:
	.int	0
	.section	.data.3
	.align	4
l9:
	.int	0
	.section	.data.4
	.align	4
l10:
	.int	0
	.section	.data.5
	.align	4
l11:
	.int	4
	.section	.bss.6
	.align	4
	.lcomm	l6,4
	.section	.data.7
	.align	4
l1:
	.byte	1
	.byte	255
	.byte	130
	.byte	8
	.byte	243
	.byte	200
	.byte	243
	.byte	100
	.byte	243
	.byte	80
	.byte	242
	.byte	1
	.byte	129
	.byte	1
	.byte	244
	.byte	0
	.section	.bss.8
	.align	4
	.lcomm	l2,4
