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
	.global	_autoboot
_autoboot:
	stdec	r6

						//overrides.c, line 33
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_romtype
						// extern pe not varadr
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

						//overrides.c, line 34
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 1
						// extern (offset 0)
	.liabs	_configstring_index
						// extern pe not varadr
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

						//overrides.c, line 35
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_bootrom_name
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 35
						//call
						//pcreltotemp
	.lipcrel	_LoadROM // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//overrides.c, line 36
						//setreturn
						// (obj to r0) flags 1 type a
						// const
	.liconst	0
	mr	r0
	ldinc	r6
	mr	r7

	.section	.data.1
	.align	4
	.global	_joy_keymap
_joy_keymap:
	.byte	88
	.byte	18
	.byte	20
	.byte	17
	.byte	29
	.byte	27
	.byte	28
	.byte	35
	.byte	90
	.byte	89
	.byte	148
	.byte	145
	.byte	245
	.byte	242
	.byte	235
	.byte	244
	.section	.data.2
	.align	4
	.global	_bootrom_name
_bootrom_name:
						// Declaring from tree
						// static
	.ref	l1
	.section	.rodata.3
	.align	4
l1:
	.byte	65
	.byte	85
	.byte	84
	.byte	79
	.byte	66
	.byte	79
	.byte	79
	.byte	84
	.byte	83
	.byte	71
	.byte	88
	.byte	0
