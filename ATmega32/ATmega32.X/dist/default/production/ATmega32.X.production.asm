
dist/default/production/ATmega32.X.production.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 2a 00 	jmp	0x54	; 0x54 <__ctors_end>
       4:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
       8:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
       c:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      10:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      14:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      18:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      1c:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      20:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      24:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      28:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      2c:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      30:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      34:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      38:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      3c:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      40:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      44:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      48:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      4c:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>
      50:	0c 94 47 00 	jmp	0x8e	; 0x8e <__bad_interrupt>

00000054 <__ctors_end>:
      54:	11 24       	eor	r1, r1
      56:	1f be       	out	0x3f, r1	; 63
      58:	cf e5       	ldi	r28, 0x5F	; 95
      5a:	d8 e0       	ldi	r29, 0x08	; 8
      5c:	de bf       	out	0x3e, r29	; 62
      5e:	cd bf       	out	0x3d, r28	; 61

00000060 <__do_copy_data>:
      60:	10 e0       	ldi	r17, 0x00	; 0
      62:	a0 e6       	ldi	r26, 0x60	; 96
      64:	b0 e0       	ldi	r27, 0x00	; 0
      66:	ee e4       	ldi	r30, 0x4E	; 78
      68:	f6 e1       	ldi	r31, 0x16	; 22
      6a:	02 c0       	rjmp	.+4      	; 0x70 <__do_copy_data+0x10>
      6c:	05 90       	lpm	r0, Z+
      6e:	0d 92       	st	X+, r0
      70:	aa 3c       	cpi	r26, 0xCA	; 202
      72:	b1 07       	cpc	r27, r17
      74:	d9 f7       	brne	.-10     	; 0x6c <__do_copy_data+0xc>

00000076 <__do_clear_bss>:
      76:	20 e0       	ldi	r18, 0x00	; 0
      78:	aa ec       	ldi	r26, 0xCA	; 202
      7a:	b0 e0       	ldi	r27, 0x00	; 0
      7c:	01 c0       	rjmp	.+2      	; 0x80 <.do_clear_bss_start>

0000007e <.do_clear_bss_loop>:
      7e:	1d 92       	st	X+, r1

00000080 <.do_clear_bss_start>:
      80:	a8 3f       	cpi	r26, 0xF8	; 248
      82:	b2 07       	cpc	r27, r18
      84:	e1 f7       	brne	.-8      	; 0x7e <.do_clear_bss_loop>
      86:	0e 94 ab 08 	call	0x1156	; 0x1156 <main>
      8a:	0c 94 25 0b 	jmp	0x164a	; 0x164a <_exit>

0000008e <__bad_interrupt>:
      8e:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000092 <calculator_reset>:
      92:	10 92 f4 00 	sts	0x00F4, r1	; 0x8000f4 <first_operand+0x1>
      96:	10 92 f3 00 	sts	0x00F3, r1	; 0x8000f3 <first_operand>
      9a:	10 92 f2 00 	sts	0x00F2, r1	; 0x8000f2 <second_operand+0x1>
      9e:	10 92 f1 00 	sts	0x00F1, r1	; 0x8000f1 <second_operand>
      a2:	10 92 f0 00 	sts	0x00F0, r1	; 0x8000f0 <operator>
      a6:	10 92 e0 00 	sts	0x00E0, r1	; 0x8000e0 <operation>
      aa:	10 92 d0 00 	sts	0x00D0, r1	; 0x8000d0 <answer>
      ae:	10 92 cf 00 	sts	0x00CF, r1	; 0x8000cf <operation_idx>
      b2:	10 92 ca 00 	sts	0x00CA, r1	; 0x8000ca <__data_end>
      b6:	08 95       	ret

000000b8 <string_len>:
      b8:	dc 01       	movw	r26, r24
      ba:	8c 91       	ld	r24, X
      bc:	88 23       	and	r24, r24
      be:	49 f0       	breq	.+18     	; 0xd2 <string_len+0x1a>
      c0:	80 e0       	ldi	r24, 0x00	; 0
      c2:	8f 5f       	subi	r24, 0xFF	; 255
      c4:	fd 01       	movw	r30, r26
      c6:	e8 0f       	add	r30, r24
      c8:	f1 1d       	adc	r31, r1
      ca:	90 81       	ld	r25, Z
      cc:	91 11       	cpse	r25, r1
      ce:	f9 cf       	rjmp	.-14     	; 0xc2 <string_len+0xa>
      d0:	08 95       	ret
      d2:	80 e0       	ldi	r24, 0x00	; 0
      d4:	08 95       	ret

000000d6 <string_to_int>:
      d6:	dc 01       	movw	r26, r24
      d8:	fc 01       	movw	r30, r24
      da:	e6 0f       	add	r30, r22
      dc:	f1 1d       	adc	r31, r1
      de:	80 81       	ld	r24, Z
      e0:	8d 32       	cpi	r24, 0x2D	; 45
      e2:	41 f5       	brne	.+80     	; 0x134 <string_to_int+0x5e>
      e4:	6f 5f       	subi	r22, 0xFF	; 255
      e6:	46 17       	cp	r20, r22
      e8:	50 f5       	brcc	.+84     	; 0x13e <string_to_int+0x68>
      ea:	20 e0       	ldi	r18, 0x00	; 0
      ec:	30 e0       	ldi	r19, 0x00	; 0
      ee:	1e c0       	rjmp	.+60     	; 0x12c <string_to_int+0x56>
      f0:	81 e0       	ldi	r24, 0x01	; 1
      f2:	01 c0       	rjmp	.+2      	; 0xf6 <string_to_int+0x20>
      f4:	80 e0       	ldi	r24, 0x00	; 0
      f6:	20 e0       	ldi	r18, 0x00	; 0
      f8:	30 e0       	ldi	r19, 0x00	; 0
      fa:	f9 01       	movw	r30, r18
      fc:	ee 0f       	add	r30, r30
      fe:	ff 1f       	adc	r31, r31
     100:	22 0f       	add	r18, r18
     102:	33 1f       	adc	r19, r19
     104:	22 0f       	add	r18, r18
     106:	33 1f       	adc	r19, r19
     108:	22 0f       	add	r18, r18
     10a:	33 1f       	adc	r19, r19
     10c:	2e 0f       	add	r18, r30
     10e:	3f 1f       	adc	r19, r31
     110:	90 53       	subi	r25, 0x30	; 48
     112:	29 0f       	add	r18, r25
     114:	31 1d       	adc	r19, r1
     116:	6f 5f       	subi	r22, 0xFF	; 255
     118:	46 17       	cp	r20, r22
     11a:	30 f0       	brcs	.+12     	; 0x128 <string_to_int+0x52>
     11c:	fd 01       	movw	r30, r26
     11e:	e6 0f       	add	r30, r22
     120:	f1 1d       	adc	r31, r1
     122:	90 81       	ld	r25, Z
     124:	91 11       	cpse	r25, r1
     126:	e9 cf       	rjmp	.-46     	; 0xfa <string_to_int+0x24>
     128:	81 30       	cpi	r24, 0x01	; 1
     12a:	d1 f4       	brne	.+52     	; 0x160 <string_to_int+0x8a>
     12c:	31 95       	neg	r19
     12e:	21 95       	neg	r18
     130:	31 09       	sbc	r19, r1
     132:	16 c0       	rjmp	.+44     	; 0x160 <string_to_int+0x8a>
     134:	46 17       	cp	r20, r22
     136:	60 f4       	brcc	.+24     	; 0x150 <string_to_int+0x7a>
     138:	20 e0       	ldi	r18, 0x00	; 0
     13a:	30 e0       	ldi	r19, 0x00	; 0
     13c:	11 c0       	rjmp	.+34     	; 0x160 <string_to_int+0x8a>
     13e:	fd 01       	movw	r30, r26
     140:	e6 0f       	add	r30, r22
     142:	f1 1d       	adc	r31, r1
     144:	90 81       	ld	r25, Z
     146:	91 11       	cpse	r25, r1
     148:	d3 cf       	rjmp	.-90     	; 0xf0 <string_to_int+0x1a>
     14a:	20 e0       	ldi	r18, 0x00	; 0
     14c:	30 e0       	ldi	r19, 0x00	; 0
     14e:	ee cf       	rjmp	.-36     	; 0x12c <string_to_int+0x56>
     150:	fd 01       	movw	r30, r26
     152:	e6 0f       	add	r30, r22
     154:	f1 1d       	adc	r31, r1
     156:	90 81       	ld	r25, Z
     158:	91 11       	cpse	r25, r1
     15a:	cc cf       	rjmp	.-104    	; 0xf4 <string_to_int+0x1e>
     15c:	20 e0       	ldi	r18, 0x00	; 0
     15e:	30 e0       	ldi	r19, 0x00	; 0
     160:	c9 01       	movw	r24, r18
     162:	08 95       	ret

00000164 <string_copy>:
     164:	dc 01       	movw	r26, r24
     166:	fb 01       	movw	r30, r22
     168:	90 81       	ld	r25, Z
     16a:	99 23       	and	r25, r25
     16c:	89 f0       	breq	.+34     	; 0x190 <string_copy+0x2c>
     16e:	20 e0       	ldi	r18, 0x00	; 0
     170:	30 e0       	ldi	r19, 0x00	; 0
     172:	40 e0       	ldi	r20, 0x00	; 0
     174:	fd 01       	movw	r30, r26
     176:	e2 0f       	add	r30, r18
     178:	f3 1f       	adc	r31, r19
     17a:	90 83       	st	Z, r25
     17c:	4f 5f       	subi	r20, 0xFF	; 255
     17e:	24 2f       	mov	r18, r20
     180:	30 e0       	ldi	r19, 0x00	; 0
     182:	fb 01       	movw	r30, r22
     184:	e2 0f       	add	r30, r18
     186:	f3 1f       	adc	r31, r19
     188:	90 81       	ld	r25, Z
     18a:	91 11       	cpse	r25, r1
     18c:	f3 cf       	rjmp	.-26     	; 0x174 <string_copy+0x10>
     18e:	02 c0       	rjmp	.+4      	; 0x194 <string_copy+0x30>
     190:	20 e0       	ldi	r18, 0x00	; 0
     192:	30 e0       	ldi	r19, 0x00	; 0
     194:	fd 01       	movw	r30, r26
     196:	e2 0f       	add	r30, r18
     198:	f3 1f       	adc	r31, r19
     19a:	10 82       	st	Z, r1
     19c:	08 95       	ret

0000019e <string_concatenate>:
     19e:	0f 93       	push	r16
     1a0:	1f 93       	push	r17
     1a2:	cf 93       	push	r28
     1a4:	df 93       	push	r29
     1a6:	ec 01       	movw	r28, r24
     1a8:	8b 01       	movw	r16, r22
     1aa:	0e 94 5c 00 	call	0xb8	; 0xb8 <string_len>
     1ae:	f8 01       	movw	r30, r16
     1b0:	90 81       	ld	r25, Z
     1b2:	99 23       	and	r25, r25
     1b4:	89 f0       	breq	.+34     	; 0x1d8 <string_concatenate+0x3a>
     1b6:	38 2f       	mov	r19, r24
     1b8:	21 e0       	ldi	r18, 0x01	; 1
     1ba:	23 0f       	add	r18, r19
     1bc:	fe 01       	movw	r30, r28
     1be:	e3 0f       	add	r30, r19
     1c0:	f1 1d       	adc	r31, r1
     1c2:	90 83       	st	Z, r25
     1c4:	92 2f       	mov	r25, r18
     1c6:	98 1b       	sub	r25, r24
     1c8:	f8 01       	movw	r30, r16
     1ca:	e9 0f       	add	r30, r25
     1cc:	f1 1d       	adc	r31, r1
     1ce:	90 81       	ld	r25, Z
     1d0:	32 2f       	mov	r19, r18
     1d2:	91 11       	cpse	r25, r1
     1d4:	f1 cf       	rjmp	.-30     	; 0x1b8 <string_concatenate+0x1a>
     1d6:	01 c0       	rjmp	.+2      	; 0x1da <string_concatenate+0x3c>
     1d8:	28 2f       	mov	r18, r24
     1da:	c2 0f       	add	r28, r18
     1dc:	d1 1d       	adc	r29, r1
     1de:	18 82       	st	Y, r1
     1e0:	df 91       	pop	r29
     1e2:	cf 91       	pop	r28
     1e4:	1f 91       	pop	r17
     1e6:	0f 91       	pop	r16
     1e8:	08 95       	ret

000001ea <int_to_string>:
     1ea:	4f 92       	push	r4
     1ec:	5f 92       	push	r5
     1ee:	6f 92       	push	r6
     1f0:	7f 92       	push	r7
     1f2:	bf 92       	push	r11
     1f4:	cf 92       	push	r12
     1f6:	df 92       	push	r13
     1f8:	ef 92       	push	r14
     1fa:	ff 92       	push	r15
     1fc:	0f 93       	push	r16
     1fe:	1f 93       	push	r17
     200:	cf 93       	push	r28
     202:	df 93       	push	r29
     204:	cd b7       	in	r28, 0x3d	; 61
     206:	de b7       	in	r29, 0x3e	; 62
     208:	60 97       	sbiw	r28, 0x10	; 16
     20a:	0f b6       	in	r0, 0x3f	; 63
     20c:	f8 94       	cli
     20e:	de bf       	out	0x3e, r29	; 62
     210:	0f be       	out	0x3f, r0	; 63
     212:	cd bf       	out	0x3d, r28	; 61
     214:	6a 01       	movw	r12, r20
     216:	1a 82       	std	Y+2, r1	; 0x02
     218:	19 82       	std	Y+1, r1	; 0x01
     21a:	fe 01       	movw	r30, r28
     21c:	33 96       	adiw	r30, 0x03	; 3
     21e:	2e e0       	ldi	r18, 0x0E	; 14
     220:	df 01       	movw	r26, r30
     222:	1d 92       	st	X+, r1
     224:	2a 95       	dec	r18
     226:	e9 f7       	brne	.-6      	; 0x222 <int_to_string+0x38>
     228:	99 23       	and	r25, r25
     22a:	64 f4       	brge	.+24     	; 0x244 <int_to_string+0x5a>
     22c:	2d e2       	ldi	r18, 0x2D	; 45
     22e:	fa 01       	movw	r30, r20
     230:	20 83       	st	Z, r18
     232:	90 95       	com	r25
     234:	80 95       	com	r24
     236:	70 95       	com	r23
     238:	61 95       	neg	r22
     23a:	7f 4f       	sbci	r23, 0xFF	; 255
     23c:	8f 4f       	sbci	r24, 0xFF	; 255
     23e:	9f 4f       	sbci	r25, 0xFF	; 255
     240:	01 e0       	ldi	r16, 0x01	; 1
     242:	01 c0       	rjmp	.+2      	; 0x246 <int_to_string+0x5c>
     244:	00 e0       	ldi	r16, 0x00	; 0
     246:	61 15       	cp	r22, r1
     248:	71 05       	cpc	r23, r1
     24a:	81 05       	cpc	r24, r1
     24c:	91 05       	cpc	r25, r1
     24e:	41 f4       	brne	.+16     	; 0x260 <int_to_string+0x76>
     250:	81 e0       	ldi	r24, 0x01	; 1
     252:	80 0f       	add	r24, r16
     254:	f6 01       	movw	r30, r12
     256:	e0 0f       	add	r30, r16
     258:	f1 1d       	adc	r31, r1
     25a:	90 e3       	ldi	r25, 0x30	; 48
     25c:	90 83       	st	Z, r25
     25e:	3c c0       	rjmp	.+120    	; 0x2d8 <int_to_string+0xee>
     260:	10 e0       	ldi	r17, 0x00	; 0
     262:	0f 2e       	mov	r0, r31
     264:	fa e0       	ldi	r31, 0x0A	; 10
     266:	4f 2e       	mov	r4, r31
     268:	51 2c       	mov	r5, r1
     26a:	61 2c       	mov	r6, r1
     26c:	71 2c       	mov	r7, r1
     26e:	f0 2d       	mov	r31, r0
     270:	01 c0       	rjmp	.+2      	; 0x274 <int_to_string+0x8a>
     272:	1b 2d       	mov	r17, r11
     274:	bb 24       	eor	r11, r11
     276:	b3 94       	inc	r11
     278:	b1 0e       	add	r11, r17
     27a:	ee 24       	eor	r14, r14
     27c:	e3 94       	inc	r14
     27e:	f1 2c       	mov	r15, r1
     280:	ec 0e       	add	r14, r28
     282:	fd 1e       	adc	r15, r29
     284:	e1 0e       	add	r14, r17
     286:	f1 1c       	adc	r15, r1
     288:	17 fd       	sbrc	r17, 7
     28a:	fa 94       	dec	r15
     28c:	a3 01       	movw	r20, r6
     28e:	92 01       	movw	r18, r4
     290:	0e 94 c6 0a 	call	0x158c	; 0x158c <__divmodsi4>
     294:	60 5d       	subi	r22, 0xD0	; 208
     296:	d7 01       	movw	r26, r14
     298:	6c 93       	st	X, r22
     29a:	62 2f       	mov	r22, r18
     29c:	73 2f       	mov	r23, r19
     29e:	84 2f       	mov	r24, r20
     2a0:	95 2f       	mov	r25, r21
     2a2:	61 15       	cp	r22, r1
     2a4:	71 05       	cpc	r23, r1
     2a6:	81 05       	cpc	r24, r1
     2a8:	91 05       	cpc	r25, r1
     2aa:	19 f7       	brne	.-58     	; 0x272 <int_to_string+0x88>
     2ac:	11 23       	and	r17, r17
     2ae:	9c f0       	brlt	.+38     	; 0x2d6 <int_to_string+0xec>
     2b0:	81 e0       	ldi	r24, 0x01	; 1
     2b2:	80 0f       	add	r24, r16
     2b4:	f6 01       	movw	r30, r12
     2b6:	e0 0f       	add	r30, r16
     2b8:	f1 1d       	adc	r31, r1
     2ba:	a1 e0       	ldi	r26, 0x01	; 1
     2bc:	b0 e0       	ldi	r27, 0x00	; 0
     2be:	ac 0f       	add	r26, r28
     2c0:	bd 1f       	adc	r27, r29
     2c2:	a1 0f       	add	r26, r17
     2c4:	b1 1d       	adc	r27, r1
     2c6:	17 fd       	sbrc	r17, 7
     2c8:	ba 95       	dec	r27
     2ca:	9c 91       	ld	r25, X
     2cc:	90 83       	st	Z, r25
     2ce:	08 2f       	mov	r16, r24
     2d0:	11 50       	subi	r17, 0x01	; 1
     2d2:	72 f7       	brpl	.-36     	; 0x2b0 <int_to_string+0xc6>
     2d4:	01 c0       	rjmp	.+2      	; 0x2d8 <int_to_string+0xee>
     2d6:	80 2f       	mov	r24, r16
     2d8:	f6 01       	movw	r30, r12
     2da:	e8 0f       	add	r30, r24
     2dc:	f1 1d       	adc	r31, r1
     2de:	10 82       	st	Z, r1
     2e0:	60 96       	adiw	r28, 0x10	; 16
     2e2:	0f b6       	in	r0, 0x3f	; 63
     2e4:	f8 94       	cli
     2e6:	de bf       	out	0x3e, r29	; 62
     2e8:	0f be       	out	0x3f, r0	; 63
     2ea:	cd bf       	out	0x3d, r28	; 61
     2ec:	df 91       	pop	r29
     2ee:	cf 91       	pop	r28
     2f0:	1f 91       	pop	r17
     2f2:	0f 91       	pop	r16
     2f4:	ff 90       	pop	r15
     2f6:	ef 90       	pop	r14
     2f8:	df 90       	pop	r13
     2fa:	cf 90       	pop	r12
     2fc:	bf 90       	pop	r11
     2fe:	7f 90       	pop	r7
     300:	6f 90       	pop	r6
     302:	5f 90       	pop	r5
     304:	4f 90       	pop	r4
     306:	08 95       	ret

00000308 <CALCULATOR_Init>:
     308:	61 e8       	ldi	r22, 0x81	; 129
     30a:	70 e0       	ldi	r23, 0x00	; 0
     30c:	82 e0       	ldi	r24, 0x02	; 2
     30e:	0e 94 74 06 	call	0xce8	; 0xce8 <LCD_SetPattern>
     312:	69 e7       	ldi	r22, 0x79	; 121
     314:	70 e0       	ldi	r23, 0x00	; 0
     316:	83 e0       	ldi	r24, 0x03	; 3
     318:	0e 94 74 06 	call	0xce8	; 0xce8 <LCD_SetPattern>
     31c:	10 92 f4 00 	sts	0x00F4, r1	; 0x8000f4 <first_operand+0x1>
     320:	10 92 f3 00 	sts	0x00F3, r1	; 0x8000f3 <first_operand>
     324:	10 92 f2 00 	sts	0x00F2, r1	; 0x8000f2 <second_operand+0x1>
     328:	10 92 f1 00 	sts	0x00F1, r1	; 0x8000f1 <second_operand>
     32c:	10 92 f0 00 	sts	0x00F0, r1	; 0x8000f0 <operator>
     330:	10 92 e0 00 	sts	0x00E0, r1	; 0x8000e0 <operation>
     334:	10 92 d0 00 	sts	0x00D0, r1	; 0x8000d0 <answer>
     338:	10 92 cf 00 	sts	0x00CF, r1	; 0x8000cf <operation_idx>
     33c:	10 92 ca 00 	sts	0x00CA, r1	; 0x8000ca <__data_end>
     340:	80 e6       	ldi	r24, 0x60	; 96
     342:	90 e0       	ldi	r25, 0x00	; 0
     344:	0e 94 ff 05 	call	0xbfe	; 0xbfe <LCD_WriteString>
     348:	2f ef       	ldi	r18, 0xFF	; 255
     34a:	80 e7       	ldi	r24, 0x70	; 112
     34c:	92 e0       	ldi	r25, 0x02	; 2
     34e:	21 50       	subi	r18, 0x01	; 1
     350:	80 40       	sbci	r24, 0x00	; 0
     352:	90 40       	sbci	r25, 0x00	; 0
     354:	e1 f7       	brne	.-8      	; 0x34e <CALCULATOR_Init+0x46>
     356:	00 c0       	rjmp	.+0      	; 0x358 <CALCULATOR_Init+0x50>
     358:	00 00       	nop
     35a:	8e e2       	ldi	r24, 0x2E	; 46
     35c:	0e 94 fb 05 	call	0xbf6	; 0xbf6 <LCD_WriteChar>
     360:	2f ef       	ldi	r18, 0xFF	; 255
     362:	80 e7       	ldi	r24, 0x70	; 112
     364:	92 e0       	ldi	r25, 0x02	; 2
     366:	21 50       	subi	r18, 0x01	; 1
     368:	80 40       	sbci	r24, 0x00	; 0
     36a:	90 40       	sbci	r25, 0x00	; 0
     36c:	e1 f7       	brne	.-8      	; 0x366 <CALCULATOR_Init+0x5e>
     36e:	00 c0       	rjmp	.+0      	; 0x370 <CALCULATOR_Init+0x68>
     370:	00 00       	nop
     372:	8e e2       	ldi	r24, 0x2E	; 46
     374:	0e 94 fb 05 	call	0xbf6	; 0xbf6 <LCD_WriteChar>
     378:	2f ef       	ldi	r18, 0xFF	; 255
     37a:	80 e7       	ldi	r24, 0x70	; 112
     37c:	92 e0       	ldi	r25, 0x02	; 2
     37e:	21 50       	subi	r18, 0x01	; 1
     380:	80 40       	sbci	r24, 0x00	; 0
     382:	90 40       	sbci	r25, 0x00	; 0
     384:	e1 f7       	brne	.-8      	; 0x37e <CALCULATOR_Init+0x76>
     386:	00 c0       	rjmp	.+0      	; 0x388 <CALCULATOR_Init+0x80>
     388:	00 00       	nop
     38a:	0e 94 ed 04 	call	0x9da	; 0x9da <LCD_Clear>
     38e:	08 95       	ret

00000390 <CALCULATOR_Runnable>:
     390:	8f 92       	push	r8
     392:	9f 92       	push	r9
     394:	af 92       	push	r10
     396:	bf 92       	push	r11
     398:	cf 92       	push	r12
     39a:	df 92       	push	r13
     39c:	ef 92       	push	r14
     39e:	ff 92       	push	r15
     3a0:	0f 93       	push	r16
     3a2:	1f 93       	push	r17
     3a4:	cf 93       	push	r28
     3a6:	df 93       	push	r29
     3a8:	cd b7       	in	r28, 0x3d	; 61
     3aa:	de b7       	in	r29, 0x3e	; 62
     3ac:	2b 97       	sbiw	r28, 0x0b	; 11
     3ae:	0f b6       	in	r0, 0x3f	; 63
     3b0:	f8 94       	cli
     3b2:	de bf       	out	0x3e, r29	; 62
     3b4:	0f be       	out	0x3f, r0	; 63
     3b6:	cd bf       	out	0x3d, r28	; 61
     3b8:	0e 94 9f 06 	call	0xd3e	; 0xd3e <KEYPAD_GetEntry>
     3bc:	08 2f       	mov	r16, r24
     3be:	84 35       	cpi	r24, 0x54	; 84
     3c0:	09 f4       	brne	.+2      	; 0x3c4 <CALCULATOR_Runnable+0x34>
     3c2:	8e c2       	rjmp	.+1308   	; 0x8e0 <__stack+0x81>
     3c4:	8d 33       	cpi	r24, 0x3D	; 61
     3c6:	09 f0       	breq	.+2      	; 0x3ca <CALCULATOR_Runnable+0x3a>
     3c8:	f5 c1       	rjmp	.+1002   	; 0x7b4 <__EEPROM_REGION_LENGTH__+0x3b4>
     3ca:	80 91 ca 00 	lds	r24, 0x00CA	; 0x8000ca <__data_end>
     3ce:	82 30       	cpi	r24, 0x02	; 2
     3d0:	09 f0       	breq	.+2      	; 0x3d4 <CALCULATOR_Runnable+0x44>
     3d2:	58 c0       	rjmp	.+176    	; 0x484 <__EEPROM_REGION_LENGTH__+0x84>
     3d4:	80 91 ce 00 	lds	r24, 0x00CE	; 0x8000ce <pre_key>
     3d8:	8d 33       	cpi	r24, 0x3D	; 61
     3da:	09 f0       	breq	.+2      	; 0x3de <CALCULATOR_Runnable+0x4e>
     3dc:	53 c0       	rjmp	.+166    	; 0x484 <__EEPROM_REGION_LENGTH__+0x84>
     3de:	1a 82       	std	Y+2, r1	; 0x02
     3e0:	19 82       	std	Y+1, r1	; 0x01
     3e2:	fe 01       	movw	r30, r28
     3e4:	33 96       	adiw	r30, 0x03	; 3
     3e6:	84 e0       	ldi	r24, 0x04	; 4
     3e8:	df 01       	movw	r26, r30
     3ea:	1d 92       	st	X+, r1
     3ec:	8a 95       	dec	r24
     3ee:	e9 f7       	brne	.-6      	; 0x3ea <CALCULATOR_Runnable+0x5a>
     3f0:	60 91 cb 00 	lds	r22, 0x00CB	; 0x8000cb <pre_second_operand>
     3f4:	70 91 cc 00 	lds	r23, 0x00CC	; 0x8000cc <pre_second_operand+0x1>
     3f8:	07 2e       	mov	r0, r23
     3fa:	00 0c       	add	r0, r0
     3fc:	88 0b       	sbc	r24, r24
     3fe:	99 0b       	sbc	r25, r25
     400:	ae 01       	movw	r20, r28
     402:	4f 5f       	subi	r20, 0xFF	; 255
     404:	5f 4f       	sbci	r21, 0xFF	; 255
     406:	0e 94 f5 00 	call	0x1ea	; 0x1ea <int_to_string>
     40a:	80 ee       	ldi	r24, 0xE0	; 224
     40c:	90 e0       	ldi	r25, 0x00	; 0
     40e:	0e 94 5c 00 	call	0xb8	; 0xb8 <string_len>
     412:	21 e0       	ldi	r18, 0x01	; 1
     414:	28 0f       	add	r18, r24
     416:	20 93 cf 00 	sts	0x00CF, r18	; 0x8000cf <operation_idx>
     41a:	e8 2f       	mov	r30, r24
     41c:	f0 e0       	ldi	r31, 0x00	; 0
     41e:	e0 52       	subi	r30, 0x20	; 32
     420:	ff 4f       	sbci	r31, 0xFF	; 255
     422:	80 91 cd 00 	lds	r24, 0x00CD	; 0x8000cd <pre_operator>
     426:	80 83       	st	Z, r24
     428:	89 81       	ldd	r24, Y+1	; 0x01
     42a:	88 23       	and	r24, r24
     42c:	a9 f0       	breq	.+42     	; 0x458 <__EEPROM_REGION_LENGTH__+0x58>
     42e:	e2 2f       	mov	r30, r18
     430:	91 e0       	ldi	r25, 0x01	; 1
     432:	9e 0f       	add	r25, r30
     434:	f0 e0       	ldi	r31, 0x00	; 0
     436:	e0 52       	subi	r30, 0x20	; 32
     438:	ff 4f       	sbci	r31, 0xFF	; 255
     43a:	80 83       	st	Z, r24
     43c:	89 2f       	mov	r24, r25
     43e:	82 1b       	sub	r24, r18
     440:	e1 e0       	ldi	r30, 0x01	; 1
     442:	f0 e0       	ldi	r31, 0x00	; 0
     444:	ec 0f       	add	r30, r28
     446:	fd 1f       	adc	r31, r29
     448:	e8 0f       	add	r30, r24
     44a:	f1 1d       	adc	r31, r1
     44c:	80 81       	ld	r24, Z
     44e:	e9 2f       	mov	r30, r25
     450:	81 11       	cpse	r24, r1
     452:	ee cf       	rjmp	.-36     	; 0x430 <__EEPROM_REGION_LENGTH__+0x30>
     454:	90 93 cf 00 	sts	0x00CF, r25	; 0x8000cf <operation_idx>
     458:	e0 91 cf 00 	lds	r30, 0x00CF	; 0x8000cf <operation_idx>
     45c:	f0 e0       	ldi	r31, 0x00	; 0
     45e:	e0 52       	subi	r30, 0x20	; 32
     460:	ff 4f       	sbci	r31, 0xFF	; 255
     462:	10 82       	st	Z, r1
     464:	10 e0       	ldi	r17, 0x00	; 0
     466:	61 2f       	mov	r22, r17
     468:	80 e0       	ldi	r24, 0x00	; 0
     46a:	0e 94 17 06 	call	0xc2e	; 0xc2e <LCD_ClearLocation>
     46e:	1f 5f       	subi	r17, 0xFF	; 255
     470:	10 31       	cpi	r17, 0x10	; 16
     472:	c9 f7       	brne	.-14     	; 0x466 <__EEPROM_REGION_LENGTH__+0x66>
     474:	60 e0       	ldi	r22, 0x00	; 0
     476:	80 e0       	ldi	r24, 0x00	; 0
     478:	0e 94 fb 04 	call	0x9f6	; 0x9f6 <LCD_SetCursor>
     47c:	80 ee       	ldi	r24, 0xE0	; 224
     47e:	90 e0       	ldi	r25, 0x00	; 0
     480:	0e 94 ff 05 	call	0xbfe	; 0xbfe <LCD_WriteString>
     484:	e0 91 cf 00 	lds	r30, 0x00CF	; 0x8000cf <operation_idx>
     488:	f0 e0       	ldi	r31, 0x00	; 0
     48a:	e0 52       	subi	r30, 0x20	; 32
     48c:	ff 4f       	sbci	r31, 0xFF	; 255
     48e:	10 82       	st	Z, r1
     490:	10 e0       	ldi	r17, 0x00	; 0
     492:	61 2f       	mov	r22, r17
     494:	81 e0       	ldi	r24, 0x01	; 1
     496:	0e 94 17 06 	call	0xc2e	; 0xc2e <LCD_ClearLocation>
     49a:	1f 5f       	subi	r17, 0xFF	; 255
     49c:	10 31       	cpi	r17, 0x10	; 16
     49e:	c9 f7       	brne	.-14     	; 0x492 <__EEPROM_REGION_LENGTH__+0x92>
     4a0:	80 91 e0 00 	lds	r24, 0x00E0	; 0x8000e0 <operation>
     4a4:	88 23       	and	r24, r24
     4a6:	59 f1       	breq	.+86     	; 0x4fe <__EEPROM_REGION_LENGTH__+0xfe>
     4a8:	60 91 f0 00 	lds	r22, 0x00F0	; 0x8000f0 <operator>
     4ac:	20 e0       	ldi	r18, 0x00	; 0
     4ae:	30 e0       	ldi	r19, 0x00	; 0
     4b0:	10 e0       	ldi	r17, 0x00	; 0
     4b2:	40 e0       	ldi	r20, 0x00	; 0
     4b4:	71 e0       	ldi	r23, 0x01	; 1
     4b6:	10 c0       	rjmp	.+32     	; 0x4d8 <__EEPROM_REGION_LENGTH__+0xd8>
     4b8:	88 23       	and	r24, r24
     4ba:	69 f0       	breq	.+26     	; 0x4d6 <__EEPROM_REGION_LENGTH__+0xd6>
     4bc:	9b 32       	cpi	r25, 0x2B	; 43
     4be:	31 f0       	breq	.+12     	; 0x4cc <__EEPROM_REGION_LENGTH__+0xcc>
     4c0:	9d 32       	cpi	r25, 0x2D	; 45
     4c2:	21 f0       	breq	.+8      	; 0x4cc <__EEPROM_REGION_LENGTH__+0xcc>
     4c4:	5e ef       	ldi	r21, 0xFE	; 254
     4c6:	59 0f       	add	r21, r25
     4c8:	52 30       	cpi	r21, 0x02	; 2
     4ca:	28 f4       	brcc	.+10     	; 0x4d6 <__EEPROM_REGION_LENGTH__+0xd6>
     4cc:	12 e0       	ldi	r17, 0x02	; 2
     4ce:	12 0f       	add	r17, r18
     4d0:	69 2f       	mov	r22, r25
     4d2:	42 2f       	mov	r20, r18
     4d4:	37 2f       	mov	r19, r23
     4d6:	28 2f       	mov	r18, r24
     4d8:	81 e0       	ldi	r24, 0x01	; 1
     4da:	82 0f       	add	r24, r18
     4dc:	e8 2f       	mov	r30, r24
     4de:	f0 e0       	ldi	r31, 0x00	; 0
     4e0:	e0 52       	subi	r30, 0x20	; 32
     4e2:	ff 4f       	sbci	r31, 0xFF	; 255
     4e4:	90 81       	ld	r25, Z
     4e6:	99 23       	and	r25, r25
     4e8:	29 f0       	breq	.+10     	; 0x4f4 <__EEPROM_REGION_LENGTH__+0xf4>
     4ea:	33 23       	and	r19, r19
     4ec:	29 f3       	breq	.-54     	; 0x4b8 <__EEPROM_REGION_LENGTH__+0xb8>
     4ee:	60 93 f0 00 	sts	0x00F0, r22	; 0x8000f0 <operator>
     4f2:	0a c0       	rjmp	.+20     	; 0x508 <__EEPROM_REGION_LENGTH__+0x108>
     4f4:	60 93 f0 00 	sts	0x00F0, r22	; 0x8000f0 <operator>
     4f8:	33 23       	and	r19, r19
     4fa:	19 f0       	breq	.+6      	; 0x502 <__EEPROM_REGION_LENGTH__+0x102>
     4fc:	05 c0       	rjmp	.+10     	; 0x508 <__EEPROM_REGION_LENGTH__+0x108>
     4fe:	10 e0       	ldi	r17, 0x00	; 0
     500:	40 e0       	ldi	r20, 0x00	; 0
     502:	8b e2       	ldi	r24, 0x2B	; 43
     504:	80 93 f0 00 	sts	0x00F0, r24	; 0x8000f0 <operator>
     508:	60 e0       	ldi	r22, 0x00	; 0
     50a:	80 ee       	ldi	r24, 0xE0	; 224
     50c:	90 e0       	ldi	r25, 0x00	; 0
     50e:	0e 94 6b 00 	call	0xd6	; 0xd6 <string_to_int>
     512:	6c 01       	movw	r12, r24
     514:	90 93 f4 00 	sts	0x00F4, r25	; 0x8000f4 <first_operand+0x1>
     518:	80 93 f3 00 	sts	0x00F3, r24	; 0x8000f3 <first_operand>
     51c:	80 ee       	ldi	r24, 0xE0	; 224
     51e:	90 e0       	ldi	r25, 0x00	; 0
     520:	0e 94 5c 00 	call	0xb8	; 0xb8 <string_len>
     524:	4f ef       	ldi	r20, 0xFF	; 255
     526:	48 0f       	add	r20, r24
     528:	61 2f       	mov	r22, r17
     52a:	80 ee       	ldi	r24, 0xE0	; 224
     52c:	90 e0       	ldi	r25, 0x00	; 0
     52e:	0e 94 6b 00 	call	0xd6	; 0xd6 <string_to_int>
     532:	7c 01       	movw	r14, r24
     534:	90 93 f2 00 	sts	0x00F2, r25	; 0x8000f2 <second_operand+0x1>
     538:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <second_operand>
     53c:	90 93 cc 00 	sts	0x00CC, r25	; 0x8000cc <pre_second_operand+0x1>
     540:	80 93 cb 00 	sts	0x00CB, r24	; 0x8000cb <pre_second_operand>
     544:	80 91 f0 00 	lds	r24, 0x00F0	; 0x8000f0 <operator>
     548:	80 93 cd 00 	sts	0x00CD, r24	; 0x8000cd <pre_operator>
     54c:	83 30       	cpi	r24, 0x03	; 3
     54e:	09 f4       	brne	.+2      	; 0x552 <__EEPROM_REGION_LENGTH__+0x152>
     550:	86 c0       	rjmp	.+268    	; 0x65e <__EEPROM_REGION_LENGTH__+0x25e>
     552:	20 f4       	brcc	.+8      	; 0x55c <__EEPROM_REGION_LENGTH__+0x15c>
     554:	82 30       	cpi	r24, 0x02	; 2
     556:	09 f4       	brne	.+2      	; 0x55a <__EEPROM_REGION_LENGTH__+0x15a>
     558:	60 c0       	rjmp	.+192    	; 0x61a <__EEPROM_REGION_LENGTH__+0x21a>
     55a:	1b c1       	rjmp	.+566    	; 0x792 <__EEPROM_REGION_LENGTH__+0x392>
     55c:	8b 32       	cpi	r24, 0x2B	; 43
     55e:	19 f0       	breq	.+6      	; 0x566 <__EEPROM_REGION_LENGTH__+0x166>
     560:	8d 32       	cpi	r24, 0x2D	; 45
     562:	71 f1       	breq	.+92     	; 0x5c0 <__EEPROM_REGION_LENGTH__+0x1c0>
     564:	16 c1       	rjmp	.+556    	; 0x792 <__EEPROM_REGION_LENGTH__+0x392>
     566:	46 01       	movw	r8, r12
     568:	0d 2c       	mov	r0, r13
     56a:	00 0c       	add	r0, r0
     56c:	aa 08       	sbc	r10, r10
     56e:	bb 08       	sbc	r11, r11
     570:	c7 01       	movw	r24, r14
     572:	0f 2c       	mov	r0, r15
     574:	00 0c       	add	r0, r0
     576:	aa 0b       	sbc	r26, r26
     578:	bb 0b       	sbc	r27, r27
     57a:	88 0e       	add	r8, r24
     57c:	99 1e       	adc	r9, r25
     57e:	aa 1e       	adc	r10, r26
     580:	bb 1e       	adc	r11, r27
     582:	40 ed       	ldi	r20, 0xD0	; 208
     584:	50 e0       	ldi	r21, 0x00	; 0
     586:	c5 01       	movw	r24, r10
     588:	b4 01       	movw	r22, r8
     58a:	0e 94 f5 00 	call	0x1ea	; 0x1ea <int_to_string>
     58e:	ce 0c       	add	r12, r14
     590:	df 1c       	adc	r13, r15
     592:	0d 2c       	mov	r0, r13
     594:	00 0c       	add	r0, r0
     596:	ee 08       	sbc	r14, r14
     598:	ff 08       	sbc	r15, r15
     59a:	8c 14       	cp	r8, r12
     59c:	9d 04       	cpc	r9, r13
     59e:	ae 04       	cpc	r10, r14
     5a0:	bf 04       	cpc	r11, r15
     5a2:	39 f4       	brne	.+14     	; 0x5b2 <__EEPROM_REGION_LENGTH__+0x1b2>
     5a4:	60 ed       	ldi	r22, 0xD0	; 208
     5a6:	70 e0       	ldi	r23, 0x00	; 0
     5a8:	80 ee       	ldi	r24, 0xE0	; 224
     5aa:	90 e0       	ldi	r25, 0x00	; 0
     5ac:	0e 94 b2 00 	call	0x164	; 0x164 <string_copy>
     5b0:	f0 c0       	rjmp	.+480    	; 0x792 <__EEPROM_REGION_LENGTH__+0x392>
     5b2:	6c e6       	ldi	r22, 0x6C	; 108
     5b4:	70 e0       	ldi	r23, 0x00	; 0
     5b6:	80 ee       	ldi	r24, 0xE0	; 224
     5b8:	90 e0       	ldi	r25, 0x00	; 0
     5ba:	0e 94 b2 00 	call	0x164	; 0x164 <string_copy>
     5be:	e9 c0       	rjmp	.+466    	; 0x792 <__EEPROM_REGION_LENGTH__+0x392>
     5c0:	46 01       	movw	r8, r12
     5c2:	0d 2c       	mov	r0, r13
     5c4:	00 0c       	add	r0, r0
     5c6:	aa 08       	sbc	r10, r10
     5c8:	bb 08       	sbc	r11, r11
     5ca:	c7 01       	movw	r24, r14
     5cc:	0f 2c       	mov	r0, r15
     5ce:	00 0c       	add	r0, r0
     5d0:	aa 0b       	sbc	r26, r26
     5d2:	bb 0b       	sbc	r27, r27
     5d4:	88 1a       	sub	r8, r24
     5d6:	99 0a       	sbc	r9, r25
     5d8:	aa 0a       	sbc	r10, r26
     5da:	bb 0a       	sbc	r11, r27
     5dc:	40 ed       	ldi	r20, 0xD0	; 208
     5de:	50 e0       	ldi	r21, 0x00	; 0
     5e0:	c5 01       	movw	r24, r10
     5e2:	b4 01       	movw	r22, r8
     5e4:	0e 94 f5 00 	call	0x1ea	; 0x1ea <int_to_string>
     5e8:	ce 18       	sub	r12, r14
     5ea:	df 08       	sbc	r13, r15
     5ec:	0d 2c       	mov	r0, r13
     5ee:	00 0c       	add	r0, r0
     5f0:	ee 08       	sbc	r14, r14
     5f2:	ff 08       	sbc	r15, r15
     5f4:	8c 14       	cp	r8, r12
     5f6:	9d 04       	cpc	r9, r13
     5f8:	ae 04       	cpc	r10, r14
     5fa:	bf 04       	cpc	r11, r15
     5fc:	39 f4       	brne	.+14     	; 0x60c <__EEPROM_REGION_LENGTH__+0x20c>
     5fe:	60 ed       	ldi	r22, 0xD0	; 208
     600:	70 e0       	ldi	r23, 0x00	; 0
     602:	80 ee       	ldi	r24, 0xE0	; 224
     604:	90 e0       	ldi	r25, 0x00	; 0
     606:	0e 94 b2 00 	call	0x164	; 0x164 <string_copy>
     60a:	c3 c0       	rjmp	.+390    	; 0x792 <__EEPROM_REGION_LENGTH__+0x392>
     60c:	6c e6       	ldi	r22, 0x6C	; 108
     60e:	70 e0       	ldi	r23, 0x00	; 0
     610:	80 ee       	ldi	r24, 0xE0	; 224
     612:	90 e0       	ldi	r25, 0x00	; 0
     614:	0e 94 b2 00 	call	0x164	; 0x164 <string_copy>
     618:	bc c0       	rjmp	.+376    	; 0x792 <__EEPROM_REGION_LENGTH__+0x392>
     61a:	96 01       	movw	r18, r12
     61c:	d7 01       	movw	r26, r14
     61e:	0e 94 e5 0a 	call	0x15ca	; 0x15ca <__mulhisi3>
     622:	6b 01       	movw	r12, r22
     624:	7c 01       	movw	r14, r24
     626:	40 ed       	ldi	r20, 0xD0	; 208
     628:	50 e0       	ldi	r21, 0x00	; 0
     62a:	0e 94 f5 00 	call	0x1ea	; 0x1ea <int_to_string>
     62e:	c6 01       	movw	r24, r12
     630:	0d 2c       	mov	r0, r13
     632:	00 0c       	add	r0, r0
     634:	aa 0b       	sbc	r26, r26
     636:	bb 0b       	sbc	r27, r27
     638:	c8 16       	cp	r12, r24
     63a:	d9 06       	cpc	r13, r25
     63c:	ea 06       	cpc	r14, r26
     63e:	fb 06       	cpc	r15, r27
     640:	39 f4       	brne	.+14     	; 0x650 <__EEPROM_REGION_LENGTH__+0x250>
     642:	60 ed       	ldi	r22, 0xD0	; 208
     644:	70 e0       	ldi	r23, 0x00	; 0
     646:	80 ee       	ldi	r24, 0xE0	; 224
     648:	90 e0       	ldi	r25, 0x00	; 0
     64a:	0e 94 b2 00 	call	0x164	; 0x164 <string_copy>
     64e:	a1 c0       	rjmp	.+322    	; 0x792 <__EEPROM_REGION_LENGTH__+0x392>
     650:	6c e6       	ldi	r22, 0x6C	; 108
     652:	70 e0       	ldi	r23, 0x00	; 0
     654:	80 ee       	ldi	r24, 0xE0	; 224
     656:	90 e0       	ldi	r25, 0x00	; 0
     658:	0e 94 b2 00 	call	0x164	; 0x164 <string_copy>
     65c:	9a c0       	rjmp	.+308    	; 0x792 <__EEPROM_REGION_LENGTH__+0x392>
     65e:	e1 14       	cp	r14, r1
     660:	f1 04       	cpc	r15, r1
     662:	69 f4       	brne	.+26     	; 0x67e <__EEPROM_REGION_LENGTH__+0x27e>
     664:	6e e6       	ldi	r22, 0x6E	; 110
     666:	70 e0       	ldi	r23, 0x00	; 0
     668:	80 ed       	ldi	r24, 0xD0	; 208
     66a:	90 e0       	ldi	r25, 0x00	; 0
     66c:	0e 94 b2 00 	call	0x164	; 0x164 <string_copy>
     670:	6c e6       	ldi	r22, 0x6C	; 108
     672:	70 e0       	ldi	r23, 0x00	; 0
     674:	80 ee       	ldi	r24, 0xE0	; 224
     676:	90 e0       	ldi	r25, 0x00	; 0
     678:	0e 94 b2 00 	call	0x164	; 0x164 <string_copy>
     67c:	8a c0       	rjmp	.+276    	; 0x792 <__EEPROM_REGION_LENGTH__+0x392>
     67e:	b6 01       	movw	r22, r12
     680:	dd 0c       	add	r13, r13
     682:	88 0b       	sbc	r24, r24
     684:	99 0b       	sbc	r25, r25
     686:	0e 94 cd 09 	call	0x139a	; 0x139a <__floatsisf>
     68a:	4b 01       	movw	r8, r22
     68c:	5c 01       	movw	r10, r24
     68e:	b7 01       	movw	r22, r14
     690:	ff 0c       	add	r15, r15
     692:	88 0b       	sbc	r24, r24
     694:	99 0b       	sbc	r25, r25
     696:	0e 94 cd 09 	call	0x139a	; 0x139a <__floatsisf>
     69a:	9b 01       	movw	r18, r22
     69c:	ac 01       	movw	r20, r24
     69e:	c5 01       	movw	r24, r10
     6a0:	b4 01       	movw	r22, r8
     6a2:	0e 94 23 09 	call	0x1246	; 0x1246 <__divsf3>
     6a6:	6b 01       	movw	r12, r22
     6a8:	7c 01       	movw	r14, r24
     6aa:	0e 94 95 09 	call	0x132a	; 0x132a <__fixsfsi>
     6ae:	4b 01       	movw	r8, r22
     6b0:	5c 01       	movw	r10, r24
     6b2:	18 86       	std	Y+8, r1	; 0x08
     6b4:	1f 82       	std	Y+7, r1	; 0x07
     6b6:	fe 01       	movw	r30, r28
     6b8:	39 96       	adiw	r30, 0x09	; 9
     6ba:	83 e0       	ldi	r24, 0x03	; 3
     6bc:	df 01       	movw	r26, r30
     6be:	1d 92       	st	X+, r1
     6c0:	8a 95       	dec	r24
     6c2:	e9 f7       	brne	.-6      	; 0x6be <__EEPROM_REGION_LENGTH__+0x2be>
     6c4:	ae 01       	movw	r20, r28
     6c6:	49 5f       	subi	r20, 0xF9	; 249
     6c8:	5f 4f       	sbci	r21, 0xFF	; 255
     6ca:	c5 01       	movw	r24, r10
     6cc:	b4 01       	movw	r22, r8
     6ce:	0e 94 f5 00 	call	0x1ea	; 0x1ea <int_to_string>
     6d2:	be 01       	movw	r22, r28
     6d4:	69 5f       	subi	r22, 0xF9	; 249
     6d6:	7f 4f       	sbci	r23, 0xFF	; 255
     6d8:	80 ed       	ldi	r24, 0xD0	; 208
     6da:	90 e0       	ldi	r25, 0x00	; 0
     6dc:	0e 94 b2 00 	call	0x164	; 0x164 <string_copy>
     6e0:	c5 01       	movw	r24, r10
     6e2:	b4 01       	movw	r22, r8
     6e4:	0e 94 cd 09 	call	0x139a	; 0x139a <__floatsisf>
     6e8:	9b 01       	movw	r18, r22
     6ea:	ac 01       	movw	r20, r24
     6ec:	c7 01       	movw	r24, r14
     6ee:	b6 01       	movw	r22, r12
     6f0:	0e 94 b6 08 	call	0x116c	; 0x116c <__subsf3>
     6f4:	20 e0       	ldi	r18, 0x00	; 0
     6f6:	30 e5       	ldi	r19, 0x50	; 80
     6f8:	43 ec       	ldi	r20, 0xC3	; 195
     6fa:	57 e4       	ldi	r21, 0x47	; 71
     6fc:	0e 94 59 0a 	call	0x14b2	; 0x14b2 <__mulsf3>
     700:	0e 94 95 09 	call	0x132a	; 0x132a <__fixsfsi>
     704:	61 15       	cp	r22, r1
     706:	71 05       	cpc	r23, r1
     708:	81 05       	cpc	r24, r1
     70a:	91 05       	cpc	r25, r1
     70c:	d9 f0       	breq	.+54     	; 0x744 <__EEPROM_REGION_LENGTH__+0x344>
     70e:	1a 82       	std	Y+2, r1	; 0x02
     710:	19 82       	std	Y+1, r1	; 0x01
     712:	fe 01       	movw	r30, r28
     714:	33 96       	adiw	r30, 0x03	; 3
     716:	24 e0       	ldi	r18, 0x04	; 4
     718:	df 01       	movw	r26, r30
     71a:	1d 92       	st	X+, r1
     71c:	2a 95       	dec	r18
     71e:	e9 f7       	brne	.-6      	; 0x71a <__EEPROM_REGION_LENGTH__+0x31a>
     720:	ae 01       	movw	r20, r28
     722:	4f 5f       	subi	r20, 0xFF	; 255
     724:	5f 4f       	sbci	r21, 0xFF	; 255
     726:	0e 94 f5 00 	call	0x1ea	; 0x1ea <int_to_string>
     72a:	6a e6       	ldi	r22, 0x6A	; 106
     72c:	70 e0       	ldi	r23, 0x00	; 0
     72e:	80 ed       	ldi	r24, 0xD0	; 208
     730:	90 e0       	ldi	r25, 0x00	; 0
     732:	0e 94 cf 00 	call	0x19e	; 0x19e <string_concatenate>
     736:	be 01       	movw	r22, r28
     738:	6f 5f       	subi	r22, 0xFF	; 255
     73a:	7f 4f       	sbci	r23, 0xFF	; 255
     73c:	80 ed       	ldi	r24, 0xD0	; 208
     73e:	90 e0       	ldi	r25, 0x00	; 0
     740:	0e 94 cf 00 	call	0x19e	; 0x19e <string_concatenate>
     744:	20 e0       	ldi	r18, 0x00	; 0
     746:	30 e0       	ldi	r19, 0x00	; 0
     748:	40 e0       	ldi	r20, 0x00	; 0
     74a:	5f e3       	ldi	r21, 0x3F	; 63
     74c:	c7 01       	movw	r24, r14
     74e:	b6 01       	movw	r22, r12
     750:	0e 94 b7 08 	call	0x116e	; 0x116e <__addsf3>
     754:	0e 94 95 09 	call	0x132a	; 0x132a <__fixsfsi>
     758:	70 93 f4 00 	sts	0x00F4, r23	; 0x8000f4 <first_operand+0x1>
     75c:	60 93 f3 00 	sts	0x00F3, r22	; 0x8000f3 <first_operand>
     760:	1a 82       	std	Y+2, r1	; 0x02
     762:	19 82       	std	Y+1, r1	; 0x01
     764:	fe 01       	movw	r30, r28
     766:	33 96       	adiw	r30, 0x03	; 3
     768:	24 e0       	ldi	r18, 0x04	; 4
     76a:	df 01       	movw	r26, r30
     76c:	1d 92       	st	X+, r1
     76e:	2a 95       	dec	r18
     770:	e9 f7       	brne	.-6      	; 0x76c <__EEPROM_REGION_LENGTH__+0x36c>
     772:	07 2e       	mov	r0, r23
     774:	00 0c       	add	r0, r0
     776:	88 0b       	sbc	r24, r24
     778:	99 0b       	sbc	r25, r25
     77a:	ae 01       	movw	r20, r28
     77c:	4f 5f       	subi	r20, 0xFF	; 255
     77e:	5f 4f       	sbci	r21, 0xFF	; 255
     780:	0e 94 f5 00 	call	0x1ea	; 0x1ea <int_to_string>
     784:	be 01       	movw	r22, r28
     786:	6f 5f       	subi	r22, 0xFF	; 255
     788:	7f 4f       	sbci	r23, 0xFF	; 255
     78a:	80 ee       	ldi	r24, 0xE0	; 224
     78c:	90 e0       	ldi	r25, 0x00	; 0
     78e:	0e 94 b2 00 	call	0x164	; 0x164 <string_copy>
     792:	80 ed       	ldi	r24, 0xD0	; 208
     794:	90 e0       	ldi	r25, 0x00	; 0
     796:	0e 94 5c 00 	call	0xb8	; 0xb8 <string_len>
     79a:	60 e1       	ldi	r22, 0x10	; 16
     79c:	68 1b       	sub	r22, r24
     79e:	81 e0       	ldi	r24, 0x01	; 1
     7a0:	0e 94 fb 04 	call	0x9f6	; 0x9f6 <LCD_SetCursor>
     7a4:	80 ed       	ldi	r24, 0xD0	; 208
     7a6:	90 e0       	ldi	r25, 0x00	; 0
     7a8:	0e 94 ff 05 	call	0xbfe	; 0xbfe <LCD_WriteString>
     7ac:	82 e0       	ldi	r24, 0x02	; 2
     7ae:	80 93 ca 00 	sts	0x00CA, r24	; 0x8000ca <__data_end>
     7b2:	94 c0       	rjmp	.+296    	; 0x8dc <__stack+0x7d>
     7b4:	83 34       	cpi	r24, 0x43	; 67
     7b6:	39 f4       	brne	.+14     	; 0x7c6 <__EEPROM_REGION_LENGTH__+0x3c6>
     7b8:	0e 94 ed 04 	call	0x9da	; 0x9da <LCD_Clear>
     7bc:	0e 94 49 00 	call	0x92	; 0x92 <calculator_reset>
     7c0:	10 92 ca 00 	sts	0x00CA, r1	; 0x8000ca <__data_end>
     7c4:	8b c0       	rjmp	.+278    	; 0x8dc <__stack+0x7d>
     7c6:	91 e0       	ldi	r25, 0x01	; 1
     7c8:	80 ed       	ldi	r24, 0xD0	; 208
     7ca:	80 0f       	add	r24, r16
     7cc:	8a 30       	cpi	r24, 0x0A	; 10
     7ce:	08 f0       	brcs	.+2      	; 0x7d2 <__EEPROM_REGION_LENGTH__+0x3d2>
     7d0:	90 e0       	ldi	r25, 0x00	; 0
     7d2:	99 23       	and	r25, r25
     7d4:	09 f4       	brne	.+2      	; 0x7d8 <__EEPROM_REGION_LENGTH__+0x3d8>
     7d6:	3f c0       	rjmp	.+126    	; 0x856 <__DATA_REGION_LENGTH__+0x56>
     7d8:	80 91 ca 00 	lds	r24, 0x00CA	; 0x8000ca <__data_end>
     7dc:	81 11       	cpse	r24, r1
     7de:	0e c0       	rjmp	.+28     	; 0x7fc <__EEPROM_REGION_LENGTH__+0x3fc>
     7e0:	e0 91 cf 00 	lds	r30, 0x00CF	; 0x8000cf <operation_idx>
     7e4:	81 e0       	ldi	r24, 0x01	; 1
     7e6:	8e 0f       	add	r24, r30
     7e8:	80 93 cf 00 	sts	0x00CF, r24	; 0x8000cf <operation_idx>
     7ec:	f0 e0       	ldi	r31, 0x00	; 0
     7ee:	e0 52       	subi	r30, 0x20	; 32
     7f0:	ff 4f       	sbci	r31, 0xFF	; 255
     7f2:	00 83       	st	Z, r16
     7f4:	81 e0       	ldi	r24, 0x01	; 1
     7f6:	80 93 ca 00 	sts	0x00CA, r24	; 0x8000ca <__data_end>
     7fa:	29 c0       	rjmp	.+82     	; 0x84e <__DATA_REGION_LENGTH__+0x4e>
     7fc:	81 30       	cpi	r24, 0x01	; 1
     7fe:	51 f4       	brne	.+20     	; 0x814 <__DATA_REGION_LENGTH__+0x14>
     800:	e0 91 cf 00 	lds	r30, 0x00CF	; 0x8000cf <operation_idx>
     804:	8e 0f       	add	r24, r30
     806:	80 93 cf 00 	sts	0x00CF, r24	; 0x8000cf <operation_idx>
     80a:	f0 e0       	ldi	r31, 0x00	; 0
     80c:	e0 52       	subi	r30, 0x20	; 32
     80e:	ff 4f       	sbci	r31, 0xFF	; 255
     810:	00 83       	st	Z, r16
     812:	1d c0       	rjmp	.+58     	; 0x84e <__DATA_REGION_LENGTH__+0x4e>
     814:	82 30       	cpi	r24, 0x02	; 2
     816:	d9 f4       	brne	.+54     	; 0x84e <__DATA_REGION_LENGTH__+0x4e>
     818:	0e 94 49 00 	call	0x92	; 0x92 <calculator_reset>
     81c:	10 e0       	ldi	r17, 0x00	; 0
     81e:	61 2f       	mov	r22, r17
     820:	80 e0       	ldi	r24, 0x00	; 0
     822:	0e 94 17 06 	call	0xc2e	; 0xc2e <LCD_ClearLocation>
     826:	1f 5f       	subi	r17, 0xFF	; 255
     828:	10 31       	cpi	r17, 0x10	; 16
     82a:	c9 f7       	brne	.-14     	; 0x81e <__DATA_REGION_LENGTH__+0x1e>
     82c:	60 e0       	ldi	r22, 0x00	; 0
     82e:	80 e0       	ldi	r24, 0x00	; 0
     830:	0e 94 fb 04 	call	0x9f6	; 0x9f6 <LCD_SetCursor>
     834:	e0 91 cf 00 	lds	r30, 0x00CF	; 0x8000cf <operation_idx>
     838:	81 e0       	ldi	r24, 0x01	; 1
     83a:	8e 0f       	add	r24, r30
     83c:	80 93 cf 00 	sts	0x00CF, r24	; 0x8000cf <operation_idx>
     840:	f0 e0       	ldi	r31, 0x00	; 0
     842:	e0 52       	subi	r30, 0x20	; 32
     844:	ff 4f       	sbci	r31, 0xFF	; 255
     846:	00 83       	st	Z, r16
     848:	81 e0       	ldi	r24, 0x01	; 1
     84a:	80 93 ca 00 	sts	0x00CA, r24	; 0x8000ca <__data_end>
     84e:	80 2f       	mov	r24, r16
     850:	0e 94 fb 05 	call	0xbf6	; 0xbf6 <LCD_WriteChar>
     854:	43 c0       	rjmp	.+134    	; 0x8dc <__stack+0x7d>
     856:	0b 32       	cpi	r16, 0x2B	; 43
     858:	31 f0       	breq	.+12     	; 0x866 <__stack+0x7>
     85a:	0d 32       	cpi	r16, 0x2D	; 45
     85c:	21 f0       	breq	.+8      	; 0x866 <__stack+0x7>
     85e:	8e ef       	ldi	r24, 0xFE	; 254
     860:	80 0f       	add	r24, r16
     862:	82 30       	cpi	r24, 0x02	; 2
     864:	d8 f5       	brcc	.+118    	; 0x8dc <__stack+0x7d>
     866:	80 91 ca 00 	lds	r24, 0x00CA	; 0x8000ca <__data_end>
     86a:	88 23       	and	r24, r24
     86c:	b9 f1       	breq	.+110    	; 0x8dc <__stack+0x7d>
     86e:	81 30       	cpi	r24, 0x01	; 1
     870:	81 f4       	brne	.+32     	; 0x892 <__stack+0x33>
     872:	e0 91 cf 00 	lds	r30, 0x00CF	; 0x8000cf <operation_idx>
     876:	8e 0f       	add	r24, r30
     878:	80 93 cf 00 	sts	0x00CF, r24	; 0x8000cf <operation_idx>
     87c:	f0 e0       	ldi	r31, 0x00	; 0
     87e:	e0 52       	subi	r30, 0x20	; 32
     880:	ff 4f       	sbci	r31, 0xFF	; 255
     882:	00 83       	st	Z, r16
     884:	81 e0       	ldi	r24, 0x01	; 1
     886:	80 93 ca 00 	sts	0x00CA, r24	; 0x8000ca <__data_end>
     88a:	80 2f       	mov	r24, r16
     88c:	0e 94 fb 05 	call	0xbf6	; 0xbf6 <LCD_WriteChar>
     890:	25 c0       	rjmp	.+74     	; 0x8dc <__stack+0x7d>
     892:	82 30       	cpi	r24, 0x02	; 2
     894:	19 f5       	brne	.+70     	; 0x8dc <__stack+0x7d>
     896:	10 e0       	ldi	r17, 0x00	; 0
     898:	61 2f       	mov	r22, r17
     89a:	80 e0       	ldi	r24, 0x00	; 0
     89c:	0e 94 17 06 	call	0xc2e	; 0xc2e <LCD_ClearLocation>
     8a0:	1f 5f       	subi	r17, 0xFF	; 255
     8a2:	10 31       	cpi	r17, 0x10	; 16
     8a4:	c9 f7       	brne	.-14     	; 0x898 <__stack+0x39>
     8a6:	60 e0       	ldi	r22, 0x00	; 0
     8a8:	80 e0       	ldi	r24, 0x00	; 0
     8aa:	0e 94 fb 04 	call	0x9f6	; 0x9f6 <LCD_SetCursor>
     8ae:	80 ee       	ldi	r24, 0xE0	; 224
     8b0:	90 e0       	ldi	r25, 0x00	; 0
     8b2:	0e 94 ff 05 	call	0xbfe	; 0xbfe <LCD_WriteString>
     8b6:	80 ee       	ldi	r24, 0xE0	; 224
     8b8:	90 e0       	ldi	r25, 0x00	; 0
     8ba:	0e 94 5c 00 	call	0xb8	; 0xb8 <string_len>
     8be:	91 e0       	ldi	r25, 0x01	; 1
     8c0:	98 0f       	add	r25, r24
     8c2:	90 93 cf 00 	sts	0x00CF, r25	; 0x8000cf <operation_idx>
     8c6:	e8 2f       	mov	r30, r24
     8c8:	f0 e0       	ldi	r31, 0x00	; 0
     8ca:	e0 52       	subi	r30, 0x20	; 32
     8cc:	ff 4f       	sbci	r31, 0xFF	; 255
     8ce:	00 83       	st	Z, r16
     8d0:	81 e0       	ldi	r24, 0x01	; 1
     8d2:	80 93 ca 00 	sts	0x00CA, r24	; 0x8000ca <__data_end>
     8d6:	80 2f       	mov	r24, r16
     8d8:	0e 94 fb 05 	call	0xbf6	; 0xbf6 <LCD_WriteChar>
     8dc:	00 93 ce 00 	sts	0x00CE, r16	; 0x8000ce <pre_key>
     8e0:	2b 96       	adiw	r28, 0x0b	; 11
     8e2:	0f b6       	in	r0, 0x3f	; 63
     8e4:	f8 94       	cli
     8e6:	de bf       	out	0x3e, r29	; 62
     8e8:	0f be       	out	0x3f, r0	; 63
     8ea:	cd bf       	out	0x3d, r28	; 61
     8ec:	df 91       	pop	r29
     8ee:	cf 91       	pop	r28
     8f0:	1f 91       	pop	r17
     8f2:	0f 91       	pop	r16
     8f4:	ff 90       	pop	r15
     8f6:	ef 90       	pop	r14
     8f8:	df 90       	pop	r13
     8fa:	cf 90       	pop	r12
     8fc:	bf 90       	pop	r11
     8fe:	af 90       	pop	r10
     900:	9f 90       	pop	r9
     902:	8f 90       	pop	r8
     904:	08 95       	ret

00000906 <WriteInstruction>:
     906:	cf 93       	push	r28
     908:	c8 2f       	mov	r28, r24
     90a:	60 e0       	ldi	r22, 0x00	; 0
     90c:	8f e0       	ldi	r24, 0x0F	; 15
     90e:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     912:	8f ec       	ldi	r24, 0xCF	; 207
     914:	97 e0       	ldi	r25, 0x07	; 7
     916:	01 97       	sbiw	r24, 0x01	; 1
     918:	f1 f7       	brne	.-4      	; 0x916 <WriteInstruction+0x10>
     91a:	00 c0       	rjmp	.+0      	; 0x91c <WriteInstruction+0x16>
     91c:	00 00       	nop
     91e:	60 e0       	ldi	r22, 0x00	; 0
     920:	81 e0       	ldi	r24, 0x01	; 1
     922:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     926:	6c 2f       	mov	r22, r28
     928:	66 1f       	adc	r22, r22
     92a:	66 27       	eor	r22, r22
     92c:	66 1f       	adc	r22, r22
     92e:	86 e0       	ldi	r24, 0x06	; 6
     930:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     934:	c6 fb       	bst	r28, 6
     936:	66 27       	eor	r22, r22
     938:	60 f9       	bld	r22, 0
     93a:	85 e0       	ldi	r24, 0x05	; 5
     93c:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     940:	c5 fb       	bst	r28, 5
     942:	66 27       	eor	r22, r22
     944:	60 f9       	bld	r22, 0
     946:	84 e0       	ldi	r24, 0x04	; 4
     948:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     94c:	c4 fb       	bst	r28, 4
     94e:	66 27       	eor	r22, r22
     950:	60 f9       	bld	r22, 0
     952:	83 e0       	ldi	r24, 0x03	; 3
     954:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     958:	61 e0       	ldi	r22, 0x01	; 1
     95a:	82 e0       	ldi	r24, 0x02	; 2
     95c:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     960:	8f e9       	ldi	r24, 0x9F	; 159
     962:	9f e0       	ldi	r25, 0x0F	; 15
     964:	01 97       	sbiw	r24, 0x01	; 1
     966:	f1 f7       	brne	.-4      	; 0x964 <WriteInstruction+0x5e>
     968:	00 c0       	rjmp	.+0      	; 0x96a <WriteInstruction+0x64>
     96a:	00 00       	nop
     96c:	60 e0       	ldi	r22, 0x00	; 0
     96e:	82 e0       	ldi	r24, 0x02	; 2
     970:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     974:	8f e9       	ldi	r24, 0x9F	; 159
     976:	9f e0       	ldi	r25, 0x0F	; 15
     978:	01 97       	sbiw	r24, 0x01	; 1
     97a:	f1 f7       	brne	.-4      	; 0x978 <WriteInstruction+0x72>
     97c:	00 c0       	rjmp	.+0      	; 0x97e <WriteInstruction+0x78>
     97e:	00 00       	nop
     980:	c3 fb       	bst	r28, 3
     982:	66 27       	eor	r22, r22
     984:	60 f9       	bld	r22, 0
     986:	86 e0       	ldi	r24, 0x06	; 6
     988:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     98c:	c2 fb       	bst	r28, 2
     98e:	66 27       	eor	r22, r22
     990:	60 f9       	bld	r22, 0
     992:	85 e0       	ldi	r24, 0x05	; 5
     994:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     998:	c1 fb       	bst	r28, 1
     99a:	66 27       	eor	r22, r22
     99c:	60 f9       	bld	r22, 0
     99e:	84 e0       	ldi	r24, 0x04	; 4
     9a0:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     9a4:	6c 2f       	mov	r22, r28
     9a6:	61 70       	andi	r22, 0x01	; 1
     9a8:	83 e0       	ldi	r24, 0x03	; 3
     9aa:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     9ae:	61 e0       	ldi	r22, 0x01	; 1
     9b0:	82 e0       	ldi	r24, 0x02	; 2
     9b2:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     9b6:	8f e9       	ldi	r24, 0x9F	; 159
     9b8:	9f e0       	ldi	r25, 0x0F	; 15
     9ba:	01 97       	sbiw	r24, 0x01	; 1
     9bc:	f1 f7       	brne	.-4      	; 0x9ba <WriteInstruction+0xb4>
     9be:	00 c0       	rjmp	.+0      	; 0x9c0 <WriteInstruction+0xba>
     9c0:	00 00       	nop
     9c2:	60 e0       	ldi	r22, 0x00	; 0
     9c4:	82 e0       	ldi	r24, 0x02	; 2
     9c6:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     9ca:	8f e9       	ldi	r24, 0x9F	; 159
     9cc:	9f e0       	ldi	r25, 0x0F	; 15
     9ce:	01 97       	sbiw	r24, 0x01	; 1
     9d0:	f1 f7       	brne	.-4      	; 0x9ce <WriteInstruction+0xc8>
     9d2:	00 c0       	rjmp	.+0      	; 0x9d4 <WriteInstruction+0xce>
     9d4:	00 00       	nop
     9d6:	cf 91       	pop	r28
     9d8:	08 95       	ret

000009da <LCD_Clear>:
     9da:	81 e0       	ldi	r24, 0x01	; 1
     9dc:	0e 94 83 04 	call	0x906	; 0x906 <WriteInstruction>
     9e0:	8f e9       	ldi	r24, 0x9F	; 159
     9e2:	9f e0       	ldi	r25, 0x0F	; 15
     9e4:	01 97       	sbiw	r24, 0x01	; 1
     9e6:	f1 f7       	brne	.-4      	; 0x9e4 <LCD_Clear+0xa>
     9e8:	00 c0       	rjmp	.+0      	; 0x9ea <LCD_Clear+0x10>
     9ea:	00 00       	nop
     9ec:	10 92 f7 00 	sts	0x00F7, r1	; 0x8000f7 <cell>
     9f0:	10 92 f6 00 	sts	0x00F6, r1	; 0x8000f6 <line>
     9f4:	08 95       	ret

000009f6 <LCD_SetCursor>:
     9f6:	80 93 f6 00 	sts	0x00F6, r24	; 0x8000f6 <line>
     9fa:	60 93 f7 00 	sts	0x00F7, r22	; 0x8000f7 <cell>
     9fe:	81 11       	cpse	r24, r1
     a00:	06 c0       	rjmp	.+12     	; 0xa0e <LCD_SetCursor+0x18>
     a02:	80 e8       	ldi	r24, 0x80	; 128
     a04:	86 0f       	add	r24, r22
     a06:	0e 94 83 04 	call	0x906	; 0x906 <WriteInstruction>
     a0a:	80 e0       	ldi	r24, 0x00	; 0
     a0c:	08 95       	ret
     a0e:	81 30       	cpi	r24, 0x01	; 1
     a10:	31 f4       	brne	.+12     	; 0xa1e <LCD_SetCursor+0x28>
     a12:	80 ec       	ldi	r24, 0xC0	; 192
     a14:	86 0f       	add	r24, r22
     a16:	0e 94 83 04 	call	0x906	; 0x906 <WriteInstruction>
     a1a:	80 e0       	ldi	r24, 0x00	; 0
     a1c:	08 95       	ret
     a1e:	84 e0       	ldi	r24, 0x04	; 4
     a20:	08 95       	ret

00000a22 <WriteData>:
     a22:	cf 93       	push	r28
     a24:	df 93       	push	r29
     a26:	c8 2f       	mov	r28, r24
     a28:	d6 2f       	mov	r29, r22
     a2a:	61 30       	cpi	r22, 0x01	; 1
     a2c:	31 f4       	brne	.+12     	; 0xa3a <WriteData+0x18>
     a2e:	60 91 f7 00 	lds	r22, 0x00F7	; 0x8000f7 <cell>
     a32:	80 91 f6 00 	lds	r24, 0x00F6	; 0x8000f6 <line>
     a36:	0e 94 fb 04 	call	0x9f6	; 0x9f6 <LCD_SetCursor>
     a3a:	60 e0       	ldi	r22, 0x00	; 0
     a3c:	8f e0       	ldi	r24, 0x0F	; 15
     a3e:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     a42:	8f ec       	ldi	r24, 0xCF	; 207
     a44:	97 e0       	ldi	r25, 0x07	; 7
     a46:	01 97       	sbiw	r24, 0x01	; 1
     a48:	f1 f7       	brne	.-4      	; 0xa46 <WriteData+0x24>
     a4a:	00 c0       	rjmp	.+0      	; 0xa4c <WriteData+0x2a>
     a4c:	00 00       	nop
     a4e:	61 e0       	ldi	r22, 0x01	; 1
     a50:	81 e0       	ldi	r24, 0x01	; 1
     a52:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     a56:	6c 2f       	mov	r22, r28
     a58:	66 1f       	adc	r22, r22
     a5a:	66 27       	eor	r22, r22
     a5c:	66 1f       	adc	r22, r22
     a5e:	86 e0       	ldi	r24, 0x06	; 6
     a60:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     a64:	c6 fb       	bst	r28, 6
     a66:	66 27       	eor	r22, r22
     a68:	60 f9       	bld	r22, 0
     a6a:	85 e0       	ldi	r24, 0x05	; 5
     a6c:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     a70:	c5 fb       	bst	r28, 5
     a72:	66 27       	eor	r22, r22
     a74:	60 f9       	bld	r22, 0
     a76:	84 e0       	ldi	r24, 0x04	; 4
     a78:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     a7c:	c4 fb       	bst	r28, 4
     a7e:	66 27       	eor	r22, r22
     a80:	60 f9       	bld	r22, 0
     a82:	83 e0       	ldi	r24, 0x03	; 3
     a84:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     a88:	61 e0       	ldi	r22, 0x01	; 1
     a8a:	82 e0       	ldi	r24, 0x02	; 2
     a8c:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     a90:	8f e9       	ldi	r24, 0x9F	; 159
     a92:	9f e0       	ldi	r25, 0x0F	; 15
     a94:	01 97       	sbiw	r24, 0x01	; 1
     a96:	f1 f7       	brne	.-4      	; 0xa94 <WriteData+0x72>
     a98:	00 c0       	rjmp	.+0      	; 0xa9a <WriteData+0x78>
     a9a:	00 00       	nop
     a9c:	60 e0       	ldi	r22, 0x00	; 0
     a9e:	82 e0       	ldi	r24, 0x02	; 2
     aa0:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     aa4:	8f e9       	ldi	r24, 0x9F	; 159
     aa6:	9f e0       	ldi	r25, 0x0F	; 15
     aa8:	01 97       	sbiw	r24, 0x01	; 1
     aaa:	f1 f7       	brne	.-4      	; 0xaa8 <WriteData+0x86>
     aac:	00 c0       	rjmp	.+0      	; 0xaae <WriteData+0x8c>
     aae:	00 00       	nop
     ab0:	c3 fb       	bst	r28, 3
     ab2:	66 27       	eor	r22, r22
     ab4:	60 f9       	bld	r22, 0
     ab6:	86 e0       	ldi	r24, 0x06	; 6
     ab8:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     abc:	c2 fb       	bst	r28, 2
     abe:	66 27       	eor	r22, r22
     ac0:	60 f9       	bld	r22, 0
     ac2:	85 e0       	ldi	r24, 0x05	; 5
     ac4:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     ac8:	c1 fb       	bst	r28, 1
     aca:	66 27       	eor	r22, r22
     acc:	60 f9       	bld	r22, 0
     ace:	84 e0       	ldi	r24, 0x04	; 4
     ad0:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     ad4:	6c 2f       	mov	r22, r28
     ad6:	61 70       	andi	r22, 0x01	; 1
     ad8:	83 e0       	ldi	r24, 0x03	; 3
     ada:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     ade:	61 e0       	ldi	r22, 0x01	; 1
     ae0:	82 e0       	ldi	r24, 0x02	; 2
     ae2:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     ae6:	8f e9       	ldi	r24, 0x9F	; 159
     ae8:	9f e0       	ldi	r25, 0x0F	; 15
     aea:	01 97       	sbiw	r24, 0x01	; 1
     aec:	f1 f7       	brne	.-4      	; 0xaea <WriteData+0xc8>
     aee:	00 c0       	rjmp	.+0      	; 0xaf0 <WriteData+0xce>
     af0:	00 00       	nop
     af2:	60 e0       	ldi	r22, 0x00	; 0
     af4:	82 e0       	ldi	r24, 0x02	; 2
     af6:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     afa:	8f e9       	ldi	r24, 0x9F	; 159
     afc:	9f e0       	ldi	r25, 0x0F	; 15
     afe:	01 97       	sbiw	r24, 0x01	; 1
     b00:	f1 f7       	brne	.-4      	; 0xafe <WriteData+0xdc>
     b02:	00 c0       	rjmp	.+0      	; 0xb04 <WriteData+0xe2>
     b04:	00 00       	nop
     b06:	d1 30       	cpi	r29, 0x01	; 1
     b08:	b1 f4       	brne	.+44     	; 0xb36 <WriteData+0x114>
     b0a:	80 91 f7 00 	lds	r24, 0x00F7	; 0x8000f7 <cell>
     b0e:	8f 30       	cpi	r24, 0x0F	; 15
     b10:	79 f4       	brne	.+30     	; 0xb30 <WriteData+0x10e>
     b12:	80 91 f6 00 	lds	r24, 0x00F6	; 0x8000f6 <line>
     b16:	81 30       	cpi	r24, 0x01	; 1
     b18:	29 f4       	brne	.+10     	; 0xb24 <WriteData+0x102>
     b1a:	10 92 f6 00 	sts	0x00F6, r1	; 0x8000f6 <line>
     b1e:	10 92 f7 00 	sts	0x00F7, r1	; 0x8000f7 <cell>
     b22:	09 c0       	rjmp	.+18     	; 0xb36 <WriteData+0x114>
     b24:	8f 5f       	subi	r24, 0xFF	; 255
     b26:	80 93 f6 00 	sts	0x00F6, r24	; 0x8000f6 <line>
     b2a:	10 92 f7 00 	sts	0x00F7, r1	; 0x8000f7 <cell>
     b2e:	03 c0       	rjmp	.+6      	; 0xb36 <WriteData+0x114>
     b30:	8f 5f       	subi	r24, 0xFF	; 255
     b32:	80 93 f7 00 	sts	0x00F7, r24	; 0x8000f7 <cell>
     b36:	df 91       	pop	r29
     b38:	cf 91       	pop	r28
     b3a:	08 95       	ret

00000b3c <LCD_Init>:
     b3c:	0f 93       	push	r16
     b3e:	1f 93       	push	r17
     b40:	cf 93       	push	r28
     b42:	df 93       	push	r29
     b44:	10 92 f7 00 	sts	0x00F7, r1	; 0x8000f7 <cell>
     b48:	10 92 f6 00 	sts	0x00F6, r1	; 0x8000f6 <line>
     b4c:	10 92 f5 00 	sts	0x00F5, r1	; 0x8000f5 <saved_patterns>
     b50:	2f e7       	ldi	r18, 0x7F	; 127
     b52:	88 e3       	ldi	r24, 0x38	; 56
     b54:	91 e0       	ldi	r25, 0x01	; 1
     b56:	21 50       	subi	r18, 0x01	; 1
     b58:	80 40       	sbci	r24, 0x00	; 0
     b5a:	90 40       	sbci	r25, 0x00	; 0
     b5c:	e1 f7       	brne	.-8      	; 0xb56 <LCD_Init+0x1a>
     b5e:	00 c0       	rjmp	.+0      	; 0xb60 <LCD_Init+0x24>
     b60:	00 00       	nop
     b62:	60 e0       	ldi	r22, 0x00	; 0
     b64:	8f e0       	ldi	r24, 0x0F	; 15
     b66:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     b6a:	8f ec       	ldi	r24, 0xCF	; 207
     b6c:	97 e0       	ldi	r25, 0x07	; 7
     b6e:	01 97       	sbiw	r24, 0x01	; 1
     b70:	f1 f7       	brne	.-4      	; 0xb6e <LCD_Init+0x32>
     b72:	00 c0       	rjmp	.+0      	; 0xb74 <LCD_Init+0x38>
     b74:	00 00       	nop
     b76:	82 e0       	ldi	r24, 0x02	; 2
     b78:	0e 94 83 04 	call	0x906	; 0x906 <WriteInstruction>
     b7c:	88 e2       	ldi	r24, 0x28	; 40
     b7e:	0e 94 83 04 	call	0x906	; 0x906 <WriteInstruction>
     b82:	8f ec       	ldi	r24, 0xCF	; 207
     b84:	97 e0       	ldi	r25, 0x07	; 7
     b86:	01 97       	sbiw	r24, 0x01	; 1
     b88:	f1 f7       	brne	.-4      	; 0xb86 <LCD_Init+0x4a>
     b8a:	00 c0       	rjmp	.+0      	; 0xb8c <LCD_Init+0x50>
     b8c:	00 00       	nop
     b8e:	8f e0       	ldi	r24, 0x0F	; 15
     b90:	0e 94 83 04 	call	0x906	; 0x906 <WriteInstruction>
     b94:	8f ec       	ldi	r24, 0xCF	; 207
     b96:	97 e0       	ldi	r25, 0x07	; 7
     b98:	01 97       	sbiw	r24, 0x01	; 1
     b9a:	f1 f7       	brne	.-4      	; 0xb98 <LCD_Init+0x5c>
     b9c:	00 c0       	rjmp	.+0      	; 0xb9e <LCD_Init+0x62>
     b9e:	00 00       	nop
     ba0:	81 e0       	ldi	r24, 0x01	; 1
     ba2:	0e 94 83 04 	call	0x906	; 0x906 <WriteInstruction>
     ba6:	8f e9       	ldi	r24, 0x9F	; 159
     ba8:	9f e0       	ldi	r25, 0x0F	; 15
     baa:	01 97       	sbiw	r24, 0x01	; 1
     bac:	f1 f7       	brne	.-4      	; 0xbaa <LCD_Init+0x6e>
     bae:	00 c0       	rjmp	.+0      	; 0xbb0 <LCD_Init+0x74>
     bb0:	00 00       	nop
     bb2:	86 e0       	ldi	r24, 0x06	; 6
     bb4:	0e 94 83 04 	call	0x906	; 0x906 <WriteInstruction>
     bb8:	80 e4       	ldi	r24, 0x40	; 64
     bba:	0e 94 83 04 	call	0x906	; 0x906 <WriteInstruction>
     bbe:	c9 e8       	ldi	r28, 0x89	; 137
     bc0:	d0 e0       	ldi	r29, 0x00	; 0
     bc2:	01 e9       	ldi	r16, 0x91	; 145
     bc4:	10 e0       	ldi	r17, 0x00	; 0
     bc6:	60 e0       	ldi	r22, 0x00	; 0
     bc8:	89 91       	ld	r24, Y+
     bca:	0e 94 11 05 	call	0xa22	; 0xa22 <WriteData>
     bce:	c0 17       	cp	r28, r16
     bd0:	d1 07       	cpc	r29, r17
     bd2:	c9 f7       	brne	.-14     	; 0xbc6 <LCD_Init+0x8a>
     bd4:	80 91 f5 00 	lds	r24, 0x00F5	; 0x8000f5 <saved_patterns>
     bd8:	8f 5f       	subi	r24, 0xFF	; 255
     bda:	80 93 f5 00 	sts	0x00F5, r24	; 0x8000f5 <saved_patterns>
     bde:	80 e8       	ldi	r24, 0x80	; 128
     be0:	0e 94 83 04 	call	0x906	; 0x906 <WriteInstruction>
     be4:	10 92 f7 00 	sts	0x00F7, r1	; 0x8000f7 <cell>
     be8:	10 92 f6 00 	sts	0x00F6, r1	; 0x8000f6 <line>
     bec:	df 91       	pop	r29
     bee:	cf 91       	pop	r28
     bf0:	1f 91       	pop	r17
     bf2:	0f 91       	pop	r16
     bf4:	08 95       	ret

00000bf6 <LCD_WriteChar>:
     bf6:	61 e0       	ldi	r22, 0x01	; 1
     bf8:	0e 94 11 05 	call	0xa22	; 0xa22 <WriteData>
     bfc:	08 95       	ret

00000bfe <LCD_WriteString>:
     bfe:	0f 93       	push	r16
     c00:	1f 93       	push	r17
     c02:	cf 93       	push	r28
     c04:	fc 01       	movw	r30, r24
     c06:	89 2b       	or	r24, r25
     c08:	71 f0       	breq	.+28     	; 0xc26 <LCD_WriteString+0x28>
     c0a:	80 81       	ld	r24, Z
     c0c:	88 23       	and	r24, r24
     c0e:	59 f0       	breq	.+22     	; 0xc26 <LCD_WriteString+0x28>
     c10:	8f 01       	movw	r16, r30
     c12:	c0 e0       	ldi	r28, 0x00	; 0
     c14:	0e 94 fb 05 	call	0xbf6	; 0xbf6 <LCD_WriteChar>
     c18:	cf 5f       	subi	r28, 0xFF	; 255
     c1a:	f8 01       	movw	r30, r16
     c1c:	ec 0f       	add	r30, r28
     c1e:	f1 1d       	adc	r31, r1
     c20:	80 81       	ld	r24, Z
     c22:	81 11       	cpse	r24, r1
     c24:	f7 cf       	rjmp	.-18     	; 0xc14 <LCD_WriteString+0x16>
     c26:	cf 91       	pop	r28
     c28:	1f 91       	pop	r17
     c2a:	0f 91       	pop	r16
     c2c:	08 95       	ret

00000c2e <LCD_ClearLocation>:
     c2e:	0e 94 fb 04 	call	0x9f6	; 0x9f6 <LCD_SetCursor>
     c32:	84 30       	cpi	r24, 0x04	; 4
     c34:	09 f4       	brne	.+2      	; 0xc38 <LCD_ClearLocation+0xa>
     c36:	57 c0       	rjmp	.+174    	; 0xce6 <LCD_ClearLocation+0xb8>
     c38:	60 e0       	ldi	r22, 0x00	; 0
     c3a:	8f e0       	ldi	r24, 0x0F	; 15
     c3c:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     c40:	8f ec       	ldi	r24, 0xCF	; 207
     c42:	97 e0       	ldi	r25, 0x07	; 7
     c44:	01 97       	sbiw	r24, 0x01	; 1
     c46:	f1 f7       	brne	.-4      	; 0xc44 <LCD_ClearLocation+0x16>
     c48:	00 c0       	rjmp	.+0      	; 0xc4a <LCD_ClearLocation+0x1c>
     c4a:	00 00       	nop
     c4c:	61 e0       	ldi	r22, 0x01	; 1
     c4e:	81 e0       	ldi	r24, 0x01	; 1
     c50:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     c54:	60 e0       	ldi	r22, 0x00	; 0
     c56:	86 e0       	ldi	r24, 0x06	; 6
     c58:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     c5c:	60 e0       	ldi	r22, 0x00	; 0
     c5e:	85 e0       	ldi	r24, 0x05	; 5
     c60:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     c64:	60 e0       	ldi	r22, 0x00	; 0
     c66:	84 e0       	ldi	r24, 0x04	; 4
     c68:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     c6c:	60 e0       	ldi	r22, 0x00	; 0
     c6e:	83 e0       	ldi	r24, 0x03	; 3
     c70:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     c74:	61 e0       	ldi	r22, 0x01	; 1
     c76:	82 e0       	ldi	r24, 0x02	; 2
     c78:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     c7c:	8f e9       	ldi	r24, 0x9F	; 159
     c7e:	9f e0       	ldi	r25, 0x0F	; 15
     c80:	01 97       	sbiw	r24, 0x01	; 1
     c82:	f1 f7       	brne	.-4      	; 0xc80 <LCD_ClearLocation+0x52>
     c84:	00 c0       	rjmp	.+0      	; 0xc86 <LCD_ClearLocation+0x58>
     c86:	00 00       	nop
     c88:	60 e0       	ldi	r22, 0x00	; 0
     c8a:	82 e0       	ldi	r24, 0x02	; 2
     c8c:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     c90:	8f e9       	ldi	r24, 0x9F	; 159
     c92:	9f e0       	ldi	r25, 0x0F	; 15
     c94:	01 97       	sbiw	r24, 0x01	; 1
     c96:	f1 f7       	brne	.-4      	; 0xc94 <LCD_ClearLocation+0x66>
     c98:	00 c0       	rjmp	.+0      	; 0xc9a <LCD_ClearLocation+0x6c>
     c9a:	00 00       	nop
     c9c:	60 e0       	ldi	r22, 0x00	; 0
     c9e:	86 e0       	ldi	r24, 0x06	; 6
     ca0:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     ca4:	60 e0       	ldi	r22, 0x00	; 0
     ca6:	85 e0       	ldi	r24, 0x05	; 5
     ca8:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     cac:	60 e0       	ldi	r22, 0x00	; 0
     cae:	84 e0       	ldi	r24, 0x04	; 4
     cb0:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     cb4:	60 e0       	ldi	r22, 0x00	; 0
     cb6:	83 e0       	ldi	r24, 0x03	; 3
     cb8:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     cbc:	61 e0       	ldi	r22, 0x01	; 1
     cbe:	82 e0       	ldi	r24, 0x02	; 2
     cc0:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     cc4:	8f e9       	ldi	r24, 0x9F	; 159
     cc6:	9f e0       	ldi	r25, 0x0F	; 15
     cc8:	01 97       	sbiw	r24, 0x01	; 1
     cca:	f1 f7       	brne	.-4      	; 0xcc8 <LCD_ClearLocation+0x9a>
     ccc:	00 c0       	rjmp	.+0      	; 0xcce <LCD_ClearLocation+0xa0>
     cce:	00 00       	nop
     cd0:	60 e0       	ldi	r22, 0x00	; 0
     cd2:	82 e0       	ldi	r24, 0x02	; 2
     cd4:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     cd8:	8f e9       	ldi	r24, 0x9F	; 159
     cda:	9f e0       	ldi	r25, 0x0F	; 15
     cdc:	01 97       	sbiw	r24, 0x01	; 1
     cde:	f1 f7       	brne	.-4      	; 0xcdc <LCD_ClearLocation+0xae>
     ce0:	00 c0       	rjmp	.+0      	; 0xce2 <LCD_ClearLocation+0xb4>
     ce2:	00 00       	nop
     ce4:	80 e0       	ldi	r24, 0x00	; 0
     ce6:	08 95       	ret

00000ce8 <LCD_SetPattern>:
     ce8:	0f 93       	push	r16
     cea:	1f 93       	push	r17
     cec:	cf 93       	push	r28
     cee:	df 93       	push	r29
     cf0:	90 91 f5 00 	lds	r25, 0x00F5	; 0x8000f5 <saved_patterns>
     cf4:	98 30       	cpi	r25, 0x08	; 8
     cf6:	e8 f4       	brcc	.+58     	; 0xd32 <LCD_SetPattern+0x4a>
     cf8:	9f ef       	ldi	r25, 0xFF	; 255
     cfa:	98 0f       	add	r25, r24
     cfc:	97 30       	cpi	r25, 0x07	; 7
     cfe:	c8 f4       	brcc	.+50     	; 0xd32 <LCD_SetPattern+0x4a>
     d00:	8b 01       	movw	r16, r22
     d02:	88 0f       	add	r24, r24
     d04:	88 0f       	add	r24, r24
     d06:	88 0f       	add	r24, r24
     d08:	80 5c       	subi	r24, 0xC0	; 192
     d0a:	0e 94 83 04 	call	0x906	; 0x906 <WriteInstruction>
     d0e:	e8 01       	movw	r28, r16
     d10:	08 5f       	subi	r16, 0xF8	; 248
     d12:	1f 4f       	sbci	r17, 0xFF	; 255
     d14:	60 e0       	ldi	r22, 0x00	; 0
     d16:	89 91       	ld	r24, Y+
     d18:	0e 94 11 05 	call	0xa22	; 0xa22 <WriteData>
     d1c:	c0 17       	cp	r28, r16
     d1e:	d1 07       	cpc	r29, r17
     d20:	c9 f7       	brne	.-14     	; 0xd14 <LCD_SetPattern+0x2c>
     d22:	80 91 f5 00 	lds	r24, 0x00F5	; 0x8000f5 <saved_patterns>
     d26:	8f 5f       	subi	r24, 0xFF	; 255
     d28:	80 93 f5 00 	sts	0x00F5, r24	; 0x8000f5 <saved_patterns>
     d2c:	80 e8       	ldi	r24, 0x80	; 128
     d2e:	0e 94 83 04 	call	0x906	; 0x906 <WriteInstruction>
     d32:	df 91       	pop	r29
     d34:	cf 91       	pop	r28
     d36:	1f 91       	pop	r17
     d38:	0f 91       	pop	r16
     d3a:	08 95       	ret

00000d3c <KEYPAD_Init>:
     d3c:	08 95       	ret

00000d3e <KEYPAD_GetEntry>:
     d3e:	5f 92       	push	r5
     d40:	6f 92       	push	r6
     d42:	7f 92       	push	r7
     d44:	8f 92       	push	r8
     d46:	9f 92       	push	r9
     d48:	af 92       	push	r10
     d4a:	bf 92       	push	r11
     d4c:	cf 92       	push	r12
     d4e:	df 92       	push	r13
     d50:	ef 92       	push	r14
     d52:	ff 92       	push	r15
     d54:	0f 93       	push	r16
     d56:	1f 93       	push	r17
     d58:	cf 93       	push	r28
     d5a:	df 93       	push	r29
     d5c:	0f 2e       	mov	r0, r31
     d5e:	f5 e9       	ldi	r31, 0x95	; 149
     d60:	af 2e       	mov	r10, r31
     d62:	f0 e0       	ldi	r31, 0x00	; 0
     d64:	bf 2e       	mov	r11, r31
     d66:	f0 2d       	mov	r31, r0
     d68:	09 e9       	ldi	r16, 0x99	; 153
     d6a:	10 e0       	ldi	r17, 0x00	; 0
     d6c:	e5 01       	movw	r28, r10
     d6e:	61 e0       	ldi	r22, 0x01	; 1
     d70:	89 91       	ld	r24, Y+
     d72:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     d76:	0c 17       	cp	r16, r28
     d78:	1d 07       	cpc	r17, r29
     d7a:	c9 f7       	brne	.-14     	; 0xd6e <KEYPAD_GetEntry+0x30>
     d7c:	0f 2e       	mov	r0, r31
     d7e:	f9 e9       	ldi	r31, 0x99	; 153
     d80:	cf 2e       	mov	r12, r31
     d82:	f0 e0       	ldi	r31, 0x00	; 0
     d84:	df 2e       	mov	r13, r31
     d86:	f0 2d       	mov	r31, r0
     d88:	0f 2e       	mov	r0, r31
     d8a:	f9 ea       	ldi	r31, 0xA9	; 169
     d8c:	8f 2e       	mov	r8, r31
     d8e:	f0 e0       	ldi	r31, 0x00	; 0
     d90:	9f 2e       	mov	r9, r31
     d92:	f0 2d       	mov	r31, r0
     d94:	0f 2e       	mov	r0, r31
     d96:	f4 e5       	ldi	r31, 0x54	; 84
     d98:	5f 2e       	mov	r5, r31
     d9a:	f0 2d       	mov	r31, r0
     d9c:	0f 2e       	mov	r0, r31
     d9e:	f5 e9       	ldi	r31, 0x95	; 149
     da0:	ef 2e       	mov	r14, r31
     da2:	f0 e0       	ldi	r31, 0x00	; 0
     da4:	ff 2e       	mov	r15, r31
     da6:	f0 2d       	mov	r31, r0
     da8:	f5 01       	movw	r30, r10
     daa:	61 90       	ld	r6, Z+
     dac:	5f 01       	movw	r10, r30
     dae:	60 e0       	ldi	r22, 0x00	; 0
     db0:	86 2d       	mov	r24, r6
     db2:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     db6:	c1 e9       	ldi	r28, 0x91	; 145
     db8:	d0 e0       	ldi	r29, 0x00	; 0
     dba:	86 01       	movw	r16, r12
     dbc:	79 90       	ld	r7, Y+
     dbe:	87 2d       	mov	r24, r7
     dc0:	0e 94 78 08 	call	0x10f0	; 0x10f0 <DIO_ReadPin>
     dc4:	81 11       	cpse	r24, r1
     dc6:	07 c0       	rjmp	.+14     	; 0xdd6 <KEYPAD_GetEntry+0x98>
     dc8:	87 2d       	mov	r24, r7
     dca:	0e 94 78 08 	call	0x10f0	; 0x10f0 <DIO_ReadPin>
     dce:	88 23       	and	r24, r24
     dd0:	d9 f3       	breq	.-10     	; 0xdc8 <KEYPAD_GetEntry+0x8a>
     dd2:	f8 01       	movw	r30, r16
     dd4:	50 80       	ld	r5, Z
     dd6:	0f 5f       	subi	r16, 0xFF	; 255
     dd8:	1f 4f       	sbci	r17, 0xFF	; 255
     dda:	ce 15       	cp	r28, r14
     ddc:	df 05       	cpc	r29, r15
     dde:	71 f7       	brne	.-36     	; 0xdbc <KEYPAD_GetEntry+0x7e>
     de0:	61 e0       	ldi	r22, 0x01	; 1
     de2:	86 2d       	mov	r24, r6
     de4:	0e 94 f3 07 	call	0xfe6	; 0xfe6 <DIO_WritePin>
     de8:	f4 e0       	ldi	r31, 0x04	; 4
     dea:	cf 0e       	add	r12, r31
     dec:	d1 1c       	adc	r13, r1
     dee:	c8 14       	cp	r12, r8
     df0:	d9 04       	cpc	r13, r9
     df2:	d1 f6       	brne	.-76     	; 0xda8 <KEYPAD_GetEntry+0x6a>
     df4:	85 2d       	mov	r24, r5
     df6:	df 91       	pop	r29
     df8:	cf 91       	pop	r28
     dfa:	1f 91       	pop	r17
     dfc:	0f 91       	pop	r16
     dfe:	ff 90       	pop	r15
     e00:	ef 90       	pop	r14
     e02:	df 90       	pop	r13
     e04:	cf 90       	pop	r12
     e06:	bf 90       	pop	r11
     e08:	af 90       	pop	r10
     e0a:	9f 90       	pop	r9
     e0c:	8f 90       	pop	r8
     e0e:	7f 90       	pop	r7
     e10:	6f 90       	pop	r6
     e12:	5f 90       	pop	r5
     e14:	08 95       	ret

00000e16 <DIO_Init>:
     e16:	e9 ea       	ldi	r30, 0xA9	; 169
     e18:	f0 e0       	ldi	r31, 0x00	; 0
     e1a:	80 e0       	ldi	r24, 0x00	; 0
     e1c:	41 e0       	ldi	r20, 0x01	; 1
     e1e:	50 e0       	ldi	r21, 0x00	; 0
     e20:	91 91       	ld	r25, Z+
     e22:	28 2f       	mov	r18, r24
     e24:	26 95       	lsr	r18
     e26:	26 95       	lsr	r18
     e28:	26 95       	lsr	r18
     e2a:	38 2f       	mov	r19, r24
     e2c:	37 70       	andi	r19, 0x07	; 7
     e2e:	91 30       	cpi	r25, 0x01	; 1
     e30:	09 f4       	brne	.+2      	; 0xe34 <DIO_Init+0x1e>
     e32:	49 c0       	rjmp	.+146    	; 0xec6 <DIO_Init+0xb0>
     e34:	20 f0       	brcs	.+8      	; 0xe3e <DIO_Init+0x28>
     e36:	92 30       	cpi	r25, 0x02	; 2
     e38:	09 f4       	brne	.+2      	; 0xe3c <DIO_Init+0x26>
     e3a:	89 c0       	rjmp	.+274    	; 0xf4e <DIO_Init+0x138>
     e3c:	cf c0       	rjmp	.+414    	; 0xfdc <DIO_Init+0x1c6>
     e3e:	21 30       	cpi	r18, 0x01	; 1
     e40:	a9 f0       	breq	.+42     	; 0xe6c <DIO_Init+0x56>
     e42:	28 f0       	brcs	.+10     	; 0xe4e <DIO_Init+0x38>
     e44:	22 30       	cpi	r18, 0x02	; 2
     e46:	09 f1       	breq	.+66     	; 0xe8a <DIO_Init+0x74>
     e48:	23 30       	cpi	r18, 0x03	; 3
     e4a:	71 f1       	breq	.+92     	; 0xea8 <DIO_Init+0x92>
     e4c:	c7 c0       	rjmp	.+398    	; 0xfdc <DIO_Init+0x1c6>
     e4e:	9a b3       	in	r25, 0x1a	; 26
     e50:	ba 01       	movw	r22, r20
     e52:	02 c0       	rjmp	.+4      	; 0xe58 <DIO_Init+0x42>
     e54:	66 0f       	add	r22, r22
     e56:	77 1f       	adc	r23, r23
     e58:	3a 95       	dec	r19
     e5a:	e2 f7       	brpl	.-8      	; 0xe54 <DIO_Init+0x3e>
     e5c:	9b 01       	movw	r18, r22
     e5e:	96 2b       	or	r25, r22
     e60:	9a bb       	out	0x1a, r25	; 26
     e62:	9b b3       	in	r25, 0x1b	; 27
     e64:	20 95       	com	r18
     e66:	29 23       	and	r18, r25
     e68:	2b bb       	out	0x1b, r18	; 27
     e6a:	b8 c0       	rjmp	.+368    	; 0xfdc <DIO_Init+0x1c6>
     e6c:	97 b3       	in	r25, 0x17	; 23
     e6e:	ba 01       	movw	r22, r20
     e70:	02 c0       	rjmp	.+4      	; 0xe76 <DIO_Init+0x60>
     e72:	66 0f       	add	r22, r22
     e74:	77 1f       	adc	r23, r23
     e76:	3a 95       	dec	r19
     e78:	e2 f7       	brpl	.-8      	; 0xe72 <DIO_Init+0x5c>
     e7a:	9b 01       	movw	r18, r22
     e7c:	96 2b       	or	r25, r22
     e7e:	97 bb       	out	0x17, r25	; 23
     e80:	98 b3       	in	r25, 0x18	; 24
     e82:	20 95       	com	r18
     e84:	29 23       	and	r18, r25
     e86:	28 bb       	out	0x18, r18	; 24
     e88:	a9 c0       	rjmp	.+338    	; 0xfdc <DIO_Init+0x1c6>
     e8a:	94 b3       	in	r25, 0x14	; 20
     e8c:	ba 01       	movw	r22, r20
     e8e:	02 c0       	rjmp	.+4      	; 0xe94 <DIO_Init+0x7e>
     e90:	66 0f       	add	r22, r22
     e92:	77 1f       	adc	r23, r23
     e94:	3a 95       	dec	r19
     e96:	e2 f7       	brpl	.-8      	; 0xe90 <DIO_Init+0x7a>
     e98:	9b 01       	movw	r18, r22
     e9a:	96 2b       	or	r25, r22
     e9c:	94 bb       	out	0x14, r25	; 20
     e9e:	95 b3       	in	r25, 0x15	; 21
     ea0:	20 95       	com	r18
     ea2:	29 23       	and	r18, r25
     ea4:	25 bb       	out	0x15, r18	; 21
     ea6:	9a c0       	rjmp	.+308    	; 0xfdc <DIO_Init+0x1c6>
     ea8:	91 b3       	in	r25, 0x11	; 17
     eaa:	ba 01       	movw	r22, r20
     eac:	02 c0       	rjmp	.+4      	; 0xeb2 <DIO_Init+0x9c>
     eae:	66 0f       	add	r22, r22
     eb0:	77 1f       	adc	r23, r23
     eb2:	3a 95       	dec	r19
     eb4:	e2 f7       	brpl	.-8      	; 0xeae <DIO_Init+0x98>
     eb6:	9b 01       	movw	r18, r22
     eb8:	96 2b       	or	r25, r22
     eba:	91 bb       	out	0x11, r25	; 17
     ebc:	92 b3       	in	r25, 0x12	; 18
     ebe:	20 95       	com	r18
     ec0:	29 23       	and	r18, r25
     ec2:	22 bb       	out	0x12, r18	; 18
     ec4:	8b c0       	rjmp	.+278    	; 0xfdc <DIO_Init+0x1c6>
     ec6:	21 30       	cpi	r18, 0x01	; 1
     ec8:	a9 f0       	breq	.+42     	; 0xef4 <DIO_Init+0xde>
     eca:	28 f0       	brcs	.+10     	; 0xed6 <DIO_Init+0xc0>
     ecc:	22 30       	cpi	r18, 0x02	; 2
     ece:	09 f1       	breq	.+66     	; 0xf12 <DIO_Init+0xfc>
     ed0:	23 30       	cpi	r18, 0x03	; 3
     ed2:	71 f1       	breq	.+92     	; 0xf30 <DIO_Init+0x11a>
     ed4:	83 c0       	rjmp	.+262    	; 0xfdc <DIO_Init+0x1c6>
     ed6:	9a b3       	in	r25, 0x1a	; 26
     ed8:	ba 01       	movw	r22, r20
     eda:	02 c0       	rjmp	.+4      	; 0xee0 <DIO_Init+0xca>
     edc:	66 0f       	add	r22, r22
     ede:	77 1f       	adc	r23, r23
     ee0:	3a 95       	dec	r19
     ee2:	e2 f7       	brpl	.-8      	; 0xedc <DIO_Init+0xc6>
     ee4:	9b 01       	movw	r18, r22
     ee6:	20 95       	com	r18
     ee8:	92 23       	and	r25, r18
     eea:	9a bb       	out	0x1a, r25	; 26
     eec:	9b b3       	in	r25, 0x1b	; 27
     eee:	29 23       	and	r18, r25
     ef0:	2b bb       	out	0x1b, r18	; 27
     ef2:	74 c0       	rjmp	.+232    	; 0xfdc <DIO_Init+0x1c6>
     ef4:	97 b3       	in	r25, 0x17	; 23
     ef6:	ba 01       	movw	r22, r20
     ef8:	02 c0       	rjmp	.+4      	; 0xefe <DIO_Init+0xe8>
     efa:	66 0f       	add	r22, r22
     efc:	77 1f       	adc	r23, r23
     efe:	3a 95       	dec	r19
     f00:	e2 f7       	brpl	.-8      	; 0xefa <DIO_Init+0xe4>
     f02:	9b 01       	movw	r18, r22
     f04:	20 95       	com	r18
     f06:	92 23       	and	r25, r18
     f08:	97 bb       	out	0x17, r25	; 23
     f0a:	98 b3       	in	r25, 0x18	; 24
     f0c:	29 23       	and	r18, r25
     f0e:	28 bb       	out	0x18, r18	; 24
     f10:	65 c0       	rjmp	.+202    	; 0xfdc <DIO_Init+0x1c6>
     f12:	94 b3       	in	r25, 0x14	; 20
     f14:	ba 01       	movw	r22, r20
     f16:	02 c0       	rjmp	.+4      	; 0xf1c <DIO_Init+0x106>
     f18:	66 0f       	add	r22, r22
     f1a:	77 1f       	adc	r23, r23
     f1c:	3a 95       	dec	r19
     f1e:	e2 f7       	brpl	.-8      	; 0xf18 <DIO_Init+0x102>
     f20:	9b 01       	movw	r18, r22
     f22:	20 95       	com	r18
     f24:	92 23       	and	r25, r18
     f26:	94 bb       	out	0x14, r25	; 20
     f28:	95 b3       	in	r25, 0x15	; 21
     f2a:	29 23       	and	r18, r25
     f2c:	25 bb       	out	0x15, r18	; 21
     f2e:	56 c0       	rjmp	.+172    	; 0xfdc <DIO_Init+0x1c6>
     f30:	91 b3       	in	r25, 0x11	; 17
     f32:	ba 01       	movw	r22, r20
     f34:	02 c0       	rjmp	.+4      	; 0xf3a <DIO_Init+0x124>
     f36:	66 0f       	add	r22, r22
     f38:	77 1f       	adc	r23, r23
     f3a:	3a 95       	dec	r19
     f3c:	e2 f7       	brpl	.-8      	; 0xf36 <DIO_Init+0x120>
     f3e:	9b 01       	movw	r18, r22
     f40:	20 95       	com	r18
     f42:	92 23       	and	r25, r18
     f44:	91 bb       	out	0x11, r25	; 17
     f46:	92 b3       	in	r25, 0x12	; 18
     f48:	29 23       	and	r18, r25
     f4a:	22 bb       	out	0x12, r18	; 18
     f4c:	47 c0       	rjmp	.+142    	; 0xfdc <DIO_Init+0x1c6>
     f4e:	21 30       	cpi	r18, 0x01	; 1
     f50:	b1 f0       	breq	.+44     	; 0xf7e <DIO_Init+0x168>
     f52:	28 f0       	brcs	.+10     	; 0xf5e <DIO_Init+0x148>
     f54:	22 30       	cpi	r18, 0x02	; 2
     f56:	19 f1       	breq	.+70     	; 0xf9e <DIO_Init+0x188>
     f58:	23 30       	cpi	r18, 0x03	; 3
     f5a:	89 f1       	breq	.+98     	; 0xfbe <DIO_Init+0x1a8>
     f5c:	3f c0       	rjmp	.+126    	; 0xfdc <DIO_Init+0x1c6>
     f5e:	9a b3       	in	r25, 0x1a	; 26
     f60:	ba 01       	movw	r22, r20
     f62:	02 c0       	rjmp	.+4      	; 0xf68 <DIO_Init+0x152>
     f64:	66 0f       	add	r22, r22
     f66:	77 1f       	adc	r23, r23
     f68:	3a 95       	dec	r19
     f6a:	e2 f7       	brpl	.-8      	; 0xf64 <DIO_Init+0x14e>
     f6c:	9b 01       	movw	r18, r22
     f6e:	36 2f       	mov	r19, r22
     f70:	30 95       	com	r19
     f72:	93 23       	and	r25, r19
     f74:	9a bb       	out	0x1a, r25	; 26
     f76:	9b b3       	in	r25, 0x1b	; 27
     f78:	29 2b       	or	r18, r25
     f7a:	2b bb       	out	0x1b, r18	; 27
     f7c:	2f c0       	rjmp	.+94     	; 0xfdc <DIO_Init+0x1c6>
     f7e:	97 b3       	in	r25, 0x17	; 23
     f80:	ba 01       	movw	r22, r20
     f82:	02 c0       	rjmp	.+4      	; 0xf88 <DIO_Init+0x172>
     f84:	66 0f       	add	r22, r22
     f86:	77 1f       	adc	r23, r23
     f88:	3a 95       	dec	r19
     f8a:	e2 f7       	brpl	.-8      	; 0xf84 <DIO_Init+0x16e>
     f8c:	9b 01       	movw	r18, r22
     f8e:	36 2f       	mov	r19, r22
     f90:	30 95       	com	r19
     f92:	93 23       	and	r25, r19
     f94:	97 bb       	out	0x17, r25	; 23
     f96:	98 b3       	in	r25, 0x18	; 24
     f98:	29 2b       	or	r18, r25
     f9a:	28 bb       	out	0x18, r18	; 24
     f9c:	1f c0       	rjmp	.+62     	; 0xfdc <DIO_Init+0x1c6>
     f9e:	94 b3       	in	r25, 0x14	; 20
     fa0:	ba 01       	movw	r22, r20
     fa2:	02 c0       	rjmp	.+4      	; 0xfa8 <DIO_Init+0x192>
     fa4:	66 0f       	add	r22, r22
     fa6:	77 1f       	adc	r23, r23
     fa8:	3a 95       	dec	r19
     faa:	e2 f7       	brpl	.-8      	; 0xfa4 <DIO_Init+0x18e>
     fac:	9b 01       	movw	r18, r22
     fae:	36 2f       	mov	r19, r22
     fb0:	30 95       	com	r19
     fb2:	93 23       	and	r25, r19
     fb4:	94 bb       	out	0x14, r25	; 20
     fb6:	95 b3       	in	r25, 0x15	; 21
     fb8:	29 2b       	or	r18, r25
     fba:	25 bb       	out	0x15, r18	; 21
     fbc:	0f c0       	rjmp	.+30     	; 0xfdc <DIO_Init+0x1c6>
     fbe:	91 b3       	in	r25, 0x11	; 17
     fc0:	ba 01       	movw	r22, r20
     fc2:	02 c0       	rjmp	.+4      	; 0xfc8 <DIO_Init+0x1b2>
     fc4:	66 0f       	add	r22, r22
     fc6:	77 1f       	adc	r23, r23
     fc8:	3a 95       	dec	r19
     fca:	e2 f7       	brpl	.-8      	; 0xfc4 <DIO_Init+0x1ae>
     fcc:	9b 01       	movw	r18, r22
     fce:	36 2f       	mov	r19, r22
     fd0:	30 95       	com	r19
     fd2:	93 23       	and	r25, r19
     fd4:	91 bb       	out	0x11, r25	; 17
     fd6:	92 b3       	in	r25, 0x12	; 18
     fd8:	29 2b       	or	r18, r25
     fda:	22 bb       	out	0x12, r18	; 18
     fdc:	8f 5f       	subi	r24, 0xFF	; 255
     fde:	80 32       	cpi	r24, 0x20	; 32
     fe0:	09 f0       	breq	.+2      	; 0xfe4 <DIO_Init+0x1ce>
     fe2:	1e cf       	rjmp	.-452    	; 0xe20 <DIO_Init+0xa>
     fe4:	08 95       	ret

00000fe6 <DIO_WritePin>:
     fe6:	98 2f       	mov	r25, r24
     fe8:	96 95       	lsr	r25
     fea:	96 95       	lsr	r25
     fec:	96 95       	lsr	r25
     fee:	87 70       	andi	r24, 0x07	; 7
     ff0:	61 30       	cpi	r22, 0x01	; 1
     ff2:	e1 f5       	brne	.+120    	; 0x106c <DIO_WritePin+0x86>
     ff4:	91 30       	cpi	r25, 0x01	; 1
     ff6:	99 f0       	breq	.+38     	; 0x101e <DIO_WritePin+0x38>
     ff8:	28 f0       	brcs	.+10     	; 0x1004 <DIO_WritePin+0x1e>
     ffa:	92 30       	cpi	r25, 0x02	; 2
     ffc:	e9 f0       	breq	.+58     	; 0x1038 <DIO_WritePin+0x52>
     ffe:	93 30       	cpi	r25, 0x03	; 3
    1000:	41 f1       	breq	.+80     	; 0x1052 <DIO_WritePin+0x6c>
    1002:	08 95       	ret
    1004:	4b b3       	in	r20, 0x1b	; 27
    1006:	21 e0       	ldi	r18, 0x01	; 1
    1008:	30 e0       	ldi	r19, 0x00	; 0
    100a:	b9 01       	movw	r22, r18
    100c:	02 c0       	rjmp	.+4      	; 0x1012 <DIO_WritePin+0x2c>
    100e:	66 0f       	add	r22, r22
    1010:	77 1f       	adc	r23, r23
    1012:	8a 95       	dec	r24
    1014:	e2 f7       	brpl	.-8      	; 0x100e <DIO_WritePin+0x28>
    1016:	cb 01       	movw	r24, r22
    1018:	84 2b       	or	r24, r20
    101a:	8b bb       	out	0x1b, r24	; 27
    101c:	08 95       	ret
    101e:	48 b3       	in	r20, 0x18	; 24
    1020:	21 e0       	ldi	r18, 0x01	; 1
    1022:	30 e0       	ldi	r19, 0x00	; 0
    1024:	b9 01       	movw	r22, r18
    1026:	02 c0       	rjmp	.+4      	; 0x102c <DIO_WritePin+0x46>
    1028:	66 0f       	add	r22, r22
    102a:	77 1f       	adc	r23, r23
    102c:	8a 95       	dec	r24
    102e:	e2 f7       	brpl	.-8      	; 0x1028 <DIO_WritePin+0x42>
    1030:	cb 01       	movw	r24, r22
    1032:	84 2b       	or	r24, r20
    1034:	88 bb       	out	0x18, r24	; 24
    1036:	08 95       	ret
    1038:	45 b3       	in	r20, 0x15	; 21
    103a:	21 e0       	ldi	r18, 0x01	; 1
    103c:	30 e0       	ldi	r19, 0x00	; 0
    103e:	b9 01       	movw	r22, r18
    1040:	02 c0       	rjmp	.+4      	; 0x1046 <DIO_WritePin+0x60>
    1042:	66 0f       	add	r22, r22
    1044:	77 1f       	adc	r23, r23
    1046:	8a 95       	dec	r24
    1048:	e2 f7       	brpl	.-8      	; 0x1042 <DIO_WritePin+0x5c>
    104a:	cb 01       	movw	r24, r22
    104c:	84 2b       	or	r24, r20
    104e:	85 bb       	out	0x15, r24	; 21
    1050:	08 95       	ret
    1052:	42 b3       	in	r20, 0x12	; 18
    1054:	21 e0       	ldi	r18, 0x01	; 1
    1056:	30 e0       	ldi	r19, 0x00	; 0
    1058:	b9 01       	movw	r22, r18
    105a:	02 c0       	rjmp	.+4      	; 0x1060 <DIO_WritePin+0x7a>
    105c:	66 0f       	add	r22, r22
    105e:	77 1f       	adc	r23, r23
    1060:	8a 95       	dec	r24
    1062:	e2 f7       	brpl	.-8      	; 0x105c <DIO_WritePin+0x76>
    1064:	cb 01       	movw	r24, r22
    1066:	84 2b       	or	r24, r20
    1068:	82 bb       	out	0x12, r24	; 18
    106a:	08 95       	ret
    106c:	61 11       	cpse	r22, r1
    106e:	3f c0       	rjmp	.+126    	; 0x10ee <DIO_WritePin+0x108>
    1070:	91 30       	cpi	r25, 0x01	; 1
    1072:	a1 f0       	breq	.+40     	; 0x109c <DIO_WritePin+0xb6>
    1074:	28 f0       	brcs	.+10     	; 0x1080 <DIO_WritePin+0x9a>
    1076:	92 30       	cpi	r25, 0x02	; 2
    1078:	f9 f0       	breq	.+62     	; 0x10b8 <DIO_WritePin+0xd2>
    107a:	93 30       	cpi	r25, 0x03	; 3
    107c:	59 f1       	breq	.+86     	; 0x10d4 <DIO_WritePin+0xee>
    107e:	08 95       	ret
    1080:	4b b3       	in	r20, 0x1b	; 27
    1082:	21 e0       	ldi	r18, 0x01	; 1
    1084:	30 e0       	ldi	r19, 0x00	; 0
    1086:	b9 01       	movw	r22, r18
    1088:	02 c0       	rjmp	.+4      	; 0x108e <DIO_WritePin+0xa8>
    108a:	66 0f       	add	r22, r22
    108c:	77 1f       	adc	r23, r23
    108e:	8a 95       	dec	r24
    1090:	e2 f7       	brpl	.-8      	; 0x108a <DIO_WritePin+0xa4>
    1092:	cb 01       	movw	r24, r22
    1094:	80 95       	com	r24
    1096:	84 23       	and	r24, r20
    1098:	8b bb       	out	0x1b, r24	; 27
    109a:	08 95       	ret
    109c:	48 b3       	in	r20, 0x18	; 24
    109e:	21 e0       	ldi	r18, 0x01	; 1
    10a0:	30 e0       	ldi	r19, 0x00	; 0
    10a2:	b9 01       	movw	r22, r18
    10a4:	02 c0       	rjmp	.+4      	; 0x10aa <DIO_WritePin+0xc4>
    10a6:	66 0f       	add	r22, r22
    10a8:	77 1f       	adc	r23, r23
    10aa:	8a 95       	dec	r24
    10ac:	e2 f7       	brpl	.-8      	; 0x10a6 <DIO_WritePin+0xc0>
    10ae:	cb 01       	movw	r24, r22
    10b0:	80 95       	com	r24
    10b2:	84 23       	and	r24, r20
    10b4:	88 bb       	out	0x18, r24	; 24
    10b6:	08 95       	ret
    10b8:	45 b3       	in	r20, 0x15	; 21
    10ba:	21 e0       	ldi	r18, 0x01	; 1
    10bc:	30 e0       	ldi	r19, 0x00	; 0
    10be:	b9 01       	movw	r22, r18
    10c0:	02 c0       	rjmp	.+4      	; 0x10c6 <DIO_WritePin+0xe0>
    10c2:	66 0f       	add	r22, r22
    10c4:	77 1f       	adc	r23, r23
    10c6:	8a 95       	dec	r24
    10c8:	e2 f7       	brpl	.-8      	; 0x10c2 <DIO_WritePin+0xdc>
    10ca:	cb 01       	movw	r24, r22
    10cc:	80 95       	com	r24
    10ce:	84 23       	and	r24, r20
    10d0:	85 bb       	out	0x15, r24	; 21
    10d2:	08 95       	ret
    10d4:	42 b3       	in	r20, 0x12	; 18
    10d6:	21 e0       	ldi	r18, 0x01	; 1
    10d8:	30 e0       	ldi	r19, 0x00	; 0
    10da:	b9 01       	movw	r22, r18
    10dc:	02 c0       	rjmp	.+4      	; 0x10e2 <DIO_WritePin+0xfc>
    10de:	66 0f       	add	r22, r22
    10e0:	77 1f       	adc	r23, r23
    10e2:	8a 95       	dec	r24
    10e4:	e2 f7       	brpl	.-8      	; 0x10de <DIO_WritePin+0xf8>
    10e6:	cb 01       	movw	r24, r22
    10e8:	80 95       	com	r24
    10ea:	84 23       	and	r24, r20
    10ec:	82 bb       	out	0x12, r24	; 18
    10ee:	08 95       	ret

000010f0 <DIO_ReadPin>:
    10f0:	28 2f       	mov	r18, r24
    10f2:	27 70       	andi	r18, 0x07	; 7
    10f4:	86 95       	lsr	r24
    10f6:	86 95       	lsr	r24
    10f8:	86 95       	lsr	r24
    10fa:	81 30       	cpi	r24, 0x01	; 1
    10fc:	79 f0       	breq	.+30     	; 0x111c <DIO_ReadPin+0x2c>
    10fe:	28 f0       	brcs	.+10     	; 0x110a <DIO_ReadPin+0x1a>
    1100:	82 30       	cpi	r24, 0x02	; 2
    1102:	a9 f0       	breq	.+42     	; 0x112e <DIO_ReadPin+0x3e>
    1104:	83 30       	cpi	r24, 0x03	; 3
    1106:	e1 f0       	breq	.+56     	; 0x1140 <DIO_ReadPin+0x50>
    1108:	24 c0       	rjmp	.+72     	; 0x1152 <DIO_ReadPin+0x62>
    110a:	89 b3       	in	r24, 0x19	; 25
    110c:	90 e0       	ldi	r25, 0x00	; 0
    110e:	02 c0       	rjmp	.+4      	; 0x1114 <DIO_ReadPin+0x24>
    1110:	95 95       	asr	r25
    1112:	87 95       	ror	r24
    1114:	2a 95       	dec	r18
    1116:	e2 f7       	brpl	.-8      	; 0x1110 <DIO_ReadPin+0x20>
    1118:	81 70       	andi	r24, 0x01	; 1
    111a:	08 95       	ret
    111c:	86 b3       	in	r24, 0x16	; 22
    111e:	90 e0       	ldi	r25, 0x00	; 0
    1120:	02 c0       	rjmp	.+4      	; 0x1126 <DIO_ReadPin+0x36>
    1122:	95 95       	asr	r25
    1124:	87 95       	ror	r24
    1126:	2a 95       	dec	r18
    1128:	e2 f7       	brpl	.-8      	; 0x1122 <DIO_ReadPin+0x32>
    112a:	81 70       	andi	r24, 0x01	; 1
    112c:	08 95       	ret
    112e:	83 b3       	in	r24, 0x13	; 19
    1130:	90 e0       	ldi	r25, 0x00	; 0
    1132:	02 c0       	rjmp	.+4      	; 0x1138 <DIO_ReadPin+0x48>
    1134:	95 95       	asr	r25
    1136:	87 95       	ror	r24
    1138:	2a 95       	dec	r18
    113a:	e2 f7       	brpl	.-8      	; 0x1134 <DIO_ReadPin+0x44>
    113c:	81 70       	andi	r24, 0x01	; 1
    113e:	08 95       	ret
    1140:	80 b3       	in	r24, 0x10	; 16
    1142:	90 e0       	ldi	r25, 0x00	; 0
    1144:	02 c0       	rjmp	.+4      	; 0x114a <DIO_ReadPin+0x5a>
    1146:	95 95       	asr	r25
    1148:	87 95       	ror	r24
    114a:	2a 95       	dec	r18
    114c:	e2 f7       	brpl	.-8      	; 0x1146 <DIO_ReadPin+0x56>
    114e:	81 70       	andi	r24, 0x01	; 1
    1150:	08 95       	ret
    1152:	80 e0       	ldi	r24, 0x00	; 0
    1154:	08 95       	ret

00001156 <main>:
    1156:	0e 94 0b 07 	call	0xe16	; 0xe16 <DIO_Init>
    115a:	0e 94 9e 05 	call	0xb3c	; 0xb3c <LCD_Init>
    115e:	0e 94 9e 06 	call	0xd3c	; 0xd3c <KEYPAD_Init>
    1162:	0e 94 84 01 	call	0x308	; 0x308 <CALCULATOR_Init>
    1166:	0e 94 c8 01 	call	0x390	; 0x390 <CALCULATOR_Runnable>
    116a:	fd cf       	rjmp	.-6      	; 0x1166 <main+0x10>

0000116c <__subsf3>:
    116c:	50 58       	subi	r21, 0x80	; 128

0000116e <__addsf3>:
    116e:	bb 27       	eor	r27, r27
    1170:	aa 27       	eor	r26, r26
    1172:	0e 94 ce 08 	call	0x119c	; 0x119c <__addsf3x>
    1176:	0c 94 1f 0a 	jmp	0x143e	; 0x143e <__fp_round>
    117a:	0e 94 11 0a 	call	0x1422	; 0x1422 <__fp_pscA>
    117e:	38 f0       	brcs	.+14     	; 0x118e <__addsf3+0x20>
    1180:	0e 94 18 0a 	call	0x1430	; 0x1430 <__fp_pscB>
    1184:	20 f0       	brcs	.+8      	; 0x118e <__addsf3+0x20>
    1186:	39 f4       	brne	.+14     	; 0x1196 <__addsf3+0x28>
    1188:	9f 3f       	cpi	r25, 0xFF	; 255
    118a:	19 f4       	brne	.+6      	; 0x1192 <__addsf3+0x24>
    118c:	26 f4       	brtc	.+8      	; 0x1196 <__addsf3+0x28>
    118e:	0c 94 0e 0a 	jmp	0x141c	; 0x141c <__fp_nan>
    1192:	0e f4       	brtc	.+2      	; 0x1196 <__addsf3+0x28>
    1194:	e0 95       	com	r30
    1196:	e7 fb       	bst	r30, 7
    1198:	0c 94 08 0a 	jmp	0x1410	; 0x1410 <__fp_inf>

0000119c <__addsf3x>:
    119c:	e9 2f       	mov	r30, r25
    119e:	0e 94 30 0a 	call	0x1460	; 0x1460 <__fp_split3>
    11a2:	58 f3       	brcs	.-42     	; 0x117a <__addsf3+0xc>
    11a4:	ba 17       	cp	r27, r26
    11a6:	62 07       	cpc	r22, r18
    11a8:	73 07       	cpc	r23, r19
    11aa:	84 07       	cpc	r24, r20
    11ac:	95 07       	cpc	r25, r21
    11ae:	20 f0       	brcs	.+8      	; 0x11b8 <__addsf3x+0x1c>
    11b0:	79 f4       	brne	.+30     	; 0x11d0 <__addsf3x+0x34>
    11b2:	a6 f5       	brtc	.+104    	; 0x121c <__addsf3x+0x80>
    11b4:	0c 94 52 0a 	jmp	0x14a4	; 0x14a4 <__fp_zero>
    11b8:	0e f4       	brtc	.+2      	; 0x11bc <__addsf3x+0x20>
    11ba:	e0 95       	com	r30
    11bc:	0b 2e       	mov	r0, r27
    11be:	ba 2f       	mov	r27, r26
    11c0:	a0 2d       	mov	r26, r0
    11c2:	0b 01       	movw	r0, r22
    11c4:	b9 01       	movw	r22, r18
    11c6:	90 01       	movw	r18, r0
    11c8:	0c 01       	movw	r0, r24
    11ca:	ca 01       	movw	r24, r20
    11cc:	a0 01       	movw	r20, r0
    11ce:	11 24       	eor	r1, r1
    11d0:	ff 27       	eor	r31, r31
    11d2:	59 1b       	sub	r21, r25
    11d4:	99 f0       	breq	.+38     	; 0x11fc <__addsf3x+0x60>
    11d6:	59 3f       	cpi	r21, 0xF9	; 249
    11d8:	50 f4       	brcc	.+20     	; 0x11ee <__addsf3x+0x52>
    11da:	50 3e       	cpi	r21, 0xE0	; 224
    11dc:	68 f1       	brcs	.+90     	; 0x1238 <__addsf3x+0x9c>
    11de:	1a 16       	cp	r1, r26
    11e0:	f0 40       	sbci	r31, 0x00	; 0
    11e2:	a2 2f       	mov	r26, r18
    11e4:	23 2f       	mov	r18, r19
    11e6:	34 2f       	mov	r19, r20
    11e8:	44 27       	eor	r20, r20
    11ea:	58 5f       	subi	r21, 0xF8	; 248
    11ec:	f3 cf       	rjmp	.-26     	; 0x11d4 <__addsf3x+0x38>
    11ee:	46 95       	lsr	r20
    11f0:	37 95       	ror	r19
    11f2:	27 95       	ror	r18
    11f4:	a7 95       	ror	r26
    11f6:	f0 40       	sbci	r31, 0x00	; 0
    11f8:	53 95       	inc	r21
    11fa:	c9 f7       	brne	.-14     	; 0x11ee <__addsf3x+0x52>
    11fc:	7e f4       	brtc	.+30     	; 0x121c <__addsf3x+0x80>
    11fe:	1f 16       	cp	r1, r31
    1200:	ba 0b       	sbc	r27, r26
    1202:	62 0b       	sbc	r22, r18
    1204:	73 0b       	sbc	r23, r19
    1206:	84 0b       	sbc	r24, r20
    1208:	ba f0       	brmi	.+46     	; 0x1238 <__addsf3x+0x9c>
    120a:	91 50       	subi	r25, 0x01	; 1
    120c:	a1 f0       	breq	.+40     	; 0x1236 <__addsf3x+0x9a>
    120e:	ff 0f       	add	r31, r31
    1210:	bb 1f       	adc	r27, r27
    1212:	66 1f       	adc	r22, r22
    1214:	77 1f       	adc	r23, r23
    1216:	88 1f       	adc	r24, r24
    1218:	c2 f7       	brpl	.-16     	; 0x120a <__addsf3x+0x6e>
    121a:	0e c0       	rjmp	.+28     	; 0x1238 <__addsf3x+0x9c>
    121c:	ba 0f       	add	r27, r26
    121e:	62 1f       	adc	r22, r18
    1220:	73 1f       	adc	r23, r19
    1222:	84 1f       	adc	r24, r20
    1224:	48 f4       	brcc	.+18     	; 0x1238 <__addsf3x+0x9c>
    1226:	87 95       	ror	r24
    1228:	77 95       	ror	r23
    122a:	67 95       	ror	r22
    122c:	b7 95       	ror	r27
    122e:	f7 95       	ror	r31
    1230:	9e 3f       	cpi	r25, 0xFE	; 254
    1232:	08 f0       	brcs	.+2      	; 0x1236 <__addsf3x+0x9a>
    1234:	b0 cf       	rjmp	.-160    	; 0x1196 <__addsf3+0x28>
    1236:	93 95       	inc	r25
    1238:	88 0f       	add	r24, r24
    123a:	08 f0       	brcs	.+2      	; 0x123e <__addsf3x+0xa2>
    123c:	99 27       	eor	r25, r25
    123e:	ee 0f       	add	r30, r30
    1240:	97 95       	ror	r25
    1242:	87 95       	ror	r24
    1244:	08 95       	ret

00001246 <__divsf3>:
    1246:	0e 94 37 09 	call	0x126e	; 0x126e <__divsf3x>
    124a:	0c 94 1f 0a 	jmp	0x143e	; 0x143e <__fp_round>
    124e:	0e 94 18 0a 	call	0x1430	; 0x1430 <__fp_pscB>
    1252:	58 f0       	brcs	.+22     	; 0x126a <__divsf3+0x24>
    1254:	0e 94 11 0a 	call	0x1422	; 0x1422 <__fp_pscA>
    1258:	40 f0       	brcs	.+16     	; 0x126a <__divsf3+0x24>
    125a:	29 f4       	brne	.+10     	; 0x1266 <__divsf3+0x20>
    125c:	5f 3f       	cpi	r21, 0xFF	; 255
    125e:	29 f0       	breq	.+10     	; 0x126a <__divsf3+0x24>
    1260:	0c 94 08 0a 	jmp	0x1410	; 0x1410 <__fp_inf>
    1264:	51 11       	cpse	r21, r1
    1266:	0c 94 53 0a 	jmp	0x14a6	; 0x14a6 <__fp_szero>
    126a:	0c 94 0e 0a 	jmp	0x141c	; 0x141c <__fp_nan>

0000126e <__divsf3x>:
    126e:	0e 94 30 0a 	call	0x1460	; 0x1460 <__fp_split3>
    1272:	68 f3       	brcs	.-38     	; 0x124e <__divsf3+0x8>

00001274 <__divsf3_pse>:
    1274:	99 23       	and	r25, r25
    1276:	b1 f3       	breq	.-20     	; 0x1264 <__divsf3+0x1e>
    1278:	55 23       	and	r21, r21
    127a:	91 f3       	breq	.-28     	; 0x1260 <__divsf3+0x1a>
    127c:	95 1b       	sub	r25, r21
    127e:	55 0b       	sbc	r21, r21
    1280:	bb 27       	eor	r27, r27
    1282:	aa 27       	eor	r26, r26
    1284:	62 17       	cp	r22, r18
    1286:	73 07       	cpc	r23, r19
    1288:	84 07       	cpc	r24, r20
    128a:	38 f0       	brcs	.+14     	; 0x129a <__divsf3_pse+0x26>
    128c:	9f 5f       	subi	r25, 0xFF	; 255
    128e:	5f 4f       	sbci	r21, 0xFF	; 255
    1290:	22 0f       	add	r18, r18
    1292:	33 1f       	adc	r19, r19
    1294:	44 1f       	adc	r20, r20
    1296:	aa 1f       	adc	r26, r26
    1298:	a9 f3       	breq	.-22     	; 0x1284 <__divsf3_pse+0x10>
    129a:	35 d0       	rcall	.+106    	; 0x1306 <__divsf3_pse+0x92>
    129c:	0e 2e       	mov	r0, r30
    129e:	3a f0       	brmi	.+14     	; 0x12ae <__divsf3_pse+0x3a>
    12a0:	e0 e8       	ldi	r30, 0x80	; 128
    12a2:	32 d0       	rcall	.+100    	; 0x1308 <__divsf3_pse+0x94>
    12a4:	91 50       	subi	r25, 0x01	; 1
    12a6:	50 40       	sbci	r21, 0x00	; 0
    12a8:	e6 95       	lsr	r30
    12aa:	00 1c       	adc	r0, r0
    12ac:	ca f7       	brpl	.-14     	; 0x12a0 <__divsf3_pse+0x2c>
    12ae:	2b d0       	rcall	.+86     	; 0x1306 <__divsf3_pse+0x92>
    12b0:	fe 2f       	mov	r31, r30
    12b2:	29 d0       	rcall	.+82     	; 0x1306 <__divsf3_pse+0x92>
    12b4:	66 0f       	add	r22, r22
    12b6:	77 1f       	adc	r23, r23
    12b8:	88 1f       	adc	r24, r24
    12ba:	bb 1f       	adc	r27, r27
    12bc:	26 17       	cp	r18, r22
    12be:	37 07       	cpc	r19, r23
    12c0:	48 07       	cpc	r20, r24
    12c2:	ab 07       	cpc	r26, r27
    12c4:	b0 e8       	ldi	r27, 0x80	; 128
    12c6:	09 f0       	breq	.+2      	; 0x12ca <__divsf3_pse+0x56>
    12c8:	bb 0b       	sbc	r27, r27
    12ca:	80 2d       	mov	r24, r0
    12cc:	bf 01       	movw	r22, r30
    12ce:	ff 27       	eor	r31, r31
    12d0:	93 58       	subi	r25, 0x83	; 131
    12d2:	5f 4f       	sbci	r21, 0xFF	; 255
    12d4:	3a f0       	brmi	.+14     	; 0x12e4 <__divsf3_pse+0x70>
    12d6:	9e 3f       	cpi	r25, 0xFE	; 254
    12d8:	51 05       	cpc	r21, r1
    12da:	78 f0       	brcs	.+30     	; 0x12fa <__divsf3_pse+0x86>
    12dc:	0c 94 08 0a 	jmp	0x1410	; 0x1410 <__fp_inf>
    12e0:	0c 94 53 0a 	jmp	0x14a6	; 0x14a6 <__fp_szero>
    12e4:	5f 3f       	cpi	r21, 0xFF	; 255
    12e6:	e4 f3       	brlt	.-8      	; 0x12e0 <__divsf3_pse+0x6c>
    12e8:	98 3e       	cpi	r25, 0xE8	; 232
    12ea:	d4 f3       	brlt	.-12     	; 0x12e0 <__divsf3_pse+0x6c>
    12ec:	86 95       	lsr	r24
    12ee:	77 95       	ror	r23
    12f0:	67 95       	ror	r22
    12f2:	b7 95       	ror	r27
    12f4:	f7 95       	ror	r31
    12f6:	9f 5f       	subi	r25, 0xFF	; 255
    12f8:	c9 f7       	brne	.-14     	; 0x12ec <__divsf3_pse+0x78>
    12fa:	88 0f       	add	r24, r24
    12fc:	91 1d       	adc	r25, r1
    12fe:	96 95       	lsr	r25
    1300:	87 95       	ror	r24
    1302:	97 f9       	bld	r25, 7
    1304:	08 95       	ret
    1306:	e1 e0       	ldi	r30, 0x01	; 1
    1308:	66 0f       	add	r22, r22
    130a:	77 1f       	adc	r23, r23
    130c:	88 1f       	adc	r24, r24
    130e:	bb 1f       	adc	r27, r27
    1310:	62 17       	cp	r22, r18
    1312:	73 07       	cpc	r23, r19
    1314:	84 07       	cpc	r24, r20
    1316:	ba 07       	cpc	r27, r26
    1318:	20 f0       	brcs	.+8      	; 0x1322 <__divsf3_pse+0xae>
    131a:	62 1b       	sub	r22, r18
    131c:	73 0b       	sbc	r23, r19
    131e:	84 0b       	sbc	r24, r20
    1320:	ba 0b       	sbc	r27, r26
    1322:	ee 1f       	adc	r30, r30
    1324:	88 f7       	brcc	.-30     	; 0x1308 <__divsf3_pse+0x94>
    1326:	e0 95       	com	r30
    1328:	08 95       	ret

0000132a <__fixsfsi>:
    132a:	0e 94 9c 09 	call	0x1338	; 0x1338 <__fixunssfsi>
    132e:	68 94       	set
    1330:	b1 11       	cpse	r27, r1
    1332:	0c 94 53 0a 	jmp	0x14a6	; 0x14a6 <__fp_szero>
    1336:	08 95       	ret

00001338 <__fixunssfsi>:
    1338:	0e 94 38 0a 	call	0x1470	; 0x1470 <__fp_splitA>
    133c:	88 f0       	brcs	.+34     	; 0x1360 <__fixunssfsi+0x28>
    133e:	9f 57       	subi	r25, 0x7F	; 127
    1340:	98 f0       	brcs	.+38     	; 0x1368 <__fixunssfsi+0x30>
    1342:	b9 2f       	mov	r27, r25
    1344:	99 27       	eor	r25, r25
    1346:	b7 51       	subi	r27, 0x17	; 23
    1348:	b0 f0       	brcs	.+44     	; 0x1376 <__fixunssfsi+0x3e>
    134a:	e1 f0       	breq	.+56     	; 0x1384 <__fixunssfsi+0x4c>
    134c:	66 0f       	add	r22, r22
    134e:	77 1f       	adc	r23, r23
    1350:	88 1f       	adc	r24, r24
    1352:	99 1f       	adc	r25, r25
    1354:	1a f0       	brmi	.+6      	; 0x135c <__fixunssfsi+0x24>
    1356:	ba 95       	dec	r27
    1358:	c9 f7       	brne	.-14     	; 0x134c <__fixunssfsi+0x14>
    135a:	14 c0       	rjmp	.+40     	; 0x1384 <__fixunssfsi+0x4c>
    135c:	b1 30       	cpi	r27, 0x01	; 1
    135e:	91 f0       	breq	.+36     	; 0x1384 <__fixunssfsi+0x4c>
    1360:	0e 94 52 0a 	call	0x14a4	; 0x14a4 <__fp_zero>
    1364:	b1 e0       	ldi	r27, 0x01	; 1
    1366:	08 95       	ret
    1368:	0c 94 52 0a 	jmp	0x14a4	; 0x14a4 <__fp_zero>
    136c:	67 2f       	mov	r22, r23
    136e:	78 2f       	mov	r23, r24
    1370:	88 27       	eor	r24, r24
    1372:	b8 5f       	subi	r27, 0xF8	; 248
    1374:	39 f0       	breq	.+14     	; 0x1384 <__fixunssfsi+0x4c>
    1376:	b9 3f       	cpi	r27, 0xF9	; 249
    1378:	cc f3       	brlt	.-14     	; 0x136c <__fixunssfsi+0x34>
    137a:	86 95       	lsr	r24
    137c:	77 95       	ror	r23
    137e:	67 95       	ror	r22
    1380:	b3 95       	inc	r27
    1382:	d9 f7       	brne	.-10     	; 0x137a <__fixunssfsi+0x42>
    1384:	3e f4       	brtc	.+14     	; 0x1394 <__fixunssfsi+0x5c>
    1386:	90 95       	com	r25
    1388:	80 95       	com	r24
    138a:	70 95       	com	r23
    138c:	61 95       	neg	r22
    138e:	7f 4f       	sbci	r23, 0xFF	; 255
    1390:	8f 4f       	sbci	r24, 0xFF	; 255
    1392:	9f 4f       	sbci	r25, 0xFF	; 255
    1394:	08 95       	ret

00001396 <__floatunsisf>:
    1396:	e8 94       	clt
    1398:	09 c0       	rjmp	.+18     	; 0x13ac <__floatsisf+0x12>

0000139a <__floatsisf>:
    139a:	97 fb       	bst	r25, 7
    139c:	3e f4       	brtc	.+14     	; 0x13ac <__floatsisf+0x12>
    139e:	90 95       	com	r25
    13a0:	80 95       	com	r24
    13a2:	70 95       	com	r23
    13a4:	61 95       	neg	r22
    13a6:	7f 4f       	sbci	r23, 0xFF	; 255
    13a8:	8f 4f       	sbci	r24, 0xFF	; 255
    13aa:	9f 4f       	sbci	r25, 0xFF	; 255
    13ac:	99 23       	and	r25, r25
    13ae:	a9 f0       	breq	.+42     	; 0x13da <__floatsisf+0x40>
    13b0:	f9 2f       	mov	r31, r25
    13b2:	96 e9       	ldi	r25, 0x96	; 150
    13b4:	bb 27       	eor	r27, r27
    13b6:	93 95       	inc	r25
    13b8:	f6 95       	lsr	r31
    13ba:	87 95       	ror	r24
    13bc:	77 95       	ror	r23
    13be:	67 95       	ror	r22
    13c0:	b7 95       	ror	r27
    13c2:	f1 11       	cpse	r31, r1
    13c4:	f8 cf       	rjmp	.-16     	; 0x13b6 <__floatsisf+0x1c>
    13c6:	fa f4       	brpl	.+62     	; 0x1406 <__floatsisf+0x6c>
    13c8:	bb 0f       	add	r27, r27
    13ca:	11 f4       	brne	.+4      	; 0x13d0 <__floatsisf+0x36>
    13cc:	60 ff       	sbrs	r22, 0
    13ce:	1b c0       	rjmp	.+54     	; 0x1406 <__floatsisf+0x6c>
    13d0:	6f 5f       	subi	r22, 0xFF	; 255
    13d2:	7f 4f       	sbci	r23, 0xFF	; 255
    13d4:	8f 4f       	sbci	r24, 0xFF	; 255
    13d6:	9f 4f       	sbci	r25, 0xFF	; 255
    13d8:	16 c0       	rjmp	.+44     	; 0x1406 <__floatsisf+0x6c>
    13da:	88 23       	and	r24, r24
    13dc:	11 f0       	breq	.+4      	; 0x13e2 <__floatsisf+0x48>
    13de:	96 e9       	ldi	r25, 0x96	; 150
    13e0:	11 c0       	rjmp	.+34     	; 0x1404 <__floatsisf+0x6a>
    13e2:	77 23       	and	r23, r23
    13e4:	21 f0       	breq	.+8      	; 0x13ee <__floatsisf+0x54>
    13e6:	9e e8       	ldi	r25, 0x8E	; 142
    13e8:	87 2f       	mov	r24, r23
    13ea:	76 2f       	mov	r23, r22
    13ec:	05 c0       	rjmp	.+10     	; 0x13f8 <__floatsisf+0x5e>
    13ee:	66 23       	and	r22, r22
    13f0:	71 f0       	breq	.+28     	; 0x140e <__floatsisf+0x74>
    13f2:	96 e8       	ldi	r25, 0x86	; 134
    13f4:	86 2f       	mov	r24, r22
    13f6:	70 e0       	ldi	r23, 0x00	; 0
    13f8:	60 e0       	ldi	r22, 0x00	; 0
    13fa:	2a f0       	brmi	.+10     	; 0x1406 <__floatsisf+0x6c>
    13fc:	9a 95       	dec	r25
    13fe:	66 0f       	add	r22, r22
    1400:	77 1f       	adc	r23, r23
    1402:	88 1f       	adc	r24, r24
    1404:	da f7       	brpl	.-10     	; 0x13fc <__floatsisf+0x62>
    1406:	88 0f       	add	r24, r24
    1408:	96 95       	lsr	r25
    140a:	87 95       	ror	r24
    140c:	97 f9       	bld	r25, 7
    140e:	08 95       	ret

00001410 <__fp_inf>:
    1410:	97 f9       	bld	r25, 7
    1412:	9f 67       	ori	r25, 0x7F	; 127
    1414:	80 e8       	ldi	r24, 0x80	; 128
    1416:	70 e0       	ldi	r23, 0x00	; 0
    1418:	60 e0       	ldi	r22, 0x00	; 0
    141a:	08 95       	ret

0000141c <__fp_nan>:
    141c:	9f ef       	ldi	r25, 0xFF	; 255
    141e:	80 ec       	ldi	r24, 0xC0	; 192
    1420:	08 95       	ret

00001422 <__fp_pscA>:
    1422:	00 24       	eor	r0, r0
    1424:	0a 94       	dec	r0
    1426:	16 16       	cp	r1, r22
    1428:	17 06       	cpc	r1, r23
    142a:	18 06       	cpc	r1, r24
    142c:	09 06       	cpc	r0, r25
    142e:	08 95       	ret

00001430 <__fp_pscB>:
    1430:	00 24       	eor	r0, r0
    1432:	0a 94       	dec	r0
    1434:	12 16       	cp	r1, r18
    1436:	13 06       	cpc	r1, r19
    1438:	14 06       	cpc	r1, r20
    143a:	05 06       	cpc	r0, r21
    143c:	08 95       	ret

0000143e <__fp_round>:
    143e:	09 2e       	mov	r0, r25
    1440:	03 94       	inc	r0
    1442:	00 0c       	add	r0, r0
    1444:	11 f4       	brne	.+4      	; 0x144a <__fp_round+0xc>
    1446:	88 23       	and	r24, r24
    1448:	52 f0       	brmi	.+20     	; 0x145e <__fp_round+0x20>
    144a:	bb 0f       	add	r27, r27
    144c:	40 f4       	brcc	.+16     	; 0x145e <__fp_round+0x20>
    144e:	bf 2b       	or	r27, r31
    1450:	11 f4       	brne	.+4      	; 0x1456 <__fp_round+0x18>
    1452:	60 ff       	sbrs	r22, 0
    1454:	04 c0       	rjmp	.+8      	; 0x145e <__fp_round+0x20>
    1456:	6f 5f       	subi	r22, 0xFF	; 255
    1458:	7f 4f       	sbci	r23, 0xFF	; 255
    145a:	8f 4f       	sbci	r24, 0xFF	; 255
    145c:	9f 4f       	sbci	r25, 0xFF	; 255
    145e:	08 95       	ret

00001460 <__fp_split3>:
    1460:	57 fd       	sbrc	r21, 7
    1462:	90 58       	subi	r25, 0x80	; 128
    1464:	44 0f       	add	r20, r20
    1466:	55 1f       	adc	r21, r21
    1468:	59 f0       	breq	.+22     	; 0x1480 <__fp_splitA+0x10>
    146a:	5f 3f       	cpi	r21, 0xFF	; 255
    146c:	71 f0       	breq	.+28     	; 0x148a <__fp_splitA+0x1a>
    146e:	47 95       	ror	r20

00001470 <__fp_splitA>:
    1470:	88 0f       	add	r24, r24
    1472:	97 fb       	bst	r25, 7
    1474:	99 1f       	adc	r25, r25
    1476:	61 f0       	breq	.+24     	; 0x1490 <__fp_splitA+0x20>
    1478:	9f 3f       	cpi	r25, 0xFF	; 255
    147a:	79 f0       	breq	.+30     	; 0x149a <__fp_splitA+0x2a>
    147c:	87 95       	ror	r24
    147e:	08 95       	ret
    1480:	12 16       	cp	r1, r18
    1482:	13 06       	cpc	r1, r19
    1484:	14 06       	cpc	r1, r20
    1486:	55 1f       	adc	r21, r21
    1488:	f2 cf       	rjmp	.-28     	; 0x146e <__fp_split3+0xe>
    148a:	46 95       	lsr	r20
    148c:	f1 df       	rcall	.-30     	; 0x1470 <__fp_splitA>
    148e:	08 c0       	rjmp	.+16     	; 0x14a0 <__fp_splitA+0x30>
    1490:	16 16       	cp	r1, r22
    1492:	17 06       	cpc	r1, r23
    1494:	18 06       	cpc	r1, r24
    1496:	99 1f       	adc	r25, r25
    1498:	f1 cf       	rjmp	.-30     	; 0x147c <__fp_splitA+0xc>
    149a:	86 95       	lsr	r24
    149c:	71 05       	cpc	r23, r1
    149e:	61 05       	cpc	r22, r1
    14a0:	08 94       	sec
    14a2:	08 95       	ret

000014a4 <__fp_zero>:
    14a4:	e8 94       	clt

000014a6 <__fp_szero>:
    14a6:	bb 27       	eor	r27, r27
    14a8:	66 27       	eor	r22, r22
    14aa:	77 27       	eor	r23, r23
    14ac:	cb 01       	movw	r24, r22
    14ae:	97 f9       	bld	r25, 7
    14b0:	08 95       	ret

000014b2 <__mulsf3>:
    14b2:	0e 94 6c 0a 	call	0x14d8	; 0x14d8 <__mulsf3x>
    14b6:	0c 94 1f 0a 	jmp	0x143e	; 0x143e <__fp_round>
    14ba:	0e 94 11 0a 	call	0x1422	; 0x1422 <__fp_pscA>
    14be:	38 f0       	brcs	.+14     	; 0x14ce <__mulsf3+0x1c>
    14c0:	0e 94 18 0a 	call	0x1430	; 0x1430 <__fp_pscB>
    14c4:	20 f0       	brcs	.+8      	; 0x14ce <__mulsf3+0x1c>
    14c6:	95 23       	and	r25, r21
    14c8:	11 f0       	breq	.+4      	; 0x14ce <__mulsf3+0x1c>
    14ca:	0c 94 08 0a 	jmp	0x1410	; 0x1410 <__fp_inf>
    14ce:	0c 94 0e 0a 	jmp	0x141c	; 0x141c <__fp_nan>
    14d2:	11 24       	eor	r1, r1
    14d4:	0c 94 53 0a 	jmp	0x14a6	; 0x14a6 <__fp_szero>

000014d8 <__mulsf3x>:
    14d8:	0e 94 30 0a 	call	0x1460	; 0x1460 <__fp_split3>
    14dc:	70 f3       	brcs	.-36     	; 0x14ba <__mulsf3+0x8>

000014de <__mulsf3_pse>:
    14de:	95 9f       	mul	r25, r21
    14e0:	c1 f3       	breq	.-16     	; 0x14d2 <__mulsf3+0x20>
    14e2:	95 0f       	add	r25, r21
    14e4:	50 e0       	ldi	r21, 0x00	; 0
    14e6:	55 1f       	adc	r21, r21
    14e8:	62 9f       	mul	r22, r18
    14ea:	f0 01       	movw	r30, r0
    14ec:	72 9f       	mul	r23, r18
    14ee:	bb 27       	eor	r27, r27
    14f0:	f0 0d       	add	r31, r0
    14f2:	b1 1d       	adc	r27, r1
    14f4:	63 9f       	mul	r22, r19
    14f6:	aa 27       	eor	r26, r26
    14f8:	f0 0d       	add	r31, r0
    14fa:	b1 1d       	adc	r27, r1
    14fc:	aa 1f       	adc	r26, r26
    14fe:	64 9f       	mul	r22, r20
    1500:	66 27       	eor	r22, r22
    1502:	b0 0d       	add	r27, r0
    1504:	a1 1d       	adc	r26, r1
    1506:	66 1f       	adc	r22, r22
    1508:	82 9f       	mul	r24, r18
    150a:	22 27       	eor	r18, r18
    150c:	b0 0d       	add	r27, r0
    150e:	a1 1d       	adc	r26, r1
    1510:	62 1f       	adc	r22, r18
    1512:	73 9f       	mul	r23, r19
    1514:	b0 0d       	add	r27, r0
    1516:	a1 1d       	adc	r26, r1
    1518:	62 1f       	adc	r22, r18
    151a:	83 9f       	mul	r24, r19
    151c:	a0 0d       	add	r26, r0
    151e:	61 1d       	adc	r22, r1
    1520:	22 1f       	adc	r18, r18
    1522:	74 9f       	mul	r23, r20
    1524:	33 27       	eor	r19, r19
    1526:	a0 0d       	add	r26, r0
    1528:	61 1d       	adc	r22, r1
    152a:	23 1f       	adc	r18, r19
    152c:	84 9f       	mul	r24, r20
    152e:	60 0d       	add	r22, r0
    1530:	21 1d       	adc	r18, r1
    1532:	82 2f       	mov	r24, r18
    1534:	76 2f       	mov	r23, r22
    1536:	6a 2f       	mov	r22, r26
    1538:	11 24       	eor	r1, r1
    153a:	9f 57       	subi	r25, 0x7F	; 127
    153c:	50 40       	sbci	r21, 0x00	; 0
    153e:	9a f0       	brmi	.+38     	; 0x1566 <__mulsf3_pse+0x88>
    1540:	f1 f0       	breq	.+60     	; 0x157e <__mulsf3_pse+0xa0>
    1542:	88 23       	and	r24, r24
    1544:	4a f0       	brmi	.+18     	; 0x1558 <__mulsf3_pse+0x7a>
    1546:	ee 0f       	add	r30, r30
    1548:	ff 1f       	adc	r31, r31
    154a:	bb 1f       	adc	r27, r27
    154c:	66 1f       	adc	r22, r22
    154e:	77 1f       	adc	r23, r23
    1550:	88 1f       	adc	r24, r24
    1552:	91 50       	subi	r25, 0x01	; 1
    1554:	50 40       	sbci	r21, 0x00	; 0
    1556:	a9 f7       	brne	.-22     	; 0x1542 <__mulsf3_pse+0x64>
    1558:	9e 3f       	cpi	r25, 0xFE	; 254
    155a:	51 05       	cpc	r21, r1
    155c:	80 f0       	brcs	.+32     	; 0x157e <__mulsf3_pse+0xa0>
    155e:	0c 94 08 0a 	jmp	0x1410	; 0x1410 <__fp_inf>
    1562:	0c 94 53 0a 	jmp	0x14a6	; 0x14a6 <__fp_szero>
    1566:	5f 3f       	cpi	r21, 0xFF	; 255
    1568:	e4 f3       	brlt	.-8      	; 0x1562 <__mulsf3_pse+0x84>
    156a:	98 3e       	cpi	r25, 0xE8	; 232
    156c:	d4 f3       	brlt	.-12     	; 0x1562 <__mulsf3_pse+0x84>
    156e:	86 95       	lsr	r24
    1570:	77 95       	ror	r23
    1572:	67 95       	ror	r22
    1574:	b7 95       	ror	r27
    1576:	f7 95       	ror	r31
    1578:	e7 95       	ror	r30
    157a:	9f 5f       	subi	r25, 0xFF	; 255
    157c:	c1 f7       	brne	.-16     	; 0x156e <__mulsf3_pse+0x90>
    157e:	fe 2b       	or	r31, r30
    1580:	88 0f       	add	r24, r24
    1582:	91 1d       	adc	r25, r1
    1584:	96 95       	lsr	r25
    1586:	87 95       	ror	r24
    1588:	97 f9       	bld	r25, 7
    158a:	08 95       	ret

0000158c <__divmodsi4>:
    158c:	05 2e       	mov	r0, r21
    158e:	97 fb       	bst	r25, 7
    1590:	1e f4       	brtc	.+6      	; 0x1598 <__divmodsi4+0xc>
    1592:	00 94       	com	r0
    1594:	0e 94 dd 0a 	call	0x15ba	; 0x15ba <__negsi2>
    1598:	57 fd       	sbrc	r21, 7
    159a:	07 d0       	rcall	.+14     	; 0x15aa <__divmodsi4_neg2>
    159c:	0e 94 03 0b 	call	0x1606	; 0x1606 <__udivmodsi4>
    15a0:	07 fc       	sbrc	r0, 7
    15a2:	03 d0       	rcall	.+6      	; 0x15aa <__divmodsi4_neg2>
    15a4:	4e f4       	brtc	.+18     	; 0x15b8 <__divmodsi4_exit>
    15a6:	0c 94 dd 0a 	jmp	0x15ba	; 0x15ba <__negsi2>

000015aa <__divmodsi4_neg2>:
    15aa:	50 95       	com	r21
    15ac:	40 95       	com	r20
    15ae:	30 95       	com	r19
    15b0:	21 95       	neg	r18
    15b2:	3f 4f       	sbci	r19, 0xFF	; 255
    15b4:	4f 4f       	sbci	r20, 0xFF	; 255
    15b6:	5f 4f       	sbci	r21, 0xFF	; 255

000015b8 <__divmodsi4_exit>:
    15b8:	08 95       	ret

000015ba <__negsi2>:
    15ba:	90 95       	com	r25
    15bc:	80 95       	com	r24
    15be:	70 95       	com	r23
    15c0:	61 95       	neg	r22
    15c2:	7f 4f       	sbci	r23, 0xFF	; 255
    15c4:	8f 4f       	sbci	r24, 0xFF	; 255
    15c6:	9f 4f       	sbci	r25, 0xFF	; 255
    15c8:	08 95       	ret

000015ca <__mulhisi3>:
    15ca:	0e 94 ed 0a 	call	0x15da	; 0x15da <__umulhisi3>
    15ce:	33 23       	and	r19, r19
    15d0:	12 f4       	brpl	.+4      	; 0x15d6 <__mulhisi3+0xc>
    15d2:	8a 1b       	sub	r24, r26
    15d4:	9b 0b       	sbc	r25, r27
    15d6:	0c 94 fe 0a 	jmp	0x15fc	; 0x15fc <__usmulhisi3_tail>

000015da <__umulhisi3>:
    15da:	a2 9f       	mul	r26, r18
    15dc:	b0 01       	movw	r22, r0
    15de:	b3 9f       	mul	r27, r19
    15e0:	c0 01       	movw	r24, r0
    15e2:	a3 9f       	mul	r26, r19
    15e4:	70 0d       	add	r23, r0
    15e6:	81 1d       	adc	r24, r1
    15e8:	11 24       	eor	r1, r1
    15ea:	91 1d       	adc	r25, r1
    15ec:	b2 9f       	mul	r27, r18
    15ee:	70 0d       	add	r23, r0
    15f0:	81 1d       	adc	r24, r1
    15f2:	11 24       	eor	r1, r1
    15f4:	91 1d       	adc	r25, r1
    15f6:	08 95       	ret

000015f8 <__usmulhisi3>:
    15f8:	0e 94 ed 0a 	call	0x15da	; 0x15da <__umulhisi3>

000015fc <__usmulhisi3_tail>:
    15fc:	b7 ff       	sbrs	r27, 7
    15fe:	08 95       	ret
    1600:	82 1b       	sub	r24, r18
    1602:	93 0b       	sbc	r25, r19
    1604:	08 95       	ret

00001606 <__udivmodsi4>:
    1606:	a1 e2       	ldi	r26, 0x21	; 33
    1608:	1a 2e       	mov	r1, r26
    160a:	aa 1b       	sub	r26, r26
    160c:	bb 1b       	sub	r27, r27
    160e:	fd 01       	movw	r30, r26
    1610:	0d c0       	rjmp	.+26     	; 0x162c <__udivmodsi4_ep>

00001612 <__udivmodsi4_loop>:
    1612:	aa 1f       	adc	r26, r26
    1614:	bb 1f       	adc	r27, r27
    1616:	ee 1f       	adc	r30, r30
    1618:	ff 1f       	adc	r31, r31
    161a:	a2 17       	cp	r26, r18
    161c:	b3 07       	cpc	r27, r19
    161e:	e4 07       	cpc	r30, r20
    1620:	f5 07       	cpc	r31, r21
    1622:	20 f0       	brcs	.+8      	; 0x162c <__udivmodsi4_ep>
    1624:	a2 1b       	sub	r26, r18
    1626:	b3 0b       	sbc	r27, r19
    1628:	e4 0b       	sbc	r30, r20
    162a:	f5 0b       	sbc	r31, r21

0000162c <__udivmodsi4_ep>:
    162c:	66 1f       	adc	r22, r22
    162e:	77 1f       	adc	r23, r23
    1630:	88 1f       	adc	r24, r24
    1632:	99 1f       	adc	r25, r25
    1634:	1a 94       	dec	r1
    1636:	69 f7       	brne	.-38     	; 0x1612 <__udivmodsi4_loop>
    1638:	60 95       	com	r22
    163a:	70 95       	com	r23
    163c:	80 95       	com	r24
    163e:	90 95       	com	r25
    1640:	9b 01       	movw	r18, r22
    1642:	ac 01       	movw	r20, r24
    1644:	bd 01       	movw	r22, r26
    1646:	cf 01       	movw	r24, r30
    1648:	08 95       	ret

0000164a <_exit>:
    164a:	f8 94       	cli

0000164c <__stop_program>:
    164c:	ff cf       	rjmp	.-2      	; 0x164c <__stop_program>