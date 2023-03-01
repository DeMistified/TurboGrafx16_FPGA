	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_bin2bcd
_bin2bcd:
	stdec	r6
	mt	r3
	stdec	r6
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
						// (obj to tmp) flags 40 type 101
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 83
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 83
						//Call division routine
	//mt
	stdec	r6
						// (obj to tmp) flags 4a type 3
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	10
	mr	r2
	.lipcrel	_div_s32bys32
	add	r7
	mt	r0
	mr	r1
	ldinc	r6
	mr	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 83
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	16
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 83
						//Call division routine
	mt	r1
	stdec	r6
						// (obj to tmp) flags 4a type 3
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	10
	mr	r2
	.lipcrel	_div_s32bys32
	add	r7
	mt	r1
	mr	r2
	ldinc	r6
	mr	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 83
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/pcecd.c, line 83
						//FIXME convert
						// (convert - reducing type 3 to 101
						// matchobj comparing flags 1 with 4a
	.liconst	255
	and	r1

						//../DeMiSTify/firmware/pcecd.c, line 83
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 101
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// freereg r1
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_bcd2bin
_bcd2bin:
	stdec	r6
	mt	r3
	stdec	r6
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
						// (obj to tmp) flags 40 type 101
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 87
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 87
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 4a type 3
						// matchobj comparing flags 4a with 42
						// reg r2 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	4
	sgn
	shr	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 87
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 87
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	15
	and	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 87
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/pcecd.c, line 87
						//FIXME convert
						// (convert - reducing type 3 to 101
						// matchobj comparing flags 1 with 4a
	.liconst	255
	and	r1

						//../DeMiSTify/firmware/pcecd.c, line 87
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 101
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// freereg r1
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
	.global	_gettrackbybcd
_gettrackbybcd:
	stdec	r6
	mt	r3
	stdec	r6
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
						// (obj to tmp) flags 40 type 101
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r3
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 92
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// matchobj comparing flags 42 with 40
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 92
						//call
						//pcreltotemp
	.lipcrel	_bcd2bin // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 92
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/pcecd.c, line 92
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 93
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// reg r3 - only match against tmp
	//mt
				// flags 42
	and	r3

						//../DeMiSTify/firmware/pcecd.c, line 93
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l8
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 94
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 1
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
						// (save temp)isreg
	mr	r3
						//save_temp done
l8: # 

						//../DeMiSTify/firmware/pcecd.c, line 95
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_toc, 4
						//extern deref
						//sizemod based on type 0x3
	ldt
	sgn
	cmp	r3

						//../DeMiSTify/firmware/pcecd.c, line 95
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l10
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 96
		// Offsets 4, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 1
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
l10: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 97
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 26
		// Real offset of type is 26, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 97
						//call
						//pcreltotemp
	.lipcrel	_cue_parse // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 98
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// freereg r2
						// freereg r3
	ldinc	r6
	mr	r3

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
l13:
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 140
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 42, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l11,4
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1

						//../DeMiSTify/firmware/pcecd.c, line 141
		// Offsets 0, 1
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 1, 11
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l11,1
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	4
	ldidx	r6
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 142
		// Offsets 0, 2
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 2, 11
		// Real offset of type is 2, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	8
	ldidx	r6
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 143
		// Offsets 0, 3
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 3, 11
		// Real offset of type is 3, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	12
	ldidx	r6
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.4
l16:
	stdec	r6
	mt	r3
	stdec	r6
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
						// (obj to tmp) flags 40 type 102
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 148
		// Offsets 517, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 40
						// deref
						// const to r0
						// matchobj comparing flags 1 with 40
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	517
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 149
		// Offsets 97, -44
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
	.liconst	97
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 150
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 102
						// matchobj comparing flags 42 with 1
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 150
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						// (obj to r2) flags 4a type 3
						// matchobj comparing flags 4a with 42
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	//mt
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	8
	sgn
	shr	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 150
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/pcecd.c, line 150
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 150
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 151
		// Offsets 4, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 4a
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
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
						// freereg r3
	ldinc	r6
	mr	r3

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
	.section	.text.5
l19:
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 156
						// Q1 disposable
		// Offsets 0, 58
		// Have am? yes, no
		// flags 42, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l12,62
						// static pe not varadr
						//sizemod based on type 0x102
	hlf
	stmpdec	r1

						//../DeMiSTify/firmware/pcecd.c, line 157
		// Offsets 1, 12
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 12, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l12,12
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
	.section	.text.6
l22:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
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
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 161
		// Offsets 517, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 40
						// deref
						// const to r0
						// matchobj comparing flags 1 with 40
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	517
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 162
		// Offsets 100, -44
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
	.liconst	100
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 163
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 102
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	12
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 163
						// (bitwise/arithmetic) 	//ops: 2, 0, 3
						// (obj to r2) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	//mt
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 163
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 164
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 102
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	12
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	8
	shr	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 164
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r2
						// (save result) // isreg
						// allocreg r3

						//../DeMiSTify/firmware/pcecd.c, line 164
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	16
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 164
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	7
	shl	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 164
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
	or	r2
						// (save result) // isreg
						// freereg r3

						//../DeMiSTify/firmware/pcecd.c, line 164
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 503
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 4a
						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/pcecd.c, line 165
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 165
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 50
		// Real offset of type is 54, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 165
						//call
						//pcreltotemp
	.lipcrel	_spi_write // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 166
		// Offsets 4, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -44, isauto 0
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
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r4
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	-4
	sub	r6
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
l25:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
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
						// allocreg r5
						// allocreg r4
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 102 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	16
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 171
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 102
						// const
						// matchobj comparing flags 1 with 102
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 173
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//../DeMiSTify/firmware/pcecd.c, line 173
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7
l33: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 175
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 301
						// deref 
	ldbinc	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 175
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	8
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 176
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 176
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r2 - only match against tmp
	//mt
	or	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/pcecd.c, line 176
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 177
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 177
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r2 - only match against tmp
	//mt
	or	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/pcecd.c, line 177
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 178
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 301
						// matchobj comparing flags 6a with 1
						// deref 
	ldbinc	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 178
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r2 - only match against tmp
	//mt
	or	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/pcecd.c, line 179
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 6, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	xor	r5
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 180
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	4
	sub	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 181
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	sgn
	cmp	r4

						//../DeMiSTify/firmware/pcecd.c, line 181
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l32
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 182
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)isreg
	mr	r4
						//save_temp done
l32: # 

						//../DeMiSTify/firmware/pcecd.c, line 173
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
				// flags 42
	and	r4

						//../DeMiSTify/firmware/pcecd.c, line 173
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l33
		add	r7
l34: # 

						//../DeMiSTify/firmware/pcecd.c, line 184
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
	mr	r0
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

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.8
l35:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
		// Offsets 2048, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	2048
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 192
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_toc, 24
						//extern deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/pcecd.c, line 192
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l39
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 192
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,24
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	sgn
	cmp	r0

						//../DeMiSTify/firmware/pcecd.c, line 192
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l39
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 196
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_toc, 28
						//extern deref
						//sizemod based on type 0x3
	ldt
	cmp	r3

						//../DeMiSTify/firmware/pcecd.c, line 196
	cond	EQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l42
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 197
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 52
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 197
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 197
		// Offsets 36, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 36)
	.liabs	_toc, 36
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 197
						//call
						//pcreltotemp
	.lipcrel	_FileSeek // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l42: # 

						//../DeMiSTify/firmware/pcecd.c, line 201
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 240 type 3
						// reg r3 - only match against tmp
	mt	r3
	stdec	r6

						//../DeMiSTify/firmware/pcecd.c, line 201
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 240
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 240
						// extern (offset 0)
	.liabs	_cd_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 201
		// Offsets 36, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 36 with 0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 36 with 0
						// extern (offset 36)
	.liabs	_toc, 36
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 201
						//call
						//pcreltotemp
	.lipcrel	_FileRead // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 203
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_toc, 28
						//extern deref
						//sizemod based on type 0x3
	ldt
	cmp	r3

						//../DeMiSTify/firmware/pcecd.c, line 203
	cond	EQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l44
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 204
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r1
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2064
	sub	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 204
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size

						//../DeMiSTify/firmware/pcecd.c, line 204
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_toc, 52
						//extern deref
						//sizemod based on type 0x103
	ldt
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 204
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 204
		// Offsets 36, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 36)
	.liabs	_toc, 36
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 204
						//call
						//pcreltotemp
	.lipcrel	_FileSeek // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l44: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 209
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	8
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 209
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 209
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 4a
						// reg r3 - only match against tmp
	mt	r3
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 209
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 240
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 240
						// extern (offset 0)
	.liabs	_cd_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 209
						//call
						//pcreltotemp
	.lipcrel	l22 // Static 
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 211
						//pcreltotemp
	.lipcrel	l45
	add	r7
l39: # 

						//../DeMiSTify/firmware/pcecd.c, line 212
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	2352
	stdec	r6

						//../DeMiSTify/firmware/pcecd.c, line 212
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_cd_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 212
		// Offsets 36, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						//extern: comparing 36 with 0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						//extern: comparing 36 with 0
						// extern (offset 36)
	.liabs	_toc, 36
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 212
						//call
						//pcreltotemp
	.lipcrel	_FileRead // extern
	add	r7
						// Deferred popping of 8 bytes (8 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 213
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	16
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 213
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 213
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	2352
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 213
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_cd_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 213
						//call
						//pcreltotemp
	.lipcrel	l22 // Static 
	add	r7
						// Flow control - popping 8 + 8 bytes
	.liconst	16
	add	r6
						// freereg r1
l45: # 
						// allocreg r1
						// freereg r1
						// freereg r3
	ldinc	r6
	mr	r3

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
	.section	.text.9
l46:
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 219
						// (test)
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_toc, 44
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/pcecd.c, line 219
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l50
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 220
		// Offsets 1, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 12
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l12,4
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 221
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	stdec	r6

						//../DeMiSTify/firmware/pcecd.c, line 221
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6

						//../DeMiSTify/firmware/pcecd.c, line 221
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	11
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 221
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 221
						//call
						//pcreltotemp
	.lipcrel	l13 // Static 
	add	r7
						// Flow control - popping 12 + 0 bytes
						// matchobj comparing flags 1 with 82
	.liconst	12
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 222
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 222
						//call
						//pcreltotemp
	.lipcrel	l16 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 223
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/pcecd.c, line 224
						//pcreltotemp
	.lipcrel	l47
	add	r7
l50: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 225
						//setreturn
						// (obj to r0) flags 1 type 101
						// const
	.liconst	1
	mr	r0
l47: # 
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
	.section	.text.a
l52:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
		// Offsets 2352, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	2352
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 233
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,0
						//static deref
						//sizemod based on type 0x103
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	cmp	r0

						//../DeMiSTify/firmware/pcecd.c, line 233
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l56
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 234
						//FIXME convert
						// (convert - reducing type 104 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l51,0
						//static deref
						//sizemod based on type 0x104
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../DeMiSTify/firmware/pcecd.c, line 234
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 234
						// (test)
						// (obj to tmp) flags 4a type 103
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 234
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l97
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 235
		// Offsets 13, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	13
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 235
						//call
						//pcreltotemp
	.lipcrel	_GetTimer // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 235
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/pcecd.c, line 235
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l51,4
						// static pe not varadr
						//sizemod based on type 0x104
	stmpdec	r1
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 236
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,0
						//static deref
						//sizemod based on type 0x103
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l12,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/pcecd.c, line 238
						//pcreltotemp
	.lipcrel	l97
	add	r7
l56: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 240
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,4
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 240
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	cmp	r2

						//../DeMiSTify/firmware/pcecd.c, line 240
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l60
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 242
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,20
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 4
						//extern deref
						//sizemod based on type 0x3
	ldt
	sgn
	cmp	r0

						//../DeMiSTify/firmware/pcecd.c, line 242
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l62
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 243
		// Offsets 0, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 12
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l12,4
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 245
						//pcreltotemp
	.lipcrel	l97
	add	r7
l62: # 

						//../DeMiSTify/firmware/pcecd.c, line 248
						// (test)
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,17
						//static deref
						//sizemod based on type 0x101
	byt
	ldt

						//../DeMiSTify/firmware/pcecd.c, line 248
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l97
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 252
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 44
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/pcecd.c, line 252
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l66
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 253
		// Offsets 1, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 12
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l12,4
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 254
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	stdec	r6

						//../DeMiSTify/firmware/pcecd.c, line 254
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6

						//../DeMiSTify/firmware/pcecd.c, line 254
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	11
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 254
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 254
						//call
						//pcreltotemp
	.lipcrel	l13 // Static 
	add	r7
						// Flow control - popping 12 + 0 bytes
						// matchobj comparing flags 1 with 82
	.liconst	12
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 255
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 255
						//call
						//pcreltotemp
	.lipcrel	l19 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 257
						//pcreltotemp
	.lipcrel	l97
	add	r7
l66: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 264
		// Offsets 0, 17
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 17, 12
		// Real offset of type is 17, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l12,17
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 266
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_toc, 24
						//extern deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/pcecd.c, line 266
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l68
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 268
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	1
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 268
		// Offsets 2048, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	2048
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 268
						//call
						//pcreltotemp
	.lipcrel	l35 // Static 
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 82
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 269
						//pcreltotemp
	.lipcrel	l71
	add	r7
l68: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 270
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,24
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 16
						//extern deref
						//sizemod based on type 0x3
	ldt
	sgn
	cmp	r0

						//../DeMiSTify/firmware/pcecd.c, line 270
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l71
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 271
		// Offsets 0, 5
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 5, 12
		// Real offset of type is 5, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l12,5
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
l71: # 

						//../DeMiSTify/firmware/pcecd.c, line 275
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,28
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
	.liabs	l12,32
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/pcecd.c, line 277
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//../DeMiSTify/firmware/pcecd.c, line 277
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l73
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 278
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 278
						//call
						//pcreltotemp
	.lipcrel	l19 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 279
		// Offsets 0, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 12
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l12,4
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
l73: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 282
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,24
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
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l12,28
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/pcecd.c, line 283
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_toc, 20
						//extern deref
						//sizemod based on type 0x3
	ldt
	sgn
	cmp	r0

						//../DeMiSTify/firmware/pcecd.c, line 283
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l97
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 284
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,20
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
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l12,24
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 285
		// Offsets 20, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 285
						//call
						//pcreltotemp
	.lipcrel	_cue_parse // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 286
		// Offsets 1, 5
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 5, 12
		// Real offset of type is 5, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l12,5
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 287
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_toc, 12
						//extern deref
						//sizemod based on type 0x3
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../DeMiSTify/firmware/pcecd.c, line 287
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 287
		// Offsets 36, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// matchobj comparing flags 82 with 82
						// extern (offset 36)
	.liabs	_toc, 36
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 287
						//call
						//pcreltotemp
	.lipcrel	_FileSeek // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 82
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 289
						//pcreltotemp
	.lipcrel	l97
	add	r7
l60: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 289
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	3
	cmp	r2

						//../DeMiSTify/firmware/pcecd.c, line 289
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l97
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 291
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_toc, 44
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/pcecd.c, line 291
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l80
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 292
		// Offsets 1, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 12
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l12,4
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 293
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
	stdec	r6

						//../DeMiSTify/firmware/pcecd.c, line 293
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6

						//../DeMiSTify/firmware/pcecd.c, line 293
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	11
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 293
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 80, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 293
						//call
						//pcreltotemp
	.lipcrel	l13 // Static 
	add	r7
						// Flow control - popping 12 + 0 bytes
						// matchobj comparing flags 1 with 82
	.liconst	12
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 294
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 76
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 294
						//call
						//pcreltotemp
	.lipcrel	l19 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 296
						//pcreltotemp
	.lipcrel	l97
	add	r7
l80: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 298
		// Offsets 24, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 68, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,24
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 298
						//call
						//pcreltotemp
	.lipcrel	_cue_gettrackbylba // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 298
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l12,24
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/pcecd.c, line 301
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,18
						//static deref
						//sizemod based on type 0x101
	byt
	ldt

						//../DeMiSTify/firmware/pcecd.c, line 301
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l99
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 303
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 76
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 303
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,52
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	sgn
	cmp	r0

						//../DeMiSTify/firmware/pcecd.c, line 303
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l99
		add	r7
l98: # 

						//../DeMiSTify/firmware/pcecd.c, line 304
						// (test)
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_toc, 24
						//extern deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/pcecd.c, line 304
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l88
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 305
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,24
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 16
						//extern deref
						//sizemod based on type 0x3
	ldt
	sub	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 305
						// (bitwise/arithmetic) 	//ops: 2, 5, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 2
						// reg r4 - only match against tmp
	mt	r4
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 305
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_toc, 12
						//extern deref
						//sizemod based on type 0x3
	ldt
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 305
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size

						//../DeMiSTify/firmware/pcecd.c, line 305
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 305
		// Offsets 36, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 104, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 36)
	.liabs	_toc, 36
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 305
						//call
						//pcreltotemp
	.lipcrel	_FileSeek // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 307
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 307
		// Offsets 0, 0
		// Have am? no, no
		// flags 240, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 108
		// Real offset of type is 116, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 240 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 307
						//call
						//pcreltotemp
	.lipcrel	l35 // Static 
	add	r7
						// Flow control - popping 4 + 4 bytes
	.liconst	8
	add	r6
						// freereg r1
l88: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 309
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,24
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
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l12,28
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/pcecd.c, line 303
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 303
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,52
						//static deref
						//sizemod based on type 0x3
	ldt
	sgn
	cmp	r3

						//../DeMiSTify/firmware/pcecd.c, line 303
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l98
		add	r7
l99: # 

						//../DeMiSTify/firmware/pcecd.c, line 313
		// Offsets 0, 52
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 52, 12
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l12,52
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

						//../DeMiSTify/firmware/pcecd.c, line 315
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,24
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,48
						//static deref
						//sizemod based on type 0x3
	ldt
	sgn
	cmp	r0

						//../DeMiSTify/firmware/pcecd.c, line 315
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l89
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 315
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 24
						//extern deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/pcecd.c, line 315
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l89
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 315
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,20
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 4
						//extern deref
						//sizemod based on type 0x3
	ldt
	sgn
	cmp	r0

						//../DeMiSTify/firmware/pcecd.c, line 315
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l97
		add	r7
						// freereg r1
l89: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 317
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,56
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 317
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 317
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l94
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 318
		// Offsets 44, 24
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 12
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l12,24
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,44
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 319
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 12
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	2
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 321
						//pcreltotemp
	.lipcrel	l95
	add	r7
l94: # 

						//../DeMiSTify/firmware/pcecd.c, line 322
		// Offsets 0, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 12
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l12,4
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
l95: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 325
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,56
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 325
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 325
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l97
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 326
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 326
						//call
						//pcreltotemp
	.lipcrel	l19 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l97: # 
						// allocreg r1
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
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.b
l100:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-60
	add	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3

						//../DeMiSTify/firmware/pcecd.c, line 340
						// (address)
						// (prepobj tmp)
 						// reg r6 - no need to prep
	mt	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 340
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 75
		// Real offset of type is 75, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 340
		// Offsets 32, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 79
		// Real offset of type is 79, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 340
						//call
						//pcreltotemp
	.lipcrel	___memset // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r3
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 344
		// Offsets 517, -48
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
	.liconst	517
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 345
		// Offsets 98, -44
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
	.liconst	98
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 347
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 92, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done
		// Offsets -44, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1

						// required value found in r0
	mt	r0
				//return 0
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
						// allocreg r2
l103: # 

						//../DeMiSTify/firmware/pcecd.c, line 348
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// const
	.liconst	0
						// (save temp)store type 3
	st	r4
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 348
						// (address)
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	addt	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 348
						// (bitwise/arithmetic) 	//ops: 2, 6, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 348
						// Z disposable
						//FIXME convert
						// (convert - reducing type 503 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 503
						// matchobj comparing flags 260 with 42
						// deref 
	ld	r4
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 348
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	1
	add	r5
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 348
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	12
	sgn
	cmp	r5

						//../DeMiSTify/firmware/pcecd.c, line 348
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l103
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 349
		// Offsets 4, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
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

						//../DeMiSTify/firmware/pcecd.c, line 354
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 1
						// reg r4 - only match against tmp
	//mt
				// flags 4a
	and	r4
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l108
		add	r7
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 1
	.liconst	3
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l111
		add	r7
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	5
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l120
		add	r7
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	13
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l130
		add	r7
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	195
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l134
		add	r7
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l145
		add	r7
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l163
		add	r7
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	3
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l166
		add	r7
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l112
		add	r7
						//pcreltotemp
	.lipcrel	l175
	add	r7
						// freereg r1
l108: # 

						//../DeMiSTify/firmware/pcecd.c, line 356
						//call
						//pcreltotemp
	.lipcrel	l46 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 356
						// (test)
						// (obj to tmp) flags 4a type 101
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 356
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l107
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 357
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 116
		// Real offset of type is 116, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 357
						//call
						//pcreltotemp
	.lipcrel	l16 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 360
						//pcreltotemp
	.lipcrel	l107
	add	r7
l111: # 

						//../DeMiSTify/firmware/pcecd.c, line 363
		// Offsets 18, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	18
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 364
		// Offsets 128, 1
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 1, 0
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	1
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	128
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 366
		// Offsets 112, 2
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 2, 0
		// Real offset of type is 2, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	112
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 367
		// Offsets 0, 4
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 0
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 0, 4 with 0, 3
						//Fuzzy match found, offset: 1 (varadr: 1)
	.liconst	1
	add	r0

						// required value found in r0
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l11,0
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 368
		// Offsets 10, 9
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 9, 0
		// Real offset of type is 9, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 0, 9 with 0, 5
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	10
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 369
		// Offsets 1, 14
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 14, 0
		// Real offset of type is 14, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 0, 14 with 0, 10
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l11,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 370
		// Offsets 2, 15
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 15, 0
		// Real offset of type is 15, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l11,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 371
		// Offsets 3, 16
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 16, 0
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l11,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 373
		// Offsets 0, 3
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 3, 11
		// Real offset of type is 3, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l11,3
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 373
		// Offsets 3, 2
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 2, 11
		// Real offset of type is 2, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l11,2
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l11,3
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 373
		// Offsets 2, 1
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 1, 11
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l11,1
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l11,2
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 373
		// Offsets 1, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 11
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l11,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l11,1
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 375
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	1
	stdec	r6

						//../DeMiSTify/firmware/pcecd.c, line 375
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	18
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 375
						// (address)
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	10
	addt	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 375
						//call
						//pcreltotemp
	.lipcrel	l22 // Static 
	add	r7
						// Flow control - popping 8 + 0 bytes
						// matchobj comparing flags 1 with 82
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 379
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 128
		// Real offset of type is 128, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 379
						//call
						//pcreltotemp
	.lipcrel	l16 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 380
						//pcreltotemp
	.lipcrel	l107
	add	r7
l112: # 

						//../DeMiSTify/firmware/pcecd.c, line 383
						//call
						//pcreltotemp
	.lipcrel	l46 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 383
						// (test)
						// (obj to tmp) flags 4a type 101
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 383
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l107
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 386
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	33
						//sizemod based on type 0x101
	byt
	ldidx	r6
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (test)
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l116
		add	r7
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with a

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (test)
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l118
		add	r7
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with a

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (test)
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l119
		add	r7
						// freereg r1
l116: # 

						//../DeMiSTify/firmware/pcecd.c, line 389
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	2
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 390
		// Offsets 128, 1
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 1, 0
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	1
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	128
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 391
		// Offsets 1, 2
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 2, 0
		// Real offset of type is 2, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 392
		// Offsets 4, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 148
		// Real offset of type is 148, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_toc, 4
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 392
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 392
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	3
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!

						//../DeMiSTify/firmware/pcecd.c, line 393
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	44
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	2
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 394
						//pcreltotemp
	.lipcrel	l115
	add	r7
						// freereg r2
l118: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 397
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// extern
	.liabs	_toc
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	150
	add	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 398
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stdec	r6
						// freereg r2

						//../DeMiSTify/firmware/pcecd.c, line 398
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 168
		// Real offset of type is 172, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 398
						//call
						//pcreltotemp
	.lipcrel	_LBA2MSF // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 400
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 401
		// Offsets 128, 1
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 1, 0
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	1
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	128
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 402
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	48
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 402
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 402
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	2
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 403
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	49
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 403
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 403
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	3
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 404
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	50
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 404
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 404
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	4
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!

						//../DeMiSTify/firmware/pcecd.c, line 405
		// Offsets 0, 5
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 5, 0
		// Real offset of type is 5, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	5
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 406
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 44, 0 with 0, 6
						//Fuzzy match found, offset: 38 (varadr: 1)
	.liconst	38
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 407
						//pcreltotemp
	.lipcrel	l115
	add	r7
l119: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 410
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	34
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 410
						//call
						//pcreltotemp
	.lipcrel	_gettrackbybcd // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 411
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// extern
	.liabs	_toc, 16
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	150
	add	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 414
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stdec	r6
						// freereg r2

						//../DeMiSTify/firmware/pcecd.c, line 414
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 248
		// Real offset of type is 252, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 414
						//call
						//pcreltotemp
	.lipcrel	_LBA2MSF // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 416
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 417
		// Offsets 128, 1
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 1, 0
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	1
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	128
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 418
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	48
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 418
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 418
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	2
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 419
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	49
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 419
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 419
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	3
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 420
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	50
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 420
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 420
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	4
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 421
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// extern
	.liabs	_toc, 24
						//extern deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	shl	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 421
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	9
	addt	r6
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 422
		// Offsets 4, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 44, 0 with 0, 5
						// Fuzzy match found against tmp.
	mr	r0
	.liconst	39
	add	r0

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done
l115: # 
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 426
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	stdec	r6

						//../DeMiSTify/firmware/pcecd.c, line 426
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
						//sizemod based on type 0x3
	ldidx	r6
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 426
						// (address)
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	10
	addt	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 426
						//call
						//pcreltotemp
	.lipcrel	l22 // Static 
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 430
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 160
		// Real offset of type is 160, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 430
						//call
						//pcreltotemp
	.lipcrel	l16 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 432
						//pcreltotemp
	.lipcrel	l107
	add	r7
l120: # 

						//../DeMiSTify/firmware/pcecd.c, line 435
						//call
						//pcreltotemp
	.lipcrel	l46 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 435
						// (test)
						// (obj to tmp) flags 4a type 101
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 435
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l107
		add	r7
						// freereg r2
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 437
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	33
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 437
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 437
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	34
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 437
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 437
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 437
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	35
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 437
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	or	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/pcecd.c, line 437
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	2097151
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 438
						// (test)
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	36
						//sizemod based on type 0x101
	byt
	ldidx	r6

						//../DeMiSTify/firmware/pcecd.c, line 438
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l124
		add	r7
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 438
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r0
				//return 0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	56
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/pcecd.c, line 438
						//pcreltotemp
	.lipcrel	l125
	add	r7
l124: # 

						//../DeMiSTify/firmware/pcecd.c, line 438
		// Offsets 256, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	52
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	256
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l125: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 440
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 180
		// Real offset of type is 180, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 440
						//call
						//pcreltotemp
	.lipcrel	_cue_gettrackbylba // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 440
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l12,24
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/pcecd.c, line 456
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 12
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 2
						// static
	.liabs	l12,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 460
		// Offsets 0, 24
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 12
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,24
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 461
		// Offsets 0, 28
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 28, 12
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	52
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 463
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_toc, 16
						//extern deref
						//sizemod based on type 0x3
	ldt
	sub	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 463
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_toc, 28
						//extern deref
						//sizemod based on type 0x3
	ldt
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 463
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_toc, 12
						//extern deref
						//sizemod based on type 0x3
	ldt
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 464
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size

						//../DeMiSTify/firmware/pcecd.c, line 464
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 464
		// Offsets 36, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 212
		// Real offset of type is 216, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// matchobj comparing flags 82 with 82
						// extern (offset 36)
	.liabs	_toc, 36
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 464
						//call
						//pcreltotemp
	.lipcrel	_FileSeek // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 82
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 468
		// Offsets 0, 40
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 40, 12
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l12,40
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

						//../DeMiSTify/firmware/pcecd.c, line 470
		// Offsets 1, 17
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 17, 12
		// Real offset of type is 17, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,17
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 471
		// Offsets 2, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 12
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,4
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	2
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 475
						//pcreltotemp
	.lipcrel	l107
	add	r7
l130: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 480
						// (test)
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	36
						//sizemod based on type 0x101
	byt
	ldidx	r6

						//../DeMiSTify/firmware/pcecd.c, line 480
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l132
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 481
		// Offsets 1, 16
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 16, 12
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l12,16
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 483
						//pcreltotemp
	.lipcrel	l107
	add	r7
						// freereg r1
l132: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 484
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 136
		// Real offset of type is 136, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 484
						//call
						//pcreltotemp
	.lipcrel	l16 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 487
						//pcreltotemp
	.lipcrel	l107
	add	r7
l134: # 

						//../DeMiSTify/firmware/pcecd.c, line 490
						//call
						//pcreltotemp
	.lipcrel	l46 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 490
						// (test)
						// (obj to tmp) flags 4a type 101
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 490
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l107
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 493
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	41
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 493
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	192
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
						// (test)
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l138
		add	r7
						// allocreg r1
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with a

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	64
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (test)
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l140
		add	r7
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with a

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	64
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (test)
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l141
		add	r7
						// freereg r1
						// freereg r2
l138: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 496
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	35
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 496
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 496
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 496
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 496
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 496
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	37
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 496
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 2
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
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 497
						//pcreltotemp
	.lipcrel	l137
	add	r7
l140: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 500
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	36
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 500
						//call
						//pcreltotemp
	.lipcrel	_bcd2bin // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 500
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/pcecd.c, line 500
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 500
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	39
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 500
						//call
						//pcreltotemp
	.lipcrel	_bcd2bin // extern
	add	r7
						// Nested call - popping 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 500
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/pcecd.c, line 500
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 500
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	42
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 500
						//call
						//pcreltotemp
	.lipcrel	_bcd2bin // extern
	add	r7
						// Nested call - popping 0 bytes
						// freereg r1
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 500
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r2
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 500
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/pcecd.c, line 500
						//call
						//pcreltotemp
	.lipcrel	_MSF2LBA // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 500
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/pcecd.c, line 501
						//pcreltotemp
	.lipcrel	l137
	add	r7
l141: # 
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 505
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	34
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 505
						//call
						//pcreltotemp
	.lipcrel	_gettrackbybcd // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 506
		// Offsets 16, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	44
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_toc, 16
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done
l137: # 

						//../DeMiSTify/firmware/pcecd.c, line 517
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 12
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l12,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 522
		// Offsets 0, 24
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 12
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,24
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 523
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 152
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 523
						//call
						//pcreltotemp
	.lipcrel	_cue_gettrackbylba // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 523
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l12,24
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/pcecd.c, line 528
		// Offsets 0, 44
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 44, 12
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 2
						// static
	.liabs	l12,44
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	stinc	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 529
		// Offsets 0, 48
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 48, 12
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_toc
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 530
		// Offsets 1, 56
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 56, 12
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,56
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	33
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 531
		// Offsets 1, 52
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 52, 12
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,52
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

						//../DeMiSTify/firmware/pcecd.c, line 533
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,56
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 533
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	//mt
				// flags 4a
	and	r1
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 533
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l143
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 534
		// Offsets 4, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 12
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,4
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	4
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 535
						//pcreltotemp
	.lipcrel	l144
	add	r7
l143: # 

						//../DeMiSTify/firmware/pcecd.c, line 536
		// Offsets 3, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 12
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l12,4
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	3
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
l144: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 539
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 168
		// Real offset of type is 168, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 539
						//call
						//pcreltotemp
	.lipcrel	l19 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 542
						//pcreltotemp
	.lipcrel	l107
	add	r7
l145: # 

						//../DeMiSTify/firmware/pcecd.c, line 545
						//call
						//pcreltotemp
	.lipcrel	l46 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 545
						// (test)
						// (obj to tmp) flags 4a type 101
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 545
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l107
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 548
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	41
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 548
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	192
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1
						// (test)
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l149
		add	r7
						// allocreg r1
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with a

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	64
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (test)
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l151
		add	r7
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags a type 3
						// matchobj comparing flags a with a

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with a
	.liconst	64
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// (test)
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with a

						// required value found in r0
	mt	r0
				//return 0
				// flags a
	//mr
	and	r0
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l152
		add	r7
						// freereg r1
						// freereg r2
l149: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 551
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	35
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 551
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 551
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 551
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 551
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 551
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	37
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 551
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 2
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
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 552
						//pcreltotemp
	.lipcrel	l148
	add	r7
l151: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 555
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	36
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 555
						//call
						//pcreltotemp
	.lipcrel	_bcd2bin // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 555
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/pcecd.c, line 555
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 555
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	39
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 555
						//call
						//pcreltotemp
	.lipcrel	_bcd2bin // extern
	add	r7
						// Nested call - popping 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 555
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/pcecd.c, line 555
						// Q1 disposable
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 555
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	42
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 555
						//call
						//pcreltotemp
	.lipcrel	_bcd2bin // extern
	add	r7
						// Nested call - popping 0 bytes
						// freereg r1
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 555
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r2
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 555
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// reg r2 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../DeMiSTify/firmware/pcecd.c, line 555
						//call
						//pcreltotemp
	.lipcrel	_MSF2LBA // extern
	add	r7
						// Flow control - popping 8 + 0 bytes
	.liconst	8
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 555
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/pcecd.c, line 556
						//pcreltotemp
	.lipcrel	l148
	add	r7
l152: # 
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 560
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	34
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 560
						//call
						//pcreltotemp
	.lipcrel	_bcd2bin // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 560
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/pcecd.c, line 560
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 4a type 101
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 562
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//../DeMiSTify/firmware/pcecd.c, line 562
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l154
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 562
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	44
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
l154: # 

						//../DeMiSTify/firmware/pcecd.c, line 563
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 4
						//extern deref
						//sizemod based on type 0x3
	ldt
	sgn
	cmp	r0

						//../DeMiSTify/firmware/pcecd.c, line 563
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l156
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 563
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, a
						// (a/p assign)
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	52
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 8a
						// matchobj comparing flags 2 with 8a
						// extern
	.liabs	_toc
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 563
						//pcreltotemp
	.lipcrel	l157
	add	r7
l156: # 

						//../DeMiSTify/firmware/pcecd.c, line 563
		// Offsets 20, 0
		// Have am? no, no
		// flags 2, a
						// (a/p assign)
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	52
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 8a
						// matchobj comparing flags 2 with 8a
						// extern
	.liabs	_toc, 20
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done
l157: # 

						//../DeMiSTify/firmware/pcecd.c, line 563
		// Offsets 0, 0
		// Have am? no, no
		// flags a, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	44
	addt	r6
	mr	r0

						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	52
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l148: # 

						//../DeMiSTify/firmware/pcecd.c, line 568
		// Offsets 1, 56
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 56, 12
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l12,56
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	33
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 569
		// Offsets 0, 48
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 48, 12
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,48
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	44
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 571
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,56
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 571
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	//mt
				// flags 4a
	and	r1
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 571
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l159
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 572
		// Offsets 0, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 12
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,4
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 573
						//pcreltotemp
	.lipcrel	l160
	add	r7
l159: # 

						//../DeMiSTify/firmware/pcecd.c, line 574
		// Offsets 3, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 12
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l12,4
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	3
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
l160: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 579
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,56
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 579
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 579
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l107
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 580
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 156
		// Real offset of type is 156, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 580
						//call
						//pcreltotemp
	.lipcrel	l16 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 583
						//pcreltotemp
	.lipcrel	l107
	add	r7
l163: # 

						//../DeMiSTify/firmware/pcecd.c, line 586
						//call
						//pcreltotemp
	.lipcrel	l46 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 586
						// (test)
						// (obj to tmp) flags 4a type 101
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 586
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l107
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 588
		// Offsets 4, 4
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 4, 12
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// static
	.liabs	l12,4
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	4
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 590
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 140
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 590
						//call
						//pcreltotemp
	.lipcrel	l16 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 593
						//pcreltotemp
	.lipcrel	l107
	add	r7
l166: # 

						//../DeMiSTify/firmware/pcecd.c, line 596
						//call
						//pcreltotemp
	.lipcrel	l46 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 596
						// (test)
						// (obj to tmp) flags 4a type 101
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 596
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l107
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 598
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,24
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_toc, 16
						//extern deref
						//sizemod based on type 0x3
	ldt
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	48
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/pcecd.c, line 600
		// Offsets 10, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 2
	.liconst	10
						// (save temp)store type 1
	byt
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 601
		// Offsets 128, 1
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 1, 0
		// Real offset of type is 1, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	1
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	128
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 602
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,4
						//static deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	56
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/pcecd.c, line 602
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	4
	cmp	r0

						//../DeMiSTify/firmware/pcecd.c, line 602
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l170
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 602
		// Offsets 2, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	52
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	2
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 602
						//pcreltotemp
	.lipcrel	l171
	add	r7
l170: # 

						//../DeMiSTify/firmware/pcecd.c, line 602
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// var, auto|reg
	.liconst	52
						//sizemod based on type 0x3
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	cmp	r0

						//../DeMiSTify/firmware/pcecd.c, line 602
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l173
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 602
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	56
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 602
						//pcreltotemp
	.lipcrel	l174
	add	r7
l173: # 

						//../DeMiSTify/firmware/pcecd.c, line 602
		// Offsets 3, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	56
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	3
						// (save temp)store type 3
	st	r0
						//save_temp done
l174: # 

						//../DeMiSTify/firmware/pcecd.c, line 602
		// Offsets 0, 0
		// Have am? no, no
		// flags a, a
						// (a/p assign)
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	52
	addt	r6
	mr	r0

						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 8a
						// matchobj comparing flags a with 8a
						// var, auto|reg
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	56
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
						// freereg r3
l171: # 

						//../DeMiSTify/firmware/pcecd.c, line 602
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	2
	addt	r6
	mr	r0

						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 82
						// matchobj comparing flags a with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	52
						//sizemod based on type 0x3
	ldidx	r6
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 603
		// Offsets 0, 3
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 3, 0
		// Real offset of type is 3, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with a
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with a
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 604
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,20
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	1
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 604
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 604
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	4
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 605
		// Offsets 20, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 196
		// Real offset of type is 196, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,20
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 605
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 605
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	5
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!
						// allocreg r3

						//../DeMiSTify/firmware/pcecd.c, line 607
						// (address)
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	48
	addt	r6
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 607
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r3 - only match against tmp
	//mt
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 607
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 212
		// Real offset of type is 216, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	48
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 607
						//call
						//pcreltotemp
	.lipcrel	_LBA2MSF // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 608
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	52
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 608
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 608
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	10
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 609
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	53
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 609
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 609
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	11
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 610
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	54
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 610
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 610
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	12
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!

						//../DeMiSTify/firmware/pcecd.c, line 612
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type a
						// reg r3 - only match against tmp
	mt	r3
	stdec	r6
						// freereg r3
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 612
		// Offsets 24, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 272
		// Real offset of type is 280, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 4a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,24
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 612
						//call
						//pcreltotemp
	.lipcrel	_LBA2MSF // extern
	add	r7
						// Deferred popping of 4 bytes (8 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 613
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	56
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 613
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Deferred popping of 0 bytes (8 in total)
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 613
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	17
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 614
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	57
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 614
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Deferred popping of 0 bytes (8 in total)
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 614
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	18
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 615
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// var, auto|reg
	.liconst	58
						//sizemod based on type 0x101
	byt
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 615
						//call
						//pcreltotemp
	.lipcrel	_bin2bcd // extern
	add	r7
						// Deferred popping of 0 bytes (8 in total)
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 615
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x101, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
	.liconst	19
	addt	r6
	exg	r0
	stbinc	r0	//WARNING - pointer / reg not restored, might cause trouble!

						//../DeMiSTify/firmware/pcecd.c, line 617
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	stdec	r6

						//../DeMiSTify/firmware/pcecd.c, line 617
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 617
						// (address)
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	18
	addt	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 617
						//call
						//pcreltotemp
	.lipcrel	l22 // Static 
	add	r7
						// Flow control - popping 8 + 8 bytes
	.liconst	16
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 621
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 340
		// Real offset of type is 340, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 621
						//call
						//pcreltotemp
	.lipcrel	l16 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 623
						//pcreltotemp
	.lipcrel	l107
	add	r7
l175: # 
						// allocreg r3

						//../DeMiSTify/firmware/pcecd.c, line 626
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	stdec	r6

						//../DeMiSTify/firmware/pcecd.c, line 626
						// (a/p push)
						// a: pushed 4, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	stdec	r6

						//../DeMiSTify/firmware/pcecd.c, line 626
						// (a/p push)
						// a: pushed 8, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	32
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 626
		// Offsets 5, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 148
		// Real offset of type is 160, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 626
						//call
						//pcreltotemp
	.lipcrel	l13 // Static 
	add	r7
						// Flow control - popping 12 + 0 bytes
	.liconst	12
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 630
		// Offsets 0, 12
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 12, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l12,12
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
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 631
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 156
		// Real offset of type is 156, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 631
						//call
						//pcreltotemp
	.lipcrel	l16 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l107: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-60
	sub	r6
	ldinc	r6
	mr	r5

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
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.c
	.global	_pcecd_data
_pcecd_data:
	stdec	r6
	mt	r3
	stdec	r6
	.liconst	-12
	add	r6
						// allocreg r3
		// Offsets -44, 0
		// Have am? no, no
		// flags 1, 40
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	-44
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/pcecd.c, line 639
		// Offsets 517, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	517
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 640
		// Offsets 99, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	99
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 642
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
l184: # 

						//../DeMiSTify/firmware/pcecd.c, line 643
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 260
						// (a/p assign)
						// Destination is a register...
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// const
	.liconst	0
						// (save temp)store type 3
	st	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 643
						// (address)
						// (prepobj tmp)
 						// reg r6 - no need to prep
	mt	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 643
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type a
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 643
						// Z disposable
						//FIXME convert
						// (convert - reducing type 503 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 503
						// matchobj comparing flags 260 with 42
						// deref 
	ld	r3
						//Saving to reg r0
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 643
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 260
						// const
						// matchobj comparing flags 1 with 260
	.liconst	1
	add	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 643
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	sgn
	cmp	r2

						//../DeMiSTify/firmware/pcecd.c, line 643
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l184
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 644
		// Offsets 4, -48
		// Have am? no, no
		// flags 1, 21
						// (a/p assign)
		// Real offset of type is -48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a1 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
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
						// freereg r2
						// freereg r3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	-12
	sub	r6
	ldinc	r6
	mr	r3

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
	.section	.text.d
	.global	_pcecd_clear_busy
_pcecd_clear_busy:
	stdec	r6

						//../DeMiSTify/firmware/pcecd.c, line 652
		// Offsets 1, 17
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 17, 12
		// Real offset of type is 17, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l12,17
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
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
	.section	.text.e
	.global	_pcecd_reset
_pcecd_reset:
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 657
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 12
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l12,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 658
		// Offsets 0, 20
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 20, 12
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,20
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
	stinc	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 659
		// Offsets 0, 24
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 24, 12
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 660
		// Offsets 0, 32
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 32, 12
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,32
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

						//../DeMiSTify/firmware/pcecd.c, line 661
		// Offsets 1, 5
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 5, 12
		// Real offset of type is 5, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,5
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 662
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_toc, 44
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/pcecd.c, line 662
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l191
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 662
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 662
						//pcreltotemp
	.lipcrel	l192
	add	r7
l191: # 

						//../DeMiSTify/firmware/pcecd.c, line 662
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done
l192: # 

						//../DeMiSTify/firmware/pcecd.c, line 662
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l12,8
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1

						//../DeMiSTify/firmware/pcecd.c, line 663
		// Offsets 0, 36
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 36, 12
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,36
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
	stinc	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 664
		// Offsets 0, 40
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 40, 12
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 665
		// Offsets 0, 12
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 12, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,12
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
	stinc	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 666
		// Offsets 0, 16
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 16, 12
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 667
		// Offsets 0, 17
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 17, 12
		// Real offset of type is 17, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 668
		// Offsets 0, 44
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 44, 12
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,44
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
	stinc	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 669
		// Offsets 0, 48
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 48, 12
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82

						// required value found in r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 670
		// Offsets 0, 56
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 56, 12
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,56
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 671
		// Offsets 0, 58
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 58, 12
		// Real offset of type is 58, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,58
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 102
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 2
	hlf
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 672
		// Offsets 1, 18
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 18, 12
		// Real offset of type is 18, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l12,18
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.f
	.global	_pcecd_poll
_pcecd_poll:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3

						//../DeMiSTify/firmware/pcecd.c, line 679
		// Offsets 517, -48
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
	.liconst	517
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 680
		// Offsets 96, -44
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
	.liconst	96
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 680
						//FIXME convert
						// (convert - reducing type 503 to 101
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
	mr	r1
						//save_temp done
						// matchobj comparing flags 1 with 21
						// matchobj comparing flags 1 with 1
	.liconst	255
	and	r1

						//../DeMiSTify/firmware/pcecd.c, line 681
		// Offsets 4, -48
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
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 682
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 682
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 1
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 682
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l197
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 682
						//call
						//pcreltotemp
	.lipcrel	l100 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l197: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 683
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	2
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 683
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l199
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 683
						//call
						//pcreltotemp
	.lipcrel	_pcecd_data // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l199: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 684
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	4
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 684
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l201
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 684
						//call
						//pcreltotemp
	.lipcrel	_pcecd_clear_busy // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l201: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 685
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	8
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 685
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l203
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 686
						//call
						//pcreltotemp
	.lipcrel	_pcecd_reset // extern
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/pcecd.c, line 687
		// Offsets 517, -48
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
	.liconst	517
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 688
		// Offsets 102, -44
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
	.liconst	102
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 689
		// Offsets 0, -44
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
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 690
		// Offsets 4, -48
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
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l203: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 692
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	16
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/pcecd.c, line 692
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 101
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l12,22
						// static pe not varadr
						//sizemod based on type 0x101
	byt
	stmpdec	r1
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 694
						//call
						//pcreltotemp
	.lipcrel	l52 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/pcecd.c, line 699
						// (test)
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,12
						//static deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/pcecd.c, line 699
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l205
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 699
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,0
						//static deref
						//sizemod based on type 0x103
	ldt

						//../DeMiSTify/firmware/pcecd.c, line 699
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l205
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 700
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 102
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,58
						//static deref
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 700
						//call
						//pcreltotemp
	.lipcrel	l16 // Static 
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/pcecd.c, line 701
		// Offsets 0, 12
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 12, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// static
	.liabs	l12,12
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
l205: # 
						// allocreg r1

						//../DeMiSTify/firmware/pcecd.c, line 703
						// (test)
						// (obj to tmp) flags 2 type 101
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l12,16
						//static deref
						//sizemod based on type 0x101
	byt
	ldt

						//../DeMiSTify/firmware/pcecd.c, line 703
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l208
		add	r7

						//../DeMiSTify/firmware/pcecd.c, line 704
		// Offsets 517, -48
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
	.liconst	517
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 705
		// Offsets 101, -44
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
	.liconst	101
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 706
		// Offsets 0, -44
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
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 707
		// Offsets 4, -48
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
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/pcecd.c, line 708
		// Offsets 0, 16
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 16, 12
		// Real offset of type is 16, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 1
						// static
	.liabs	l12,16
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
l208: # 
						// freereg r1
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.bss.10
	.align	4
	.global	_cd_buffer
	.comm	_cd_buffer,2352
	.section	.data.11
	.align	4
l51:
	.int	0
	.section	.data.12
	.align	4
l193:
	.int	0
	.section	.bss.13
	.align	4
	.lcomm	l11,4
	.section	.bss.14
	.align	4
	.lcomm	l12,60
