	.text
	.def	"@feat.00";
	.scl	3;
	.type	0;
	.endef
	.globl	"@feat.00"
.set "@feat.00", 0
	.file	"sha512.cc"
	.def	_Z14sha512_invokerPyPKSt4byteS2_;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z14sha512_invokerPyPKSt4byteS2_ // -- Begin function _Z14sha512_invokerPyPKSt4byteS2_
	.p2align	2
_Z14sha512_invokerPyPKSt4byteS2_:       // @_Z14sha512_invokerPyPKSt4byteS2_
// %bb.0:
	sub	sp, sp, #288
	cmp	x1, x2
	stp	x30, x29, [sp, #192]            // 16-byte Folded Spill
	stp	x28, x27, [sp, #208]            // 16-byte Folded Spill
	stp	x26, x25, [sp, #224]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #240]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #256]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #272]            // 16-byte Folded Spill
	str	x2, [sp, #24]                   // 8-byte Folded Spill
	b.eq	.LBB0_6
// %bb.1:
	ldp	x16, x15, [x0, #48]
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	ldp	x4, x2, [x0, #32]
	ldp	x3, x17, [x0, #16]
	ldp	x6, x5, [x0]
.LBB0_2:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	bic	x9, x16, x4
	and	x10, x2, x4
	ror	x8, x4, #14
	ldp	x12, x14, [x1]
	orr	x9, x10, x9
	str	x15, [sp, #96]                  // 8-byte Folded Spill
	add	x9, x15, x9
	mov	x15, #44578                     // =0xae22
	ror	x11, x6, #28
	eor	x8, x8, x4, ror #18
	movk	x15, #55080, lsl #16
	rev	x30, x12
	movk	x15, #12184, lsl #32
	eor	x13, x5, x6
	eor	x10, x11, x6, ror #34
	add	x9, x9, x30
	eor	x8, x8, x4, ror #41
	movk	x15, #17034, lsl #48
	bic	x11, x5, x13
	and	x12, x3, x13
	add	x9, x9, x15
	eor	x10, x10, x6, ror #39
	orr	x11, x12, x11
	add	x8, x8, x9
	rev	x15, x14
	str	x2, [sp, #72]                   // 8-byte Folded Spill
	add	x12, x8, x17
	add	x9, x11, x10
	str	x15, [sp, #136]                 // 8-byte Folded Spill
	bic	x11, x2, x12
	and	x14, x4, x12
	add	x8, x9, x8
	ror	x9, x12, #14
	add	x15, x16, x15
	orr	x11, x14, x11
	ror	x10, x8, #28
	add	x11, x15, x11
	mov	x15, #26061                     // =0x65cd
	eor	x9, x9, x12, ror #18
	movk	x15, #9199, lsl #16
	eor	x14, x8, x6
	eor	x10, x10, x8, ror #34
	movk	x15, #17553, lsl #32
	and	x13, x14, x13
	eor	x9, x9, x12, ror #41
	movk	x15, #28983, lsl #48
	eor	x13, x13, x6
	add	x11, x11, x15
	eor	x10, x10, x8, ror #39
	str	x17, [sp, #56]                  // 8-byte Folded Spill
	add	x9, x11, x9
	ldp	x11, x15, [x1, #16]
	add	x10, x10, x13
	add	x0, x9, x3
	str	x16, [sp, #80]                  // 8-byte Folded Spill
	add	x10, x10, x9
	ror	x9, x0, #14
	bic	x16, x4, x0
	rev	x13, x11
	ror	x11, x10, #28
	and	x17, x12, x0
	str	x13, [sp, #184]                 // 8-byte Folded Spill
	add	x2, x2, x13
	mov	x13, #15151                     // =0x3b2f
	eor	x9, x9, x0, ror #18
	eor	x11, x11, x10, ror #34
	movk	x13, #60493, lsl #16
	orr	x16, x17, x16
	eor	x17, x10, x8
	movk	x13, #64463, lsl #32
	add	x16, x2, x16
	eor	x9, x9, x0, ror #41
	and	x14, x17, x14
	movk	x13, #46528, lsl #48
	eor	x11, x11, x10, ror #39
	eor	x14, x14, x8
	add	x16, x16, x13
	rev	x13, x15
	str	x3, [sp, #48]                   // 8-byte Folded Spill
	add	x9, x16, x9
	add	x11, x11, x14
	str	x4, [sp, #64]                   // 8-byte Folded Spill
	add	x14, x9, x5
	add	x9, x11, x9
	str	x13, [sp, #176]                 // 8-byte Folded Spill
	ror	x16, x9, #28
	ror	x11, x14, #14
	bic	x2, x12, x14
	and	x3, x0, x14
	add	x4, x4, x13
	mov	x13, #56252                     // =0xdbbc
	eor	x16, x16, x9, ror #34
	eor	x11, x11, x14, ror #18
	orr	x2, x3, x2
	eor	x3, x9, x10
	movk	x13, #33161, lsl #16
	add	x2, x4, x2
	and	x17, x3, x17
	movk	x13, #56229, lsl #32
	eor	x16, x16, x9, ror #39
	eor	x11, x11, x14, ror #41
	movk	x13, #59829, lsl #48
	eor	x17, x17, x10
	add	x2, x2, x13
	add	x16, x16, x17
	stp	x6, x5, [sp, #32]               // 16-byte Folded Spill
	ldp	x17, x15, [x1, #32]
	add	x11, x2, x11
	add	x2, x11, x6
	add	x11, x16, x11
	ror	x16, x2, #14
	bic	x6, x0, x2
	and	x7, x14, x2
	rev	x13, x17
	ror	x17, x11, #28
	orr	x6, x7, x6
	mov	x5, x13
	add	x12, x12, x13
	mov	x13, #46392                     // =0xb538
	eor	x16, x16, x2, ror #18
	movk	x13, #62280, lsl #16
	eor	x17, x17, x11, ror #34
	movk	x13, #49755, lsl #32
	eor	x7, x11, x9
	add	x12, x12, x6
	eor	x16, x16, x2, ror #41
	movk	x13, #14678, lsl #48
	and	x3, x7, x3
	add	x12, x12, x13
	eor	x13, x17, x11, ror #39
	eor	x3, x3, x9
	add	x12, x12, x16
	str	x1, [sp, #88]                   // 8-byte Folded Spill
	add	x3, x13, x3
	add	x16, x12, x8
	rev	x13, x15
	add	x8, x3, x12
	bic	x15, x14, x16
	and	x6, x2, x16
	ror	x12, x16, #14
	ror	x3, x8, #28
	str	x13, [sp, #168]                 // 8-byte Folded Spill
	add	x0, x13, x0
	orr	x13, x6, x15
	eor	x6, x8, x11
	add	x0, x0, x13
	mov	x13, #53273                     // =0xd019
	eor	x12, x12, x16, ror #18
	eor	x3, x3, x8, ror #34
	movk	x13, #46597, lsl #16
	and	x15, x6, x7
	movk	x13, #4593, lsl #32
	eor	x12, x12, x16, ror #41
	movk	x13, #23025, lsl #48
	eor	x3, x3, x8, ror #39
	add	x0, x0, x13
	eor	x13, x15, x11
	add	x12, x0, x12
	add	x0, x3, x13
	add	x3, x12, x10
	add	x10, x0, x12
	ldp	x13, x0, [x1, #48]
	ror	x12, x3, #14
	ror	x7, x10, #28
	bic	x19, x2, x3
	and	x20, x16, x3
	eor	x12, x12, x3, ror #18
	orr	x19, x20, x19
	eor	x20, x10, x8
	rev	x13, x13
	eor	x7, x7, x10, ror #34
	and	x6, x20, x6
	str	x13, [sp, #160]                 // 8-byte Folded Spill
	add	x14, x13, x14
	mov	x13, #20379                     // =0x4f9b
	movk	x13, #44825, lsl #16
	add	x14, x14, x19
	eor	x12, x12, x3, ror #41
	movk	x13, #33444, lsl #32
	eor	x7, x7, x10, ror #39
	eor	x6, x6, x8
	movk	x13, #37439, lsl #48
	add	x14, x14, x13
	add	x6, x7, x6
	rev	x13, x0
	add	x12, x14, x12
	str	x13, [sp, #152]                 // 8-byte Folded Spill
	add	x2, x13, x2
	add	x14, x12, x9
	add	x9, x6, x12
	mov	x13, #33048                     // =0x8118
	ror	x12, x14, #14
	bic	x7, x16, x14
	and	x19, x3, x14
	movk	x13, #55917, lsl #16
	ror	x0, x9, #28
	orr	x7, x19, x7
	eor	x12, x12, x14, ror #18
	movk	x13, #24277, lsl #32
	add	x2, x2, x7
	movk	x13, #43804, lsl #48
	eor	x0, x0, x9, ror #34
	eor	x19, x9, x10
	eor	x12, x12, x14, ror #41
	add	x2, x2, x13
	and	x7, x19, x20
	eor	x0, x0, x9, ror #39
	eor	x7, x7, x10
	add	x12, x2, x12
	add	x22, x12, x11
	ldp	x11, x2, [x1, #64]
	add	x0, x0, x7
	bic	x20, x3, x22
	and	x21, x14, x22
	add	x12, x0, x12
	ror	x0, x22, #14
	orr	x20, x21, x20
	rev	x13, x11
	ror	x11, x12, #28
	eor	x21, x12, x9
	str	x13, [sp, #144]                 // 8-byte Folded Spill
	add	x16, x13, x16
	mov	x13, #578                       // =0x242
	eor	x0, x0, x22, ror #18
	movk	x13, #41731, lsl #16
	eor	x11, x11, x12, ror #34
	movk	x13, #43672, lsl #32
	add	x16, x16, x20
	and	x19, x21, x19
	eor	x0, x0, x22, ror #41
	movk	x13, #55303, lsl #48
	eor	x11, x11, x12, ror #39
	add	x16, x16, x13
	eor	x19, x19, x9
	mov	x13, #28606                     // =0x6fbe
	add	x16, x16, x0
	add	x11, x11, x19
	rev	x6, x2
	add	x0, x16, x8
	add	x8, x11, x16
	movk	x13, #17776, lsl #16
	ror	x11, x0, #14
	ror	x16, x8, #28
	bic	x2, x14, x0
	and	x20, x22, x0
	add	x3, x6, x3
	movk	x13, #23297, lsl #32
	eor	x11, x11, x0, ror #18
	orr	x2, x20, x2
	eor	x16, x16, x8, ror #34
	eor	x23, x8, x12
	add	x2, x3, x2
	movk	x13, #4739, lsl #48
	eor	x11, x11, x0, ror #41
	and	x3, x23, x21
	add	x2, x2, x13
	eor	x16, x16, x8, ror #39
	eor	x3, x3, x12
	mov	x13, #45708                     // =0xb28c
	add	x11, x2, x11
	movk	x13, #20196, lsl #16
	add	x16, x16, x3
	add	x2, x11, x10
	movk	x13, #34238, lsl #32
	ldp	x10, x3, [x1, #80]
	add	x11, x16, x11
	ror	x16, x2, #14
	bic	x21, x22, x2
	and	x24, x0, x2
	orr	x21, x24, x21
	eor	x24, x11, x8
	movk	x13, #9265, lsl #48
	rev	x15, x10
	ror	x10, x11, #28
	eor	x16, x16, x2, ror #18
	add	x14, x15, x14
	rev	x4, x3
	eor	x10, x10, x11, ror #34
	add	x14, x14, x21
	eor	x16, x16, x2, ror #41
	and	x21, x24, x23
	add	x14, x14, x13
	mov	x13, #46306                     // =0xb4e2
	eor	x10, x10, x11, ror #39
	eor	x21, x21, x8
	add	x16, x14, x16
	add	x14, x16, x9
	movk	x13, #54783, lsl #16
	add	x22, x4, x22
	add	x10, x10, x21
	bic	x3, x0, x14
	and	x23, x2, x14
	add	x9, x10, x16
	ror	x10, x14, #14
	orr	x3, x23, x3
	ror	x16, x9, #28
	movk	x13, #32195, lsl #32
	eor	x23, x9, x11
	eor	x10, x10, x14, ror #18
	add	x3, x22, x3
	movk	x13, #21772, lsl #48
	eor	x16, x16, x9, ror #34
	and	x22, x23, x24
	add	x3, x3, x13
	eor	x10, x10, x14, ror #41
	eor	x22, x22, x11
	mov	x13, #35183                     // =0x896f
	eor	x16, x16, x9, ror #39
	movk	x13, #62075, lsl #16
	add	x10, x3, x10
	movk	x13, #23924, lsl #32
	add	x3, x16, x22
	add	x16, x10, x12
	mov	x22, x15
	ldp	x12, x24, [x1, #96]
	add	x10, x3, x10
	ror	x3, x16, #14
	bic	x25, x2, x16
	and	x26, x14, x16
	orr	x25, x26, x25
	eor	x27, x10, x9
	movk	x13, #29374, lsl #48
	rev	x15, x12
	ror	x12, x10, #28
	eor	x3, x3, x16, ror #18
	add	x0, x15, x0
	and	x23, x27, x23
	rev	x17, x24
	eor	x12, x12, x10, ror #34
	add	x0, x0, x25
	eor	x3, x3, x16, ror #41
	add	x0, x0, x13
	eor	x23, x23, x9
	mov	x13, #38577                     // =0x96b1
	eor	x12, x12, x10, ror #39
	add	x0, x0, x3
	movk	x13, #15126, lsl #16
	add	x8, x0, x8
	add	x2, x17, x2
	movk	x13, #45566, lsl #32
	add	x12, x12, x23
	bic	x3, x14, x8
	and	x24, x16, x8
	add	x26, x12, x0
	ror	x12, x8, #14
	orr	x3, x24, x3
	ror	x0, x26, #28
	eor	x25, x26, x10
	add	x2, x2, x3
	eor	x12, x12, x8, ror #18
	movk	x13, #32990, lsl #48
	and	x3, x25, x27
	eor	x0, x0, x26, ror #34
	add	x2, x2, x13
	eor	x3, x3, x10
	eor	x12, x12, x8, ror #41
	mov	x13, #4661                      // =0x1235
	mov	x23, x15
	eor	x0, x0, x26, ror #39
	movk	x13, #9671, lsl #16
	mov	w15, #512                       // =0x200
	add	x12, x2, x12
	movk	x13, #1703, lsl #32
	add	x2, x0, x3
	add	x0, x12, x11
	movk	x13, #39900, lsl #48
	ldp	x11, x3, [x1, #112]
	add	x2, x2, x12
	ror	x12, x0, #14
	bic	x27, x16, x0
	and	x28, x8, x0
	orr	x27, x28, x27
	eor	x28, x2, x26
	rev	x24, x11
	ror	x11, x2, #28
	eor	x12, x12, x0, ror #18
	add	x14, x24, x14
	and	x25, x28, x25
	eor	x11, x11, x2, ror #34
	add	x14, x14, x27
	eor	x12, x12, x0, ror #41
	add	x14, x14, x13
	eor	x25, x25, x26
	mov	x13, #9876                      // =0x2694
	eor	x11, x11, x2, ror #39
	add	x12, x14, x12
	movk	x13, #53097, lsl #16
	add	x9, x12, x9
	movk	x13, #61812, lsl #32
	add	x11, x11, x25
	rev	x25, x3
	bic	x3, x8, x9
	add	x12, x11, x12
	ror	x11, x9, #14
	and	x27, x0, x9
	ror	x14, x12, #28
	orr	x3, x27, x3
	add	x16, x25, x16
	eor	x11, x11, x9, ror #18
	add	x3, x16, x3
	eor	x16, x12, x2
	eor	x14, x14, x12, ror #34
	movk	x13, #49563, lsl #48
	and	x27, x16, x28
	eor	x11, x11, x9, ror #41
	add	x3, x3, x13
	adrp	x28, _ZN7fast_io7details6sha51210k512scalarE+64
	add	x28, x28, :lo12:_ZN7fast_io7details6sha51210k512scalarE+64
	eor	x14, x14, x12, ror #39
	add	x11, x3, x11
	eor	x3, x27, x2
	add	x14, x14, x3
	add	x10, x11, x10
	add	x14, x14, x11
.LBB0_3:                                //   Parent Loop BB0_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	stp	x23, x17, [sp, #104]            // 16-byte Folded Spill
	mov	x20, x17
	ldr	x17, [sp, #136]                 // 8-byte Folded Reload
	ror	x3, x24, #19
	ror	x27, x10, #14
	bic	x1, x0, x10
	ror	x11, x17, #1
	and	x29, x9, x10
	add	x30, x30, x6
	eor	x27, x27, x10, ror #18
	eor	x3, x3, x24, ror #61
	orr	x1, x29, x1
	eor	x11, x11, x17, ror #8
	mov	x7, x5
	ldr	x5, [sp, #184]                  // 8-byte Folded Reload
	eor	x27, x27, x10, ror #41
	add	x8, x8, x1
	eor	x1, x3, x24, lsr #6
	eor	x11, x11, x17, lsr #7
	ror	x13, x14, #28
	stp	x22, x15, [sp, #120]            // 16-byte Folded Spill
	ror	x15, x5, #1
	add	x8, x8, x27
	ror	x29, x25, #19
	add	x11, x30, x11
	ldp	x3, x30, [x28, #-64]
	eor	x13, x13, x14, ror #34
	add	x19, x11, x1
	eor	x11, x12, x14
	eor	x15, x15, x5, ror #8
	and	x16, x16, x11
	add	x27, x17, x22
	add	x8, x8, x3
	eor	x13, x13, x14, ror #39
	eor	x3, x29, x25, ror #61
	add	x8, x8, x19
	eor	x16, x16, x12
	eor	x15, x15, x5, lsr #7
	add	x26, x8, x26
	eor	x3, x3, x25, lsr #6
	add	x13, x16, x13
	ror	x29, x26, #14
	add	x15, x27, x15
	add	x16, x13, x8
	add	x22, x15, x3
	bic	x13, x9, x26
	and	x15, x10, x26
	eor	x8, x29, x26, ror #18
	ror	x3, x16, #28
	ldr	x17, [sp, #176]                 // 8-byte Folded Reload
	mov	x1, x6
	ldr	x21, [sp, #144]                 // 8-byte Folded Reload
	str	x22, [sp, #136]                 // 8-byte Folded Spill
	eor	x27, x8, x26, ror #41
	orr	x8, x15, x13
	add	x13, x0, x30
	add	x13, x22, x13
	eor	x15, x3, x16, ror #34
	ror	x0, x17, #1
	add	x13, x13, x8
	eor	x8, x16, x14
	ror	x3, x19, #19
	eor	x15, x15, x16, ror #39
	and	x11, x8, x11
	eor	x0, x0, x17, ror #8
	add	x13, x13, x27
	eor	x11, x11, x14
	eor	x27, x3, x19, ror #61
	add	x11, x15, x11
	eor	x15, x0, x17, lsr #7
	add	x3, x13, x2
	eor	x2, x27, x19, lsr #6
	add	x27, x5, x4
	add	x0, x11, x13
	add	x11, x27, x15
	bic	x13, x10, x3
	and	x15, x26, x3
	orr	x13, x15, x13
	ldp	x27, x15, [x28, #-48]
	ror	x29, x3, #14
	add	x5, x11, x2
	ror	x2, x0, #28
	ror	x30, x22, #19
	str	x5, [sp, #184]                  // 8-byte Folded Spill
	eor	x11, x29, x3, ror #18
	add	x9, x9, x27
	ror	x27, x7, #1
	eor	x2, x2, x0, ror #34
	add	x9, x5, x9
	eor	x29, x0, x16
	eor	x11, x11, x3, ror #41
	eor	x27, x27, x7, ror #8
	and	x8, x29, x8
	eor	x2, x2, x0, ror #39
	add	x9, x9, x13
	eor	x13, x30, x22, ror #61
	eor	x8, x8, x16
	add	x9, x9, x11
	eor	x11, x27, x7, lsr #7
	add	x8, x2, x8
	add	x2, x9, x12
	eor	x12, x13, x22, lsr #6
	add	x13, x17, x23
	add	x8, x8, x9
	add	x10, x10, x15
	add	x9, x13, x11
	ror	x11, x2, #14
	ldr	x30, [sp, #168]                 // 8-byte Folded Reload
	add	x6, x9, x12
	bic	x9, x26, x2
	and	x12, x3, x2
	eor	x11, x11, x2, ror #18
	orr	x9, x12, x9
	ror	x12, x8, #28
	add	x10, x6, x10
	ror	x13, x30, #1
	ror	x15, x5, #19
	eor	x11, x11, x2, ror #41
	add	x10, x10, x9
	eor	x12, x12, x8, ror #34
	eor	x9, x8, x0
	eor	x13, x13, x30, ror #8
	eor	x15, x15, x5, ror #61
	add	x10, x10, x11
	and	x11, x9, x29
	eor	x12, x12, x8, ror #39
	add	x14, x10, x14
	eor	x11, x11, x0
	eor	x13, x13, x30, lsr #7
	ror	x27, x14, #14
	add	x11, x12, x11
	eor	x15, x15, x5, lsr #6
	add	x12, x11, x10
	add	x17, x7, x20
	mov	x23, x4
	eor	x11, x27, x14, ror #18
	ldp	x10, x27, [x28, #-32]
	add	x13, x17, x13
	ldr	x17, [sp, #160]                 // 8-byte Folded Reload
	ror	x29, x6, #19
	add	x4, x13, x15
	bic	x13, x3, x14
	and	x15, x2, x14
	add	x10, x26, x10
	ror	x26, x12, #28
	orr	x13, x15, x13
	add	x10, x10, x4
	eor	x11, x11, x14, ror #41
	ror	x15, x17, #1
	add	x10, x10, x13
	eor	x13, x26, x12, ror #34
	eor	x26, x12, x8
	add	x11, x10, x11
	and	x9, x26, x9
	eor	x15, x15, x17, ror #8
	eor	x13, x13, x12, ror #39
	add	x10, x11, x16
	eor	x9, x9, x8
	eor	x16, x29, x6, ror #61
	ror	x29, x10, #14
	ldr	x20, [sp, #152]                 // 8-byte Folded Reload
	add	x9, x13, x9
	eor	x13, x15, x17, lsr #7
	str	x6, [sp, #176]                  // 8-byte Folded Spill
	eor	x15, x16, x6, lsr #6
	add	x16, x30, x24
	eor	x29, x29, x10, ror #18
	add	x9, x9, x11
	add	x11, x13, x16
	bic	x13, x2, x10
	add	x7, x11, x15
	and	x15, x14, x10
	add	x16, x27, x3
	ror	x3, x9, #28
	eor	x11, x29, x10, ror #41
	orr	x13, x15, x13
	add	x15, x16, x7
	ror	x27, x20, #1
	eor	x16, x9, x12
	add	x13, x15, x13
	eor	x15, x3, x9, ror #34
	ror	x3, x4, #19
	add	x11, x13, x11
	eor	x13, x27, x20, ror #8
	and	x26, x16, x26
	eor	x3, x3, x4, ror #61
	eor	x27, x26, x12
	add	x26, x11, x0
	eor	x13, x13, x20, lsr #7
	ror	x29, x26, #14
	eor	x15, x15, x9, ror #39
	eor	x0, x3, x4, lsr #6
	add	x3, x17, x25
	add	x13, x13, x3
	add	x15, x15, x27
	and	x27, x10, x26
	add	x17, x13, x0
	eor	x13, x29, x26, ror #18
	bic	x0, x14, x26
	ldp	x3, x29, [x28, #-16]
	orr	x0, x27, x0
	eor	x13, x13, x26, ror #41
	add	x11, x15, x11
	stp	x17, x7, [sp, #160]             // 16-byte Folded Spill
	add	x2, x3, x2
	eor	x3, x11, x9
	add	x2, x2, x17
	and	x27, x3, x16
	add	x15, x2, x0
	ror	x0, x21, #1
	ror	x2, x7, #19
	add	x13, x15, x13
	ror	x15, x11, #28
	eor	x27, x27, x9
	eor	x0, x0, x21, ror #8
	add	x16, x13, x8
	eor	x15, x15, x11, ror #34
	eor	x8, x0, x21, lsr #7
	eor	x0, x2, x7, ror #61
	ror	x2, x16, #14
	eor	x15, x15, x11, ror #39
	eor	x0, x0, x7, lsr #6
	add	x8, x8, x20
	eor	x30, x2, x16, ror #18
	add	x8, x8, x19
	add	x15, x15, x27
	add	x20, x8, x0
	add	x2, x15, x13
	bic	x13, x10, x16
	and	x15, x26, x16
	add	x0, x29, x20
	eor	x8, x30, x16, ror #41
	orr	x13, x15, x13
	add	x14, x0, x14
	ror	x15, x2, #28
	add	x13, x14, x13
	ror	x14, x1, #1
	ror	x29, x20, #19
	add	x13, x13, x8
	eor	x8, x2, x11
	eor	x15, x15, x2, ror #34
	and	x0, x8, x3
	eor	x14, x14, x1, ror #8
	ror	x3, x17, #19
	add	x12, x13, x12
	eor	x15, x15, x2, ror #39
	eor	x0, x0, x11
	eor	x14, x14, x1, lsr #7
	eor	x3, x3, x17, ror #61
	ror	x27, x12, #14
	add	x15, x15, x0
	eor	x0, x3, x17, lsr #6
	add	x3, x14, x21
	eor	x27, x27, x12, ror #18
	add	x14, x15, x13
	add	x13, x3, x22
	and	x3, x16, x12
	add	x21, x13, x0
	eor	x13, x27, x12, ror #41
	bic	x0, x26, x12
	ldp	x15, x27, [x28]
	ldr	x22, [sp, #120]                 // 8-byte Folded Reload
	orr	x0, x3, x0
	stp	x21, x20, [sp, #144]            // 16-byte Folded Spill
	add	x15, x15, x21
	add	x10, x15, x10
	ror	x15, x14, #28
	add	x10, x10, x0
	ror	x0, x22, #1
	add	x10, x10, x13
	eor	x13, x15, x14, ror #34
	eor	x15, x14, x2
	eor	x3, x0, x22, ror #8
	and	x8, x15, x8
	add	x0, x10, x9
	eor	x13, x13, x14, ror #39
	eor	x8, x8, x2
	eor	x9, x3, x22, lsr #7
	eor	x3, x29, x20, ror #61
	ror	x29, x0, #14
	add	x8, x13, x8
	eor	x13, x3, x20, lsr #6
	add	x9, x9, x1
	eor	x3, x29, x0, ror #18
	add	x9, x9, x5
	add	x8, x8, x10
	bic	x10, x16, x0
	add	x1, x9, x13
	eor	x9, x3, x0, ror #41
	and	x13, x12, x0
	add	x3, x27, x1
	ror	x27, x23, #1
	orr	x10, x13, x10
	add	x13, x3, x26
	ror	x3, x8, #28
	ror	x26, x21, #19
	add	x10, x13, x10
	eor	x13, x27, x23, ror #8
	eor	x27, x8, x14
	add	x9, x10, x9
	eor	x10, x3, x8, ror #34
	and	x15, x27, x15
	eor	x13, x13, x23, lsr #7
	eor	x26, x26, x21, ror #61
	eor	x15, x15, x14
	eor	x10, x10, x8, ror #39
	add	x3, x9, x11
	mov	x5, x4
	eor	x11, x26, x21, lsr #6
	add	x13, x13, x22
	ror	x26, x3, #14
	add	x10, x10, x15
	ldp	x15, x29, [x28, #16]
	add	x13, x13, x6
	mov	x6, x1
	ldr	x1, [sp, #104]                  // 8-byte Folded Reload
	add	x22, x13, x11
	eor	x11, x26, x3, ror #18
	bic	x13, x12, x3
	and	x26, x0, x3
	add	x15, x15, x22
	eor	x30, x11, x3, ror #41
	orr	x13, x26, x13
	add	x15, x15, x16
	add	x11, x10, x9
	add	x9, x15, x13
	ror	x10, x1, #1
	ror	x13, x11, #28
	ror	x26, x6, #19
	add	x9, x9, x30
	eor	x16, x10, x1, ror #8
	eor	x15, x11, x8
	add	x10, x9, x2
	eor	x13, x13, x11, ror #34
	and	x27, x15, x27
	eor	x2, x26, x6, ror #61
	eor	x16, x16, x1, lsr #7
	ror	x26, x10, #14
	eor	x27, x27, x8
	eor	x13, x13, x11, ror #39
	eor	x2, x2, x6, lsr #6
	mov	x30, x19
	add	x16, x16, x23
	mov	x19, x1
	eor	x26, x26, x10, ror #18
	add	x13, x13, x27
	add	x16, x16, x4
	ldr	x1, [sp, #112]                  // 8-byte Folded Reload
	add	x9, x13, x9
	add	x4, x16, x2
	bic	x16, x0, x10
	and	x2, x3, x10
	ror	x27, x9, #28
	eor	x13, x26, x10, ror #41
	ror	x26, x1, #1
	orr	x16, x2, x16
	add	x2, x29, x4
	add	x12, x2, x12
	eor	x27, x27, x9, ror #34
	eor	x2, x26, x1, ror #8
	add	x16, x12, x16
	eor	x12, x9, x11
	ror	x26, x22, #19
	and	x15, x12, x15
	add	x13, x16, x13
	eor	x27, x27, x9, ror #39
	eor	x2, x2, x1, lsr #7
	eor	x15, x15, x11
	add	x16, x13, x14
	eor	x26, x26, x22, ror #61
	add	x15, x27, x15
	ror	x27, x16, #14
	add	x14, x2, x19
	eor	x26, x26, x22, lsr #6
	add	x2, x14, x7
	add	x14, x15, x13
	eor	x15, x27, x16, ror #18
	ldp	x13, x27, [x28, #32]
	add	x23, x2, x26
	bic	x2, x3, x16
	and	x26, x10, x16
	ror	x29, x14, #28
	orr	x2, x26, x2
	eor	x15, x15, x16, ror #41
	add	x13, x13, x23
	ror	x26, x4, #19
	add	x13, x13, x0
	ror	x0, x24, #1
	add	x13, x13, x2
	eor	x2, x29, x14, ror #34
	eor	x29, x14, x9
	eor	x0, x0, x24, ror #8
	add	x13, x13, x15
	and	x12, x29, x12
	eor	x15, x2, x14, ror #39
	eor	x2, x26, x4, ror #61
	eor	x12, x12, x9
	eor	x0, x0, x24, lsr #7
	add	x8, x13, x8
	add	x12, x15, x12
	eor	x15, x2, x4, lsr #6
	ror	x2, x8, #14
	add	x0, x0, x1
	add	x26, x12, x13
	bic	x13, x10, x8
	add	x12, x0, x17
	add	x17, x12, x15
	eor	x12, x2, x8, ror #18
	and	x15, x16, x8
	add	x0, x27, x17
	ror	x2, x26, #28
	orr	x13, x15, x13
	add	x15, x0, x3
	ror	x0, x25, #1
	eor	x3, x12, x8, ror #41
	add	x13, x15, x13
	eor	x15, x2, x26, ror #34
	eor	x12, x26, x14
	eor	x2, x0, x25, ror #8
	ror	x27, x23, #19
	add	x13, x13, x3
	eor	x15, x15, x26, ror #39
	and	x3, x12, x29
	add	x0, x13, x11
	eor	x11, x2, x25, lsr #7
	eor	x2, x27, x23, ror #61
	eor	x3, x3, x14
	add	x15, x15, x3
	ror	x27, x0, #14
	eor	x3, x2, x23, lsr #6
	add	x11, x11, x24
	add	x2, x15, x13
	ldp	x15, x29, [x28, #48]
	add	x11, x11, x20
	add	x24, x11, x3
	ror	x11, x2, #28
	eor	x13, x27, x0, ror #18
	bic	x3, x16, x0
	and	x27, x8, x0
	add	x28, x28, #128
	add	x15, x15, x24
	eor	x11, x11, x2, ror #34
	orr	x3, x27, x3
	add	x10, x15, x10
	ror	x15, x30, #1
	eor	x13, x13, x0, ror #41
	add	x10, x10, x3
	eor	x3, x2, x26
	ror	x27, x17, #19
	eor	x15, x15, x30, ror #8
	eor	x11, x11, x2, ror #39
	and	x12, x3, x12
	add	x10, x10, x13
	eor	x12, x12, x26
	eor	x13, x15, x30, lsr #7
	eor	x15, x27, x17, ror #61
	add	x11, x11, x12
	add	x9, x10, x9
	add	x12, x11, x10
	eor	x10, x15, x17, lsr #6
	add	x11, x13, x25
	ror	x13, x9, #14
	add	x11, x11, x21
	ror	x15, x12, #28
	add	x25, x11, x10
	eor	x10, x13, x9, ror #18
	bic	x11, x8, x9
	and	x13, x0, x9
	add	x27, x29, x25
	eor	x15, x15, x12, ror #34
	orr	x11, x13, x11
	add	x13, x27, x16
	eor	x16, x12, x2
	eor	x15, x15, x12, ror #39
	and	x3, x16, x3
	eor	x10, x10, x9, ror #41
	add	x11, x13, x11
	eor	x13, x3, x2
	add	x13, x15, x13
	ldr	x15, [sp, #128]                 // 8-byte Folded Reload
	add	x11, x11, x10
	add	x10, x11, x14
	add	x14, x13, x11
	subs	x15, x15, #128
	b.ne	.LBB0_3
// %bb.4:                               //   in Loop: Header=BB0_2 Depth=1
	ldp	x3, x17, [sp, #48]              // 16-byte Folded Reload
	ldr	x15, [sp, #96]                  // 8-byte Folded Reload
	ldp	x16, x1, [sp, #80]              // 16-byte Folded Reload
	ldp	x6, x5, [sp, #32]               // 16-byte Folded Reload
	add	x15, x15, x8
	add	x3, x3, x2
	ldp	x4, x2, [sp, #64]               // 16-byte Folded Reload
	add	x1, x1, #128
	add	x17, x17, x26
	add	x16, x16, x0
	add	x6, x6, x14
	add	x5, x5, x12
	add	x4, x4, x10
	ldr	x10, [sp, #24]                  // 8-byte Folded Reload
	add	x2, x2, x9
	cmp	x1, x10
	b.ne	.LBB0_2
// %bb.5:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	stp	x6, x5, [x8]
	stp	x3, x17, [x8, #16]
	stp	x4, x2, [x8, #32]
	stp	x16, x15, [x8, #48]
.LBB0_6:
	ldp	x20, x19, [sp, #272]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #256]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #240]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #224]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #208]            // 16-byte Folded Reload
	ldp	x30, x29, [sp, #192]            // 16-byte Folded Reload
	add	sp, sp, #288
	ret
                                        // -- End function
	.section	.rdata$_ZN7fast_io7details6sha51210k512scalarE,"dr",discard,_ZN7fast_io7details6sha51210k512scalarE
	.globl	_ZN7fast_io7details6sha51210k512scalarE // @_ZN7fast_io7details6sha51210k512scalarE
	.p2align	3, 0x0
_ZN7fast_io7details6sha51210k512scalarE:
	.xword	-1973867731355612462            // 0xe49b69c19ef14ad2
	.xword	-1171420211273849373            // 0xefbe4786384f25e3
	.xword	1135362057144423861             // 0xfc19dc68b8cd5b5
	.xword	2597628984639134821             // 0x240ca1cc77ac9c65
	.xword	3308224258029322869             // 0x2de92c6f592b0275
	.xword	5365058923640841347             // 0x4a7484aa6ea6e483
	.xword	6679025012923562964             // 0x5cb0a9dcbd41fbd4
	.xword	8573033837759648693             // 0x76f988da831153b5
	.xword	-7476448914759557205            // 0x983e5152ee66dfab
	.xword	-6327057829258317296            // 0xa831c66d2db43210
	.xword	-5763719355590565569            // 0xb00327c898fb213f
	.xword	-4658551843659510044            // 0xbf597fc7beef0ee4
	.xword	-4116276920077217854            // 0xc6e00bf33da88fc2
	.xword	-3051310485924567259            // 0xd5a79147930aa725
	.xword	489312712824947311              // 0x6ca6351e003826f
	.xword	1452737877330783856             // 0x142929670a0e6e70
	.xword	2861767655752347644             // 0x27b70a8546d22ffc
	.xword	3322285676063803686             // 0x2e1b21385c26c926
	.xword	5560940570517711597             // 0x4d2c6dfc5ac42aed
	.xword	5996557281743188959             // 0x53380d139d95b3df
	.xword	7280758554555802590             // 0x650a73548baf63de
	.xword	8532644243296465576             // 0x766a0abb3c77b2a8
	.xword	-9096487096722542874            // 0x81c2c92e47edaee6
	.xword	-7894198246740708037            // 0x92722c851482353b
	.xword	-6719396339535248540            // 0xa2bfe8a14cf10364
	.xword	-6333637450476146687            // 0xa81a664bbc423001
	.xword	-4446306890439682159            // 0xc24b8b70d0f89791
	.xword	-4076793802049405392            // 0xc76c51a30654be30
	.xword	-3345356375505022440            // 0xd192e819d6ef5218
	.xword	-2983346525034927856            // 0xd69906245565a910
	.xword	-860691631967231958             // 0xf40e35855771202a
	.xword	1182934255886127544             // 0x106aa07032bbd1b8
	.xword	1847814050463011016             // 0x19a4c116b8d2d0c8
	.xword	2177327727835720531             // 0x1e376c085141ab53
	.xword	2830643537854262169             // 0x2748774cdf8eeb99
	.xword	3796741975233480872             // 0x34b0bcb5e19b48a8
	.xword	4115178125766777443             // 0x391c0cb3c5c95a63
	.xword	5681478168544905931             // 0x4ed8aa4ae3418acb
	.xword	6601373596472566643             // 0x5b9cca4f7763e373
	.xword	7507060721942968483             // 0x682e6ff3d6b2b8a3
	.xword	8399075790359081724             // 0x748f82ee5defb2fc
	.xword	8693463985226723168             // 0x78a5636f43172f60
	.xword	-8878714635349349518            // 0x84c87814a1f0ab72
	.xword	-8302665154208450068            // 0x8cc702081a6439ec
	.xword	-8016688836872298968            // 0x90befffa23631e28
	.xword	-6606660893046293015            // 0xa4506cebde82bde9
	.xword	-4685533653050689259            // 0xbef9a3f7b2c67915
	.xword	-4147400797238176981            // 0xc67178f2e372532b
	.xword	-3880063495543823972            // 0xca273eceea26619c
	.xword	-3348786107499101689            // 0xd186b8c721c0c207
	.xword	-1523767162380948706            // 0xeada7dd6cde0eb1e
	.xword	-757361751448694408             // 0xf57d4f7fee6ed178
	.xword	500013540394364858              // 0x6f067aa72176fba
	.xword	748580250866718886              // 0xa637dc5a2c898a6
	.xword	1242879168328830382             // 0x113f9804bef90dae
	.xword	1977374033974150939             // 0x1b710b35131c471b
	.xword	2944078676154940804             // 0x28db77f523047d84
	.xword	3659926193048069267             // 0x32caab7b40c72493
	.xword	4368137639120453308             // 0x3c9ebe0a15c9bebc
	.xword	4836135668995329356             // 0x431d67c49c100d4c
	.xword	5532061633213252278             // 0x4cc5d4becb3e42b6
	.xword	6448918945643986474             // 0x597f299cfc657e2a
	.xword	6902733635092675308             // 0x5fcb6fab3ad6faec
	.xword	7801388544844847127             // 0x6c44198c4a475817

	.section	.drectve,"yni"
	.addrsig