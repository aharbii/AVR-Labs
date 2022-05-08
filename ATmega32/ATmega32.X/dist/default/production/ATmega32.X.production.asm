
dist/default/production/ATmega32.X.production.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 31 00 	jmp	0x62	; 0x62 <__ctors_end>
       4:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
       8:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
       c:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      10:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      14:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      18:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      1c:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      20:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      24:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      28:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      2c:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      30:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      34:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      38:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      3c:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      40:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      44:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      48:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      4c:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      50:	0c 94 4e 00 	jmp	0x9c	; 0x9c <__bad_interrupt>
      54:	91 03       	fmuls	r17, r17
      56:	c4 03       	fmuls	r20, r20
      58:	f6 03       	fmuls	r23, r22
      5a:	25 04       	cpc	r2, r5
      5c:	6e 04       	cpc	r6, r14
      5e:	b7 04       	cpc	r11, r7
      60:	e5 04       	cpc	r14, r5

00000062 <__ctors_end>:
      62:	11 24       	eor	r1, r1
      64:	1f be       	out	0x3f, r1	; 63
      66:	cf e5       	ldi	r28, 0x5F	; 95
      68:	d8 e0       	ldi	r29, 0x08	; 8
      6a:	de bf       	out	0x3e, r29	; 62
      6c:	cd bf       	out	0x3d, r28	; 61

0000006e <__do_copy_data>:
      6e:	11 e0       	ldi	r17, 0x01	; 1
      70:	a0 e6       	ldi	r26, 0x60	; 96
      72:	b0 e0       	ldi	r27, 0x00	; 0
      74:	e4 e9       	ldi	r30, 0x94	; 148
      76:	f4 e1       	ldi	r31, 0x14	; 20
      78:	02 c0       	rjmp	.+4      	; 0x7e <__do_copy_data+0x10>
      7a:	05 90       	lpm	r0, Z+
      7c:	0d 92       	st	X+, r0
      7e:	ac 36       	cpi	r26, 0x6C	; 108
      80:	b1 07       	cpc	r27, r17
      82:	d9 f7       	brne	.-10     	; 0x7a <__do_copy_data+0xc>

00000084 <__do_clear_bss>:
      84:	21 e0       	ldi	r18, 0x01	; 1
      86:	ac e6       	ldi	r26, 0x6C	; 108
      88:	b1 e0       	ldi	r27, 0x01	; 1
      8a:	01 c0       	rjmp	.+2      	; 0x8e <.do_clear_bss_start>

0000008c <.do_clear_bss_loop>:
      8c:	1d 92       	st	X+, r1

0000008e <.do_clear_bss_start>:
      8e:	ad 37       	cpi	r26, 0x7D	; 125
      90:	b2 07       	cpc	r27, r18
      92:	e1 f7       	brne	.-8      	; 0x8c <.do_clear_bss_loop>
      94:	0e 94 f6 09 	call	0x13ec	; 0x13ec <main>
      98:	0c 94 48 0a 	jmp	0x1490	; 0x1490 <_exit>

0000009c <__bad_interrupt>:
      9c:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a0 <binary_to_int>:
      a0:	fc 01       	movw	r30, r24
      a2:	80 81       	ld	r24, Z
      a4:	88 23       	and	r24, r24
      a6:	e1 f0       	breq	.+56     	; 0xe0 <binary_to_int+0x40>
      a8:	90 e0       	ldi	r25, 0x00	; 0
      aa:	01 c0       	rjmp	.+2      	; 0xae <binary_to_int+0xe>
      ac:	92 2f       	mov	r25, r18
      ae:	21 e0       	ldi	r18, 0x01	; 1
      b0:	29 0f       	add	r18, r25
      b2:	df 01       	movw	r26, r30
      b4:	a2 0f       	add	r26, r18
      b6:	b1 1d       	adc	r27, r1
      b8:	8c 91       	ld	r24, X
      ba:	81 11       	cpse	r24, r1
      bc:	f7 cf       	rjmp	.-18     	; 0xac <binary_to_int+0xc>
      be:	99 23       	and	r25, r25
      c0:	8c f0       	brlt	.+34     	; 0xe4 <binary_to_int+0x44>
      c2:	31 e0       	ldi	r19, 0x01	; 1
      c4:	df 01       	movw	r26, r30
      c6:	a9 0f       	add	r26, r25
      c8:	b1 1d       	adc	r27, r1
      ca:	97 fd       	sbrc	r25, 7
      cc:	ba 95       	dec	r27
      ce:	2c 91       	ld	r18, X
      d0:	20 53       	subi	r18, 0x30	; 48
      d2:	23 9f       	mul	r18, r19
      d4:	80 0d       	add	r24, r0
      d6:	11 24       	eor	r1, r1
      d8:	33 0f       	add	r19, r19
      da:	91 50       	subi	r25, 0x01	; 1
      dc:	9a f7       	brpl	.-26     	; 0xc4 <binary_to_int+0x24>
      de:	08 95       	ret
      e0:	80 e0       	ldi	r24, 0x00	; 0
      e2:	08 95       	ret
      e4:	80 e0       	ldi	r24, 0x00	; 0
      e6:	08 95       	ret

000000e8 <new_operation_reset>:
      e8:	0e 94 82 05 	call	0xb04	; 0xb04 <LCD_Clear>
      ec:	60 e0       	ldi	r22, 0x00	; 0
      ee:	80 e0       	ldi	r24, 0x00	; 0
      f0:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
      f4:	e0 91 6d 01 	lds	r30, 0x016D	; 0x80016d <choice_idx>
      f8:	f0 e0       	ldi	r31, 0x00	; 0
      fa:	ee 0f       	add	r30, r30
      fc:	ff 1f       	adc	r31, r31
      fe:	ee 0f       	add	r30, r30
     100:	ff 1f       	adc	r31, r31
     102:	e7 50       	subi	r30, 0x07	; 7
     104:	ff 4f       	sbci	r31, 0xFF	; 255
     106:	80 81       	ld	r24, Z
     108:	91 81       	ldd	r25, Z+1	; 0x01
     10a:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     10e:	60 e0       	ldi	r22, 0x00	; 0
     110:	81 e0       	ldi	r24, 0x01	; 1
     112:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     116:	e0 91 6d 01 	lds	r30, 0x016D	; 0x80016d <choice_idx>
     11a:	f0 e0       	ldi	r31, 0x00	; 0
     11c:	ee 0f       	add	r30, r30
     11e:	ff 1f       	adc	r31, r31
     120:	ee 0f       	add	r30, r30
     122:	ff 1f       	adc	r31, r31
     124:	e7 50       	subi	r30, 0x07	; 7
     126:	ff 4f       	sbci	r31, 0xFF	; 255
     128:	82 81       	ldd	r24, Z+2	; 0x02
     12a:	93 81       	ldd	r25, Z+3	; 0x03
     12c:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     130:	65 e0       	ldi	r22, 0x05	; 5
     132:	80 e0       	ldi	r24, 0x00	; 0
     134:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     138:	10 92 60 00 	sts	0x0060, r1	; 0x800060 <__DATA_REGION_ORIGIN__>
     13c:	ef e6       	ldi	r30, 0x6F	; 111
     13e:	f1 e0       	ldi	r31, 0x01	; 1
     140:	89 e7       	ldi	r24, 0x79	; 121
     142:	91 e0       	ldi	r25, 0x01	; 1
     144:	11 92       	st	Z+, r1
     146:	e8 17       	cp	r30, r24
     148:	f9 07       	cpc	r31, r25
     14a:	e1 f7       	brne	.-8      	; 0x144 <new_operation_reset+0x5c>
     14c:	10 92 6e 01 	sts	0x016E, r1	; 0x80016e <input_idx>
     150:	10 92 6c 01 	sts	0x016C, r1	; 0x80016c <__data_end>
     154:	85 e0       	ldi	r24, 0x05	; 5
     156:	80 93 61 00 	sts	0x0061, r24	; 0x800061 <hex_pos>
     15a:	08 95       	ret

0000015c <get_decimal>:
     15c:	90 ed       	ldi	r25, 0xD0	; 208
     15e:	98 0f       	add	r25, r24
     160:	9a 30       	cpi	r25, 0x0A	; 10
     162:	50 f4       	brcc	.+20     	; 0x178 <get_decimal+0x1c>
     164:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     168:	91 e0       	ldi	r25, 0x01	; 1
     16a:	9e 0f       	add	r25, r30
     16c:	90 93 6e 01 	sts	0x016E, r25	; 0x80016e <input_idx>
     170:	f0 e0       	ldi	r31, 0x00	; 0
     172:	e1 59       	subi	r30, 0x91	; 145
     174:	fe 4f       	sbci	r31, 0xFE	; 254
     176:	80 83       	st	Z, r24
     178:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     17c:	08 95       	ret

0000017e <menu_display>:
     17e:	80 91 6d 01 	lds	r24, 0x016D	; 0x80016d <choice_idx>
     182:	81 11       	cpse	r24, r1
     184:	55 c0       	rjmp	.+170    	; 0x230 <menu_display+0xb2>
     186:	80 91 63 00 	lds	r24, 0x0063	; 0x800063 <direction>
     18a:	88 23       	and	r24, r24
     18c:	01 f1       	breq	.+64     	; 0x1ce <menu_display+0x50>
     18e:	81 30       	cpi	r24, 0x01	; 1
     190:	09 f0       	breq	.+2      	; 0x194 <menu_display+0x16>
     192:	28 c1       	rjmp	.+592    	; 0x3e4 <menu_display+0x266>
     194:	0e 94 82 05 	call	0xb04	; 0xb04 <LCD_Clear>
     198:	60 e0       	ldi	r22, 0x00	; 0
     19a:	80 e0       	ldi	r24, 0x00	; 0
     19c:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     1a0:	84 e7       	ldi	r24, 0x74	; 116
     1a2:	90 e0       	ldi	r25, 0x00	; 0
     1a4:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     1a8:	62 e0       	ldi	r22, 0x02	; 2
     1aa:	81 e0       	ldi	r24, 0x01	; 1
     1ac:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     1b0:	85 ea       	ldi	r24, 0xA5	; 165
     1b2:	90 e0       	ldi	r25, 0x00	; 0
     1b4:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     1b8:	61 e0       	ldi	r22, 0x01	; 1
     1ba:	81 e0       	ldi	r24, 0x01	; 1
     1bc:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     1c0:	8e e7       	ldi	r24, 0x7E	; 126
     1c2:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     1c6:	81 e0       	ldi	r24, 0x01	; 1
     1c8:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     1cc:	08 95       	ret
     1ce:	80 91 62 00 	lds	r24, 0x0062	; 0x800062 <arrow_pos>
     1d2:	88 23       	and	r24, r24
     1d4:	81 f0       	breq	.+32     	; 0x1f6 <menu_display+0x78>
     1d6:	81 30       	cpi	r24, 0x01	; 1
     1d8:	09 f0       	breq	.+2      	; 0x1dc <menu_display+0x5e>
     1da:	04 c1       	rjmp	.+520    	; 0x3e4 <menu_display+0x266>
     1dc:	61 e0       	ldi	r22, 0x01	; 1
     1de:	0e 94 8c 07 	call	0xf18	; 0xf18 <LCD_ClearLocation>
     1e2:	61 e0       	ldi	r22, 0x01	; 1
     1e4:	80 e0       	ldi	r24, 0x00	; 0
     1e6:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     1ea:	8e e7       	ldi	r24, 0x7E	; 126
     1ec:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     1f0:	10 92 62 00 	sts	0x0062, r1	; 0x800062 <arrow_pos>
     1f4:	08 95       	ret
     1f6:	0e 94 82 05 	call	0xb04	; 0xb04 <LCD_Clear>
     1fa:	60 e0       	ldi	r22, 0x00	; 0
     1fc:	80 e0       	ldi	r24, 0x00	; 0
     1fe:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     202:	84 e7       	ldi	r24, 0x74	; 116
     204:	90 e0       	ldi	r25, 0x00	; 0
     206:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     20a:	62 e0       	ldi	r22, 0x02	; 2
     20c:	81 e0       	ldi	r24, 0x01	; 1
     20e:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     212:	85 ea       	ldi	r24, 0xA5	; 165
     214:	90 e0       	ldi	r25, 0x00	; 0
     216:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     21a:	61 e0       	ldi	r22, 0x01	; 1
     21c:	81 e0       	ldi	r24, 0x01	; 1
     21e:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     222:	8e e7       	ldi	r24, 0x7E	; 126
     224:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     228:	81 e0       	ldi	r24, 0x01	; 1
     22a:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     22e:	08 95       	ret
     230:	85 30       	cpi	r24, 0x05	; 5
     232:	91 f5       	brne	.+100    	; 0x298 <menu_display+0x11a>
     234:	80 91 63 00 	lds	r24, 0x0063	; 0x800063 <direction>
     238:	88 23       	and	r24, r24
     23a:	91 f0       	breq	.+36     	; 0x260 <menu_display+0xe2>
     23c:	81 30       	cpi	r24, 0x01	; 1
     23e:	09 f0       	breq	.+2      	; 0x242 <menu_display+0xc4>
     240:	d1 c0       	rjmp	.+418    	; 0x3e4 <menu_display+0x266>
     242:	61 e0       	ldi	r22, 0x01	; 1
     244:	80 e0       	ldi	r24, 0x00	; 0
     246:	0e 94 8c 07 	call	0xf18	; 0xf18 <LCD_ClearLocation>
     24a:	61 e0       	ldi	r22, 0x01	; 1
     24c:	81 e0       	ldi	r24, 0x01	; 1
     24e:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     252:	8e e7       	ldi	r24, 0x7E	; 126
     254:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     258:	81 e0       	ldi	r24, 0x01	; 1
     25a:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     25e:	08 95       	ret
     260:	0e 94 82 05 	call	0xb04	; 0xb04 <LCD_Clear>
     264:	62 e0       	ldi	r22, 0x02	; 2
     266:	80 e0       	ldi	r24, 0x00	; 0
     268:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     26c:	8d ed       	ldi	r24, 0xDD	; 221
     26e:	90 e0       	ldi	r25, 0x00	; 0
     270:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     274:	61 e0       	ldi	r22, 0x01	; 1
     276:	81 e0       	ldi	r24, 0x01	; 1
     278:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     27c:	8e e7       	ldi	r24, 0x7E	; 126
     27e:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     282:	81 e0       	ldi	r24, 0x01	; 1
     284:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     288:	62 e0       	ldi	r22, 0x02	; 2
     28a:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     28e:	8b ee       	ldi	r24, 0xEB	; 235
     290:	90 e0       	ldi	r25, 0x00	; 0
     292:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     296:	08 95       	ret
     298:	80 91 63 00 	lds	r24, 0x0063	; 0x800063 <direction>
     29c:	88 23       	and	r24, r24
     29e:	09 f4       	brne	.+2      	; 0x2a2 <menu_display+0x124>
     2a0:	54 c0       	rjmp	.+168    	; 0x34a <menu_display+0x1cc>
     2a2:	81 30       	cpi	r24, 0x01	; 1
     2a4:	09 f0       	breq	.+2      	; 0x2a8 <menu_display+0x12a>
     2a6:	9e c0       	rjmp	.+316    	; 0x3e4 <menu_display+0x266>
     2a8:	80 91 62 00 	lds	r24, 0x0062	; 0x800062 <arrow_pos>
     2ac:	88 23       	and	r24, r24
     2ae:	f1 f1       	breq	.+124    	; 0x32c <menu_display+0x1ae>
     2b0:	81 30       	cpi	r24, 0x01	; 1
     2b2:	09 f0       	breq	.+2      	; 0x2b6 <menu_display+0x138>
     2b4:	97 c0       	rjmp	.+302    	; 0x3e4 <menu_display+0x266>
     2b6:	0e 94 82 05 	call	0xb04	; 0xb04 <LCD_Clear>
     2ba:	62 e0       	ldi	r22, 0x02	; 2
     2bc:	80 e0       	ldi	r24, 0x00	; 0
     2be:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     2c2:	20 91 6d 01 	lds	r18, 0x016D	; 0x80016d <choice_idx>
     2c6:	30 e0       	ldi	r19, 0x00	; 0
     2c8:	21 50       	subi	r18, 0x01	; 1
     2ca:	31 09       	sbc	r19, r1
     2cc:	22 0f       	add	r18, r18
     2ce:	33 1f       	adc	r19, r19
     2d0:	c9 01       	movw	r24, r18
     2d2:	88 0f       	add	r24, r24
     2d4:	99 1f       	adc	r25, r25
     2d6:	88 0f       	add	r24, r24
     2d8:	99 1f       	adc	r25, r25
     2da:	88 0f       	add	r24, r24
     2dc:	99 1f       	adc	r25, r25
     2de:	82 1b       	sub	r24, r18
     2e0:	93 0b       	sbc	r25, r19
     2e2:	8b 55       	subi	r24, 0x5B	; 91
     2e4:	9f 4f       	sbci	r25, 0xFF	; 255
     2e6:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     2ea:	62 e0       	ldi	r22, 0x02	; 2
     2ec:	81 e0       	ldi	r24, 0x01	; 1
     2ee:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     2f2:	20 91 6d 01 	lds	r18, 0x016D	; 0x80016d <choice_idx>
     2f6:	30 e0       	ldi	r19, 0x00	; 0
     2f8:	22 0f       	add	r18, r18
     2fa:	33 1f       	adc	r19, r19
     2fc:	c9 01       	movw	r24, r18
     2fe:	88 0f       	add	r24, r24
     300:	99 1f       	adc	r25, r25
     302:	88 0f       	add	r24, r24
     304:	99 1f       	adc	r25, r25
     306:	88 0f       	add	r24, r24
     308:	99 1f       	adc	r25, r25
     30a:	82 1b       	sub	r24, r18
     30c:	93 0b       	sbc	r25, r19
     30e:	8b 55       	subi	r24, 0x5B	; 91
     310:	9f 4f       	sbci	r25, 0xFF	; 255
     312:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     316:	61 e0       	ldi	r22, 0x01	; 1
     318:	81 e0       	ldi	r24, 0x01	; 1
     31a:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     31e:	8e e7       	ldi	r24, 0x7E	; 126
     320:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     324:	81 e0       	ldi	r24, 0x01	; 1
     326:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     32a:	08 95       	ret
     32c:	61 e0       	ldi	r22, 0x01	; 1
     32e:	80 e0       	ldi	r24, 0x00	; 0
     330:	0e 94 8c 07 	call	0xf18	; 0xf18 <LCD_ClearLocation>
     334:	61 e0       	ldi	r22, 0x01	; 1
     336:	81 e0       	ldi	r24, 0x01	; 1
     338:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     33c:	8e e7       	ldi	r24, 0x7E	; 126
     33e:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     342:	81 e0       	ldi	r24, 0x01	; 1
     344:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     348:	08 95       	ret
     34a:	80 91 62 00 	lds	r24, 0x0062	; 0x800062 <arrow_pos>
     34e:	88 23       	and	r24, r24
     350:	81 f0       	breq	.+32     	; 0x372 <menu_display+0x1f4>
     352:	81 30       	cpi	r24, 0x01	; 1
     354:	09 f0       	breq	.+2      	; 0x358 <menu_display+0x1da>
     356:	46 c0       	rjmp	.+140    	; 0x3e4 <menu_display+0x266>
     358:	61 e0       	ldi	r22, 0x01	; 1
     35a:	0e 94 8c 07 	call	0xf18	; 0xf18 <LCD_ClearLocation>
     35e:	61 e0       	ldi	r22, 0x01	; 1
     360:	80 e0       	ldi	r24, 0x00	; 0
     362:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     366:	8e e7       	ldi	r24, 0x7E	; 126
     368:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     36c:	10 92 62 00 	sts	0x0062, r1	; 0x800062 <arrow_pos>
     370:	08 95       	ret
     372:	0e 94 82 05 	call	0xb04	; 0xb04 <LCD_Clear>
     376:	62 e0       	ldi	r22, 0x02	; 2
     378:	80 e0       	ldi	r24, 0x00	; 0
     37a:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     37e:	20 91 6d 01 	lds	r18, 0x016D	; 0x80016d <choice_idx>
     382:	30 e0       	ldi	r19, 0x00	; 0
     384:	22 0f       	add	r18, r18
     386:	33 1f       	adc	r19, r19
     388:	c9 01       	movw	r24, r18
     38a:	88 0f       	add	r24, r24
     38c:	99 1f       	adc	r25, r25
     38e:	88 0f       	add	r24, r24
     390:	99 1f       	adc	r25, r25
     392:	88 0f       	add	r24, r24
     394:	99 1f       	adc	r25, r25
     396:	82 1b       	sub	r24, r18
     398:	93 0b       	sbc	r25, r19
     39a:	8b 55       	subi	r24, 0x5B	; 91
     39c:	9f 4f       	sbci	r25, 0xFF	; 255
     39e:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     3a2:	62 e0       	ldi	r22, 0x02	; 2
     3a4:	81 e0       	ldi	r24, 0x01	; 1
     3a6:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     3aa:	20 91 6d 01 	lds	r18, 0x016D	; 0x80016d <choice_idx>
     3ae:	30 e0       	ldi	r19, 0x00	; 0
     3b0:	2f 5f       	subi	r18, 0xFF	; 255
     3b2:	3f 4f       	sbci	r19, 0xFF	; 255
     3b4:	22 0f       	add	r18, r18
     3b6:	33 1f       	adc	r19, r19
     3b8:	c9 01       	movw	r24, r18
     3ba:	88 0f       	add	r24, r24
     3bc:	99 1f       	adc	r25, r25
     3be:	88 0f       	add	r24, r24
     3c0:	99 1f       	adc	r25, r25
     3c2:	88 0f       	add	r24, r24
     3c4:	99 1f       	adc	r25, r25
     3c6:	82 1b       	sub	r24, r18
     3c8:	93 0b       	sbc	r25, r19
     3ca:	8b 55       	subi	r24, 0x5B	; 91
     3cc:	9f 4f       	sbci	r25, 0xFF	; 255
     3ce:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     3d2:	61 e0       	ldi	r22, 0x01	; 1
     3d4:	80 e0       	ldi	r24, 0x00	; 0
     3d6:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     3da:	8e e7       	ldi	r24, 0x7E	; 126
     3dc:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     3e0:	10 92 62 00 	sts	0x0062, r1	; 0x800062 <arrow_pos>
     3e4:	08 95       	ret

000003e6 <get_hex>:
     3e6:	90 91 6f 01 	lds	r25, 0x016F	; 0x80016f <input>
     3ea:	99 23       	and	r25, r25
     3ec:	61 f0       	breq	.+24     	; 0x406 <__EEPROM_REGION_LENGTH__+0x6>
     3ee:	90 e0       	ldi	r25, 0x00	; 0
     3f0:	9f 5f       	subi	r25, 0xFF	; 255
     3f2:	e9 2f       	mov	r30, r25
     3f4:	f0 e0       	ldi	r31, 0x00	; 0
     3f6:	e1 59       	subi	r30, 0x91	; 145
     3f8:	fe 4f       	sbci	r31, 0xFE	; 254
     3fa:	20 81       	ld	r18, Z
     3fc:	21 11       	cpse	r18, r1
     3fe:	f8 cf       	rjmp	.-16     	; 0x3f0 <get_hex+0xa>
     400:	92 30       	cpi	r25, 0x02	; 2
     402:	08 f0       	brcs	.+2      	; 0x406 <__EEPROM_REGION_LENGTH__+0x6>
     404:	90 c0       	rjmp	.+288    	; 0x526 <__EEPROM_REGION_LENGTH__+0x126>
     406:	90 ed       	ldi	r25, 0xD0	; 208
     408:	98 0f       	add	r25, r24
     40a:	9a 30       	cpi	r25, 0x0A	; 10
     40c:	98 f4       	brcc	.+38     	; 0x434 <__EEPROM_REGION_LENGTH__+0x34>
     40e:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     412:	91 e0       	ldi	r25, 0x01	; 1
     414:	9e 0f       	add	r25, r30
     416:	90 93 6e 01 	sts	0x016E, r25	; 0x80016e <input_idx>
     41a:	f0 e0       	ldi	r31, 0x00	; 0
     41c:	e1 59       	subi	r30, 0x91	; 145
     41e:	fe 4f       	sbci	r31, 0xFE	; 254
     420:	80 83       	st	Z, r24
     422:	90 91 61 00 	lds	r25, 0x0061	; 0x800061 <hex_pos>
     426:	9f 5f       	subi	r25, 0xFF	; 255
     428:	90 93 61 00 	sts	0x0061, r25	; 0x800061 <hex_pos>
     42c:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     430:	80 e0       	ldi	r24, 0x00	; 0
     432:	08 95       	ret
     434:	8f 32       	cpi	r24, 0x2F	; 47
     436:	89 f4       	brne	.+34     	; 0x45a <__EEPROM_REGION_LENGTH__+0x5a>
     438:	10 92 6c 01 	sts	0x016C, r1	; 0x80016c <__data_end>
     43c:	60 91 61 00 	lds	r22, 0x0061	; 0x800061 <hex_pos>
     440:	80 e0       	ldi	r24, 0x00	; 0
     442:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     446:	e0 91 6c 01 	lds	r30, 0x016C	; 0x80016c <__data_end>
     44a:	f0 e0       	ldi	r31, 0x00	; 0
     44c:	e1 56       	subi	r30, 0x61	; 97
     44e:	ff 4f       	sbci	r31, 0xFF	; 255
     450:	80 81       	ld	r24, Z
     452:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     456:	80 e0       	ldi	r24, 0x00	; 0
     458:	08 95       	ret
     45a:	8b 32       	cpi	r24, 0x2B	; 43
     45c:	c9 f4       	brne	.+50     	; 0x490 <__EEPROM_REGION_LENGTH__+0x90>
     45e:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     462:	81 e0       	ldi	r24, 0x01	; 1
     464:	8e 0f       	add	r24, r30
     466:	80 93 6e 01 	sts	0x016E, r24	; 0x80016e <input_idx>
     46a:	f0 e0       	ldi	r31, 0x00	; 0
     46c:	e1 59       	subi	r30, 0x91	; 145
     46e:	fe 4f       	sbci	r31, 0xFE	; 254
     470:	a0 91 6c 01 	lds	r26, 0x016C	; 0x80016c <__data_end>
     474:	b0 e0       	ldi	r27, 0x00	; 0
     476:	a1 56       	subi	r26, 0x61	; 97
     478:	bf 4f       	sbci	r27, 0xFF	; 255
     47a:	8c 91       	ld	r24, X
     47c:	80 83       	st	Z, r24
     47e:	80 91 61 00 	lds	r24, 0x0061	; 0x800061 <hex_pos>
     482:	8f 5f       	subi	r24, 0xFF	; 255
     484:	80 93 61 00 	sts	0x0061, r24	; 0x800061 <hex_pos>
     488:	10 92 6c 01 	sts	0x016C, r1	; 0x80016c <__data_end>
     48c:	80 e0       	ldi	r24, 0x00	; 0
     48e:	08 95       	ret
     490:	8a 32       	cpi	r24, 0x2A	; 42
     492:	f9 f4       	brne	.+62     	; 0x4d2 <__EEPROM_REGION_LENGTH__+0xd2>
     494:	90 91 6c 01 	lds	r25, 0x016C	; 0x80016c <__data_end>
     498:	9f 5f       	subi	r25, 0xFF	; 255
     49a:	8b ea       	ldi	r24, 0xAB	; 171
     49c:	98 9f       	mul	r25, r24
     49e:	81 2d       	mov	r24, r1
     4a0:	11 24       	eor	r1, r1
     4a2:	86 95       	lsr	r24
     4a4:	86 95       	lsr	r24
     4a6:	28 2f       	mov	r18, r24
     4a8:	22 0f       	add	r18, r18
     4aa:	82 0f       	add	r24, r18
     4ac:	88 0f       	add	r24, r24
     4ae:	98 1b       	sub	r25, r24
     4b0:	90 93 6c 01 	sts	0x016C, r25	; 0x80016c <__data_end>
     4b4:	60 91 61 00 	lds	r22, 0x0061	; 0x800061 <hex_pos>
     4b8:	80 e0       	ldi	r24, 0x00	; 0
     4ba:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     4be:	e0 91 6c 01 	lds	r30, 0x016C	; 0x80016c <__data_end>
     4c2:	f0 e0       	ldi	r31, 0x00	; 0
     4c4:	e1 56       	subi	r30, 0x61	; 97
     4c6:	ff 4f       	sbci	r31, 0xFF	; 255
     4c8:	80 81       	ld	r24, Z
     4ca:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     4ce:	80 e0       	ldi	r24, 0x00	; 0
     4d0:	08 95       	ret
     4d2:	8d 32       	cpi	r24, 0x2D	; 45
     4d4:	51 f5       	brne	.+84     	; 0x52a <__EEPROM_REGION_LENGTH__+0x12a>
     4d6:	80 91 6c 01 	lds	r24, 0x016C	; 0x80016c <__data_end>
     4da:	81 50       	subi	r24, 0x01	; 1
     4dc:	18 f0       	brcs	.+6      	; 0x4e4 <__EEPROM_REGION_LENGTH__+0xe4>
     4de:	80 93 6c 01 	sts	0x016C, r24	; 0x80016c <__data_end>
     4e2:	03 c0       	rjmp	.+6      	; 0x4ea <__EEPROM_REGION_LENGTH__+0xea>
     4e4:	85 e0       	ldi	r24, 0x05	; 5
     4e6:	80 93 6c 01 	sts	0x016C, r24	; 0x80016c <__data_end>
     4ea:	90 91 6c 01 	lds	r25, 0x016C	; 0x80016c <__data_end>
     4ee:	8b ea       	ldi	r24, 0xAB	; 171
     4f0:	98 9f       	mul	r25, r24
     4f2:	81 2d       	mov	r24, r1
     4f4:	11 24       	eor	r1, r1
     4f6:	86 95       	lsr	r24
     4f8:	86 95       	lsr	r24
     4fa:	28 2f       	mov	r18, r24
     4fc:	22 0f       	add	r18, r18
     4fe:	82 0f       	add	r24, r18
     500:	88 0f       	add	r24, r24
     502:	98 1b       	sub	r25, r24
     504:	90 93 6c 01 	sts	0x016C, r25	; 0x80016c <__data_end>
     508:	60 91 61 00 	lds	r22, 0x0061	; 0x800061 <hex_pos>
     50c:	80 e0       	ldi	r24, 0x00	; 0
     50e:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     512:	e0 91 6c 01 	lds	r30, 0x016C	; 0x80016c <__data_end>
     516:	f0 e0       	ldi	r31, 0x00	; 0
     518:	e1 56       	subi	r30, 0x61	; 97
     51a:	ff 4f       	sbci	r31, 0xFF	; 255
     51c:	80 81       	ld	r24, Z
     51e:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     522:	80 e0       	ldi	r24, 0x00	; 0
     524:	08 95       	ret
     526:	88 e0       	ldi	r24, 0x08	; 8
     528:	08 95       	ret
     52a:	84 e0       	ldi	r24, 0x04	; 4
     52c:	08 95       	ret

0000052e <get_binary>:
     52e:	90 91 6f 01 	lds	r25, 0x016F	; 0x80016f <input>
     532:	99 23       	and	r25, r25
     534:	59 f0       	breq	.+22     	; 0x54c <get_binary+0x1e>
     536:	90 e0       	ldi	r25, 0x00	; 0
     538:	9f 5f       	subi	r25, 0xFF	; 255
     53a:	e9 2f       	mov	r30, r25
     53c:	f0 e0       	ldi	r31, 0x00	; 0
     53e:	e1 59       	subi	r30, 0x91	; 145
     540:	fe 4f       	sbci	r31, 0xFE	; 254
     542:	20 81       	ld	r18, Z
     544:	21 11       	cpse	r18, r1
     546:	f8 cf       	rjmp	.-16     	; 0x538 <get_binary+0xa>
     548:	98 30       	cpi	r25, 0x08	; 8
     54a:	90 f4       	brcc	.+36     	; 0x570 <get_binary+0x42>
     54c:	90 ed       	ldi	r25, 0xD0	; 208
     54e:	98 0f       	add	r25, r24
     550:	92 30       	cpi	r25, 0x02	; 2
     552:	80 f4       	brcc	.+32     	; 0x574 <get_binary+0x46>
     554:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     558:	91 e0       	ldi	r25, 0x01	; 1
     55a:	9e 0f       	add	r25, r30
     55c:	90 93 6e 01 	sts	0x016E, r25	; 0x80016e <input_idx>
     560:	f0 e0       	ldi	r31, 0x00	; 0
     562:	e1 59       	subi	r30, 0x91	; 145
     564:	fe 4f       	sbci	r31, 0xFE	; 254
     566:	80 83       	st	Z, r24
     568:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     56c:	80 e0       	ldi	r24, 0x00	; 0
     56e:	08 95       	ret
     570:	88 e0       	ldi	r24, 0x08	; 8
     572:	08 95       	ret
     574:	84 e0       	ldi	r24, 0x04	; 4
     576:	08 95       	ret

00000578 <hex_to_int>:
     578:	fc 01       	movw	r30, r24
     57a:	80 81       	ld	r24, Z
     57c:	88 23       	and	r24, r24
     57e:	11 f1       	breq	.+68     	; 0x5c4 <hex_to_int+0x4c>
     580:	90 e0       	ldi	r25, 0x00	; 0
     582:	01 c0       	rjmp	.+2      	; 0x586 <hex_to_int+0xe>
     584:	92 2f       	mov	r25, r18
     586:	21 e0       	ldi	r18, 0x01	; 1
     588:	29 0f       	add	r18, r25
     58a:	df 01       	movw	r26, r30
     58c:	a2 0f       	add	r26, r18
     58e:	b1 1d       	adc	r27, r1
     590:	8c 91       	ld	r24, X
     592:	81 11       	cpse	r24, r1
     594:	f7 cf       	rjmp	.-18     	; 0x584 <hex_to_int+0xc>
     596:	99 23       	and	r25, r25
     598:	bc f0       	brlt	.+46     	; 0x5c8 <hex_to_int+0x50>
     59a:	31 e0       	ldi	r19, 0x01	; 1
     59c:	df 01       	movw	r26, r30
     59e:	a9 0f       	add	r26, r25
     5a0:	b1 1d       	adc	r27, r1
     5a2:	97 fd       	sbrc	r25, 7
     5a4:	ba 95       	dec	r27
     5a6:	4c 91       	ld	r20, X
     5a8:	20 ed       	ldi	r18, 0xD0	; 208
     5aa:	24 0f       	add	r18, r20
     5ac:	2a 30       	cpi	r18, 0x0A	; 10
     5ae:	10 f0       	brcs	.+4      	; 0x5b4 <hex_to_int+0x3c>
     5b0:	29 ec       	ldi	r18, 0xC9	; 201
     5b2:	24 0f       	add	r18, r20
     5b4:	23 9f       	mul	r18, r19
     5b6:	80 0d       	add	r24, r0
     5b8:	11 24       	eor	r1, r1
     5ba:	32 95       	swap	r19
     5bc:	30 7f       	andi	r19, 0xF0	; 240
     5be:	91 50       	subi	r25, 0x01	; 1
     5c0:	6a f7       	brpl	.-38     	; 0x59c <hex_to_int+0x24>
     5c2:	08 95       	ret
     5c4:	80 e0       	ldi	r24, 0x00	; 0
     5c6:	08 95       	ret
     5c8:	80 e0       	ldi	r24, 0x00	; 0
     5ca:	08 95       	ret

000005cc <NUMERICAL_CONVERTER_Init>:
     5cc:	10 92 79 01 	sts	0x0179, r1	; 0x800179 <mode>
     5d0:	81 e0       	ldi	r24, 0x01	; 1
     5d2:	80 93 63 00 	sts	0x0063, r24	; 0x800063 <direction>
     5d6:	10 92 6d 01 	sts	0x016D, r1	; 0x80016d <choice_idx>
     5da:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     5de:	ef e6       	ldi	r30, 0x6F	; 111
     5e0:	f1 e0       	ldi	r31, 0x01	; 1
     5e2:	89 e7       	ldi	r24, 0x79	; 121
     5e4:	91 e0       	ldi	r25, 0x01	; 1
     5e6:	11 92       	st	Z+, r1
     5e8:	e8 17       	cp	r30, r24
     5ea:	f9 07       	cpc	r31, r25
     5ec:	e1 f7       	brne	.-8      	; 0x5e6 <NUMERICAL_CONVERTER_Init+0x1a>
     5ee:	81 e0       	ldi	r24, 0x01	; 1
     5f0:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     5f4:	10 92 6c 01 	sts	0x016C, r1	; 0x80016c <__data_end>
     5f8:	85 e0       	ldi	r24, 0x05	; 5
     5fa:	80 93 61 00 	sts	0x0061, r24	; 0x800061 <hex_pos>
     5fe:	0e 94 82 05 	call	0xb04	; 0xb04 <LCD_Clear>
     602:	60 e0       	ldi	r22, 0x00	; 0
     604:	80 e0       	ldi	r24, 0x00	; 0
     606:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     60a:	82 e8       	ldi	r24, 0x82	; 130
     60c:	90 e0       	ldi	r25, 0x00	; 0
     60e:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     612:	61 e0       	ldi	r22, 0x01	; 1
     614:	81 e0       	ldi	r24, 0x01	; 1
     616:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     61a:	8c e8       	ldi	r24, 0x8C	; 140
     61c:	90 e0       	ldi	r25, 0x00	; 0
     61e:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     622:	2f ef       	ldi	r18, 0xFF	; 255
     624:	81 ee       	ldi	r24, 0xE1	; 225
     626:	94 e0       	ldi	r25, 0x04	; 4
     628:	21 50       	subi	r18, 0x01	; 1
     62a:	80 40       	sbci	r24, 0x00	; 0
     62c:	90 40       	sbci	r25, 0x00	; 0
     62e:	e1 f7       	brne	.-8      	; 0x628 <NUMERICAL_CONVERTER_Init+0x5c>
     630:	00 c0       	rjmp	.+0      	; 0x632 <NUMERICAL_CONVERTER_Init+0x66>
     632:	00 00       	nop
     634:	8e e2       	ldi	r24, 0x2E	; 46
     636:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     63a:	2f ef       	ldi	r18, 0xFF	; 255
     63c:	81 ee       	ldi	r24, 0xE1	; 225
     63e:	94 e0       	ldi	r25, 0x04	; 4
     640:	21 50       	subi	r18, 0x01	; 1
     642:	80 40       	sbci	r24, 0x00	; 0
     644:	90 40       	sbci	r25, 0x00	; 0
     646:	e1 f7       	brne	.-8      	; 0x640 <NUMERICAL_CONVERTER_Init+0x74>
     648:	00 c0       	rjmp	.+0      	; 0x64a <NUMERICAL_CONVERTER_Init+0x7e>
     64a:	00 00       	nop
     64c:	8e e2       	ldi	r24, 0x2E	; 46
     64e:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     652:	2f ef       	ldi	r18, 0xFF	; 255
     654:	81 ee       	ldi	r24, 0xE1	; 225
     656:	94 e0       	ldi	r25, 0x04	; 4
     658:	21 50       	subi	r18, 0x01	; 1
     65a:	80 40       	sbci	r24, 0x00	; 0
     65c:	90 40       	sbci	r25, 0x00	; 0
     65e:	e1 f7       	brne	.-8      	; 0x658 <NUMERICAL_CONVERTER_Init+0x8c>
     660:	00 c0       	rjmp	.+0      	; 0x662 <NUMERICAL_CONVERTER_Init+0x96>
     662:	00 00       	nop
     664:	0e 94 82 05 	call	0xb04	; 0xb04 <LCD_Clear>
     668:	0e 94 bf 00 	call	0x17e	; 0x17e <menu_display>
     66c:	61 e0       	ldi	r22, 0x01	; 1
     66e:	80 91 62 00 	lds	r24, 0x0062	; 0x800062 <arrow_pos>
     672:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     676:	8e e7       	ldi	r24, 0x7E	; 126
     678:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     67c:	08 95       	ret

0000067e <NUMERICAL_CONVERTER_Runnable>:
     67e:	cf 93       	push	r28
     680:	df 93       	push	r29
     682:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <KEYPAD_GetEntry>
     686:	c8 2f       	mov	r28, r24
     688:	84 35       	cpi	r24, 0x54	; 84
     68a:	09 f4       	brne	.+2      	; 0x68e <NUMERICAL_CONVERTER_Runnable+0x10>
     68c:	ce c1       	rjmp	.+924    	; 0xa2a <__stack+0x1cb>
     68e:	83 34       	cpi	r24, 0x43	; 67
     690:	d9 f5       	brne	.+118    	; 0x708 <NUMERICAL_CONVERTER_Runnable+0x8a>
     692:	10 92 79 01 	sts	0x0179, r1	; 0x800179 <mode>
     696:	81 e0       	ldi	r24, 0x01	; 1
     698:	80 93 63 00 	sts	0x0063, r24	; 0x800063 <direction>
     69c:	10 92 6d 01 	sts	0x016D, r1	; 0x80016d <choice_idx>
     6a0:	80 93 62 00 	sts	0x0062, r24	; 0x800062 <arrow_pos>
     6a4:	ef e6       	ldi	r30, 0x6F	; 111
     6a6:	f1 e0       	ldi	r31, 0x01	; 1
     6a8:	89 e7       	ldi	r24, 0x79	; 121
     6aa:	91 e0       	ldi	r25, 0x01	; 1
     6ac:	11 92       	st	Z+, r1
     6ae:	8e 17       	cp	r24, r30
     6b0:	9f 07       	cpc	r25, r31
     6b2:	e1 f7       	brne	.-8      	; 0x6ac <NUMERICAL_CONVERTER_Runnable+0x2e>
     6b4:	81 e0       	ldi	r24, 0x01	; 1
     6b6:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     6ba:	10 92 6c 01 	sts	0x016C, r1	; 0x80016c <__data_end>
     6be:	85 e0       	ldi	r24, 0x05	; 5
     6c0:	80 93 61 00 	sts	0x0061, r24	; 0x800061 <hex_pos>
     6c4:	0e 94 82 05 	call	0xb04	; 0xb04 <LCD_Clear>
     6c8:	0e 94 bf 00 	call	0x17e	; 0x17e <menu_display>
     6cc:	61 e0       	ldi	r22, 0x01	; 1
     6ce:	80 91 62 00 	lds	r24, 0x0062	; 0x800062 <arrow_pos>
     6d2:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     6d6:	8e e7       	ldi	r24, 0x7E	; 126
     6d8:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     6dc:	80 91 79 01 	lds	r24, 0x0179	; 0x800179 <mode>
     6e0:	83 30       	cpi	r24, 0x03	; 3
     6e2:	09 f4       	brne	.+2      	; 0x6e6 <NUMERICAL_CONVERTER_Runnable+0x68>
     6e4:	b2 c0       	rjmp	.+356    	; 0x84a <__DATA_REGION_LENGTH__+0x4a>
     6e6:	38 f4       	brcc	.+14     	; 0x6f6 <NUMERICAL_CONVERTER_Runnable+0x78>
     6e8:	81 30       	cpi	r24, 0x01	; 1
     6ea:	09 f4       	brne	.+2      	; 0x6ee <NUMERICAL_CONVERTER_Runnable+0x70>
     6ec:	4d c0       	rjmp	.+154    	; 0x788 <NUMERICAL_CONVERTER_Runnable+0x10a>
     6ee:	82 30       	cpi	r24, 0x02	; 2
     6f0:	09 f4       	brne	.+2      	; 0x6f4 <NUMERICAL_CONVERTER_Runnable+0x76>
     6f2:	7c c0       	rjmp	.+248    	; 0x7ec <NUMERICAL_CONVERTER_Runnable+0x16e>
     6f4:	9a c1       	rjmp	.+820    	; 0xa2a <__stack+0x1cb>
     6f6:	85 30       	cpi	r24, 0x05	; 5
     6f8:	09 f4       	brne	.+2      	; 0x6fc <NUMERICAL_CONVERTER_Runnable+0x7e>
     6fa:	39 c1       	rjmp	.+626    	; 0x96e <__stack+0x10f>
     6fc:	08 f4       	brcc	.+2      	; 0x700 <NUMERICAL_CONVERTER_Runnable+0x82>
     6fe:	ee c0       	rjmp	.+476    	; 0x8dc <__stack+0x7d>
     700:	86 30       	cpi	r24, 0x06	; 6
     702:	09 f4       	brne	.+2      	; 0x706 <NUMERICAL_CONVERTER_Runnable+0x88>
     704:	62 c1       	rjmp	.+708    	; 0x9ca <__stack+0x16b>
     706:	91 c1       	rjmp	.+802    	; 0xa2a <__stack+0x1cb>
     708:	e0 91 79 01 	lds	r30, 0x0179	; 0x800179 <mode>
     70c:	8e 2f       	mov	r24, r30
     70e:	90 e0       	ldi	r25, 0x00	; 0
     710:	87 30       	cpi	r24, 0x07	; 7
     712:	91 05       	cpc	r25, r1
     714:	08 f0       	brcs	.+2      	; 0x718 <NUMERICAL_CONVERTER_Runnable+0x9a>
     716:	89 c1       	rjmp	.+786    	; 0xa2a <__stack+0x1cb>
     718:	fc 01       	movw	r30, r24
     71a:	e6 5d       	subi	r30, 0xD6	; 214
     71c:	ff 4f       	sbci	r31, 0xFF	; 255
     71e:	0c 94 20 0a 	jmp	0x1440	; 0x1440 <__tablejump2__>
     722:	c2 33       	cpi	r28, 0x32	; 50
     724:	81 f4       	brne	.+32     	; 0x746 <NUMERICAL_CONVERTER_Runnable+0xc8>
     726:	80 91 6d 01 	lds	r24, 0x016D	; 0x80016d <choice_idx>
     72a:	8f 5f       	subi	r24, 0xFF	; 255
     72c:	86 30       	cpi	r24, 0x06	; 6
     72e:	19 f0       	breq	.+6      	; 0x736 <NUMERICAL_CONVERTER_Runnable+0xb8>
     730:	80 93 6d 01 	sts	0x016D, r24	; 0x80016d <choice_idx>
     734:	02 c0       	rjmp	.+4      	; 0x73a <NUMERICAL_CONVERTER_Runnable+0xbc>
     736:	10 92 6d 01 	sts	0x016D, r1	; 0x80016d <choice_idx>
     73a:	81 e0       	ldi	r24, 0x01	; 1
     73c:	80 93 63 00 	sts	0x0063, r24	; 0x800063 <direction>
     740:	0e 94 bf 00 	call	0x17e	; 0x17e <menu_display>
     744:	72 c1       	rjmp	.+740    	; 0xa2a <__stack+0x1cb>
     746:	c8 33       	cpi	r28, 0x38	; 56
     748:	79 f4       	brne	.+30     	; 0x768 <NUMERICAL_CONVERTER_Runnable+0xea>
     74a:	80 91 6d 01 	lds	r24, 0x016D	; 0x80016d <choice_idx>
     74e:	81 50       	subi	r24, 0x01	; 1
     750:	18 f0       	brcs	.+6      	; 0x758 <NUMERICAL_CONVERTER_Runnable+0xda>
     752:	80 93 6d 01 	sts	0x016D, r24	; 0x80016d <choice_idx>
     756:	03 c0       	rjmp	.+6      	; 0x75e <NUMERICAL_CONVERTER_Runnable+0xe0>
     758:	85 e0       	ldi	r24, 0x05	; 5
     75a:	80 93 6d 01 	sts	0x016D, r24	; 0x80016d <choice_idx>
     75e:	10 92 63 00 	sts	0x0063, r1	; 0x800063 <direction>
     762:	0e 94 bf 00 	call	0x17e	; 0x17e <menu_display>
     766:	61 c1       	rjmp	.+706    	; 0xa2a <__stack+0x1cb>
     768:	cd 33       	cpi	r28, 0x3D	; 61
     76a:	09 f0       	breq	.+2      	; 0x76e <NUMERICAL_CONVERTER_Runnable+0xf0>
     76c:	5e c1       	rjmp	.+700    	; 0xa2a <__stack+0x1cb>
     76e:	e0 91 6d 01 	lds	r30, 0x016D	; 0x80016d <choice_idx>
     772:	f0 e0       	ldi	r31, 0x00	; 0
     774:	ef 5e       	subi	r30, 0xEF	; 239
     776:	fe 4f       	sbci	r31, 0xFE	; 254
     778:	80 81       	ld	r24, Z
     77a:	80 93 79 01 	sts	0x0179, r24	; 0x800179 <mode>
     77e:	0e 94 74 00 	call	0xe8	; 0xe8 <new_operation_reset>
     782:	10 92 60 00 	sts	0x0060, r1	; 0x800060 <__DATA_REGION_ORIGIN__>
     786:	51 c1       	rjmp	.+674    	; 0xa2a <__stack+0x1cb>
     788:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     78c:	81 11       	cpse	r24, r1
     78e:	0e 94 74 00 	call	0xe8	; 0xe8 <new_operation_reset>
     792:	cd 33       	cpi	r28, 0x3D	; 61
     794:	c9 f4       	brne	.+50     	; 0x7c8 <NUMERICAL_CONVERTER_Runnable+0x14a>
     796:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     79a:	f0 e0       	ldi	r31, 0x00	; 0
     79c:	e1 59       	subi	r30, 0x91	; 145
     79e:	fe 4f       	sbci	r31, 0xFE	; 254
     7a0:	10 82       	st	Z, r1
     7a2:	8f e6       	ldi	r24, 0x6F	; 111
     7a4:	91 e0       	ldi	r25, 0x01	; 1
     7a6:	0e 94 50 00 	call	0xa0	; 0xa0 <binary_to_int>
     7aa:	c8 2f       	mov	r28, r24
     7ac:	65 e0       	ldi	r22, 0x05	; 5
     7ae:	81 e0       	ldi	r24, 0x01	; 1
     7b0:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     7b4:	6c 2f       	mov	r22, r28
     7b6:	70 e0       	ldi	r23, 0x00	; 0
     7b8:	80 e0       	ldi	r24, 0x00	; 0
     7ba:	90 e0       	ldi	r25, 0x00	; 0
     7bc:	0e 94 94 06 	call	0xd28	; 0xd28 <LCD_WriteNumber>
     7c0:	81 e0       	ldi	r24, 0x01	; 1
     7c2:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     7c6:	31 c1       	rjmp	.+610    	; 0xa2a <__stack+0x1cb>
     7c8:	8c 2f       	mov	r24, r28
     7ca:	0e 94 97 02 	call	0x52e	; 0x52e <get_binary>
     7ce:	88 30       	cpi	r24, 0x08	; 8
     7d0:	09 f0       	breq	.+2      	; 0x7d4 <NUMERICAL_CONVERTER_Runnable+0x156>
     7d2:	2b c1       	rjmp	.+598    	; 0xa2a <__stack+0x1cb>
     7d4:	65 e0       	ldi	r22, 0x05	; 5
     7d6:	81 e0       	ldi	r24, 0x01	; 1
     7d8:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     7dc:	87 e9       	ldi	r24, 0x97	; 151
     7de:	90 e0       	ldi	r25, 0x00	; 0
     7e0:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     7e4:	81 e0       	ldi	r24, 0x01	; 1
     7e6:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     7ea:	1f c1       	rjmp	.+574    	; 0xa2a <__stack+0x1cb>
     7ec:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     7f0:	81 11       	cpse	r24, r1
     7f2:	0e 94 74 00 	call	0xe8	; 0xe8 <new_operation_reset>
     7f6:	cd 33       	cpi	r28, 0x3D	; 61
     7f8:	b1 f4       	brne	.+44     	; 0x826 <__DATA_REGION_LENGTH__+0x26>
     7fa:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     7fe:	f0 e0       	ldi	r31, 0x00	; 0
     800:	e1 59       	subi	r30, 0x91	; 145
     802:	fe 4f       	sbci	r31, 0xFE	; 254
     804:	10 82       	st	Z, r1
     806:	8f e6       	ldi	r24, 0x6F	; 111
     808:	91 e0       	ldi	r25, 0x01	; 1
     80a:	0e 94 50 00 	call	0xa0	; 0xa0 <binary_to_int>
     80e:	c8 2f       	mov	r28, r24
     810:	65 e0       	ldi	r22, 0x05	; 5
     812:	81 e0       	ldi	r24, 0x01	; 1
     814:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     818:	8c 2f       	mov	r24, r28
     81a:	0e 94 53 07 	call	0xea6	; 0xea6 <LCD_WriteHex>
     81e:	81 e0       	ldi	r24, 0x01	; 1
     820:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     824:	02 c1       	rjmp	.+516    	; 0xa2a <__stack+0x1cb>
     826:	8c 2f       	mov	r24, r28
     828:	0e 94 97 02 	call	0x52e	; 0x52e <get_binary>
     82c:	88 30       	cpi	r24, 0x08	; 8
     82e:	09 f0       	breq	.+2      	; 0x832 <__DATA_REGION_LENGTH__+0x32>
     830:	fc c0       	rjmp	.+504    	; 0xa2a <__stack+0x1cb>
     832:	65 e0       	ldi	r22, 0x05	; 5
     834:	81 e0       	ldi	r24, 0x01	; 1
     836:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     83a:	87 e9       	ldi	r24, 0x97	; 151
     83c:	90 e0       	ldi	r25, 0x00	; 0
     83e:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     842:	81 e0       	ldi	r24, 0x01	; 1
     844:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     848:	f0 c0       	rjmp	.+480    	; 0xa2a <__stack+0x1cb>
     84a:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     84e:	81 11       	cpse	r24, r1
     850:	0e 94 74 00 	call	0xe8	; 0xe8 <new_operation_reset>
     854:	cd 33       	cpi	r28, 0x3D	; 61
     856:	f1 f5       	brne	.+124    	; 0x8d4 <__stack+0x75>
     858:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     85c:	f0 e0       	ldi	r31, 0x00	; 0
     85e:	e1 59       	subi	r30, 0x91	; 145
     860:	fe 4f       	sbci	r31, 0xFE	; 254
     862:	10 82       	st	Z, r1
     864:	80 91 6f 01 	lds	r24, 0x016F	; 0x80016f <input>
     868:	88 23       	and	r24, r24
     86a:	f1 f0       	breq	.+60     	; 0x8a8 <__stack+0x49>
     86c:	90 e0       	ldi	r25, 0x00	; 0
     86e:	c0 e0       	ldi	r28, 0x00	; 0
     870:	d0 e0       	ldi	r29, 0x00	; 0
     872:	9e 01       	movw	r18, r28
     874:	22 0f       	add	r18, r18
     876:	33 1f       	adc	r19, r19
     878:	cc 0f       	add	r28, r28
     87a:	dd 1f       	adc	r29, r29
     87c:	cc 0f       	add	r28, r28
     87e:	dd 1f       	adc	r29, r29
     880:	cc 0f       	add	r28, r28
     882:	dd 1f       	adc	r29, r29
     884:	c2 0f       	add	r28, r18
     886:	d3 1f       	adc	r29, r19
     888:	80 53       	subi	r24, 0x30	; 48
     88a:	c8 0f       	add	r28, r24
     88c:	d1 1d       	adc	r29, r1
     88e:	9f 5f       	subi	r25, 0xFF	; 255
     890:	e9 2f       	mov	r30, r25
     892:	f0 e0       	ldi	r31, 0x00	; 0
     894:	e1 59       	subi	r30, 0x91	; 145
     896:	fe 4f       	sbci	r31, 0xFE	; 254
     898:	80 81       	ld	r24, Z
     89a:	81 11       	cpse	r24, r1
     89c:	ea cf       	rjmp	.-44     	; 0x872 <__stack+0x13>
     89e:	cf 3f       	cpi	r28, 0xFF	; 255
     8a0:	d1 05       	cpc	r29, r1
     8a2:	09 f0       	breq	.+2      	; 0x8a6 <__stack+0x47>
     8a4:	58 f4       	brcc	.+22     	; 0x8bc <__stack+0x5d>
     8a6:	02 c0       	rjmp	.+4      	; 0x8ac <__stack+0x4d>
     8a8:	c0 e0       	ldi	r28, 0x00	; 0
     8aa:	d0 e0       	ldi	r29, 0x00	; 0
     8ac:	65 e0       	ldi	r22, 0x05	; 5
     8ae:	81 e0       	ldi	r24, 0x01	; 1
     8b0:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     8b4:	8c 2f       	mov	r24, r28
     8b6:	0e 94 39 07 	call	0xe72	; 0xe72 <LCD_WriteBinary_8B>
     8ba:	08 c0       	rjmp	.+16     	; 0x8cc <__stack+0x6d>
     8bc:	65 e0       	ldi	r22, 0x05	; 5
     8be:	81 e0       	ldi	r24, 0x01	; 1
     8c0:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     8c4:	87 e9       	ldi	r24, 0x97	; 151
     8c6:	90 e0       	ldi	r25, 0x00	; 0
     8c8:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     8cc:	81 e0       	ldi	r24, 0x01	; 1
     8ce:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     8d2:	ab c0       	rjmp	.+342    	; 0xa2a <__stack+0x1cb>
     8d4:	8c 2f       	mov	r24, r28
     8d6:	0e 94 ae 00 	call	0x15c	; 0x15c <get_decimal>
     8da:	a7 c0       	rjmp	.+334    	; 0xa2a <__stack+0x1cb>
     8dc:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     8e0:	81 11       	cpse	r24, r1
     8e2:	0e 94 74 00 	call	0xe8	; 0xe8 <new_operation_reset>
     8e6:	cd 33       	cpi	r28, 0x3D	; 61
     8e8:	f1 f5       	brne	.+124    	; 0x966 <__stack+0x107>
     8ea:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     8ee:	f0 e0       	ldi	r31, 0x00	; 0
     8f0:	e1 59       	subi	r30, 0x91	; 145
     8f2:	fe 4f       	sbci	r31, 0xFE	; 254
     8f4:	10 82       	st	Z, r1
     8f6:	80 91 6f 01 	lds	r24, 0x016F	; 0x80016f <input>
     8fa:	88 23       	and	r24, r24
     8fc:	f1 f0       	breq	.+60     	; 0x93a <__stack+0xdb>
     8fe:	90 e0       	ldi	r25, 0x00	; 0
     900:	c0 e0       	ldi	r28, 0x00	; 0
     902:	d0 e0       	ldi	r29, 0x00	; 0
     904:	9e 01       	movw	r18, r28
     906:	22 0f       	add	r18, r18
     908:	33 1f       	adc	r19, r19
     90a:	cc 0f       	add	r28, r28
     90c:	dd 1f       	adc	r29, r29
     90e:	cc 0f       	add	r28, r28
     910:	dd 1f       	adc	r29, r29
     912:	cc 0f       	add	r28, r28
     914:	dd 1f       	adc	r29, r29
     916:	c2 0f       	add	r28, r18
     918:	d3 1f       	adc	r29, r19
     91a:	80 53       	subi	r24, 0x30	; 48
     91c:	c8 0f       	add	r28, r24
     91e:	d1 1d       	adc	r29, r1
     920:	9f 5f       	subi	r25, 0xFF	; 255
     922:	e9 2f       	mov	r30, r25
     924:	f0 e0       	ldi	r31, 0x00	; 0
     926:	e1 59       	subi	r30, 0x91	; 145
     928:	fe 4f       	sbci	r31, 0xFE	; 254
     92a:	80 81       	ld	r24, Z
     92c:	81 11       	cpse	r24, r1
     92e:	ea cf       	rjmp	.-44     	; 0x904 <__stack+0xa5>
     930:	cf 3f       	cpi	r28, 0xFF	; 255
     932:	d1 05       	cpc	r29, r1
     934:	09 f0       	breq	.+2      	; 0x938 <__stack+0xd9>
     936:	58 f4       	brcc	.+22     	; 0x94e <__stack+0xef>
     938:	02 c0       	rjmp	.+4      	; 0x93e <__stack+0xdf>
     93a:	c0 e0       	ldi	r28, 0x00	; 0
     93c:	d0 e0       	ldi	r29, 0x00	; 0
     93e:	65 e0       	ldi	r22, 0x05	; 5
     940:	81 e0       	ldi	r24, 0x01	; 1
     942:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     946:	8c 2f       	mov	r24, r28
     948:	0e 94 53 07 	call	0xea6	; 0xea6 <LCD_WriteHex>
     94c:	08 c0       	rjmp	.+16     	; 0x95e <__stack+0xff>
     94e:	65 e0       	ldi	r22, 0x05	; 5
     950:	81 e0       	ldi	r24, 0x01	; 1
     952:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     956:	87 e9       	ldi	r24, 0x97	; 151
     958:	90 e0       	ldi	r25, 0x00	; 0
     95a:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     95e:	81 e0       	ldi	r24, 0x01	; 1
     960:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     964:	62 c0       	rjmp	.+196    	; 0xa2a <__stack+0x1cb>
     966:	8c 2f       	mov	r24, r28
     968:	0e 94 ae 00 	call	0x15c	; 0x15c <get_decimal>
     96c:	5e c0       	rjmp	.+188    	; 0xa2a <__stack+0x1cb>
     96e:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     972:	81 11       	cpse	r24, r1
     974:	0e 94 74 00 	call	0xe8	; 0xe8 <new_operation_reset>
     978:	cd 33       	cpi	r28, 0x3D	; 61
     97a:	b1 f4       	brne	.+44     	; 0x9a8 <__stack+0x149>
     97c:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     980:	f0 e0       	ldi	r31, 0x00	; 0
     982:	e1 59       	subi	r30, 0x91	; 145
     984:	fe 4f       	sbci	r31, 0xFE	; 254
     986:	10 82       	st	Z, r1
     988:	8f e6       	ldi	r24, 0x6F	; 111
     98a:	91 e0       	ldi	r25, 0x01	; 1
     98c:	0e 94 bc 02 	call	0x578	; 0x578 <hex_to_int>
     990:	c8 2f       	mov	r28, r24
     992:	65 e0       	ldi	r22, 0x05	; 5
     994:	81 e0       	ldi	r24, 0x01	; 1
     996:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     99a:	8c 2f       	mov	r24, r28
     99c:	0e 94 39 07 	call	0xe72	; 0xe72 <LCD_WriteBinary_8B>
     9a0:	81 e0       	ldi	r24, 0x01	; 1
     9a2:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     9a6:	41 c0       	rjmp	.+130    	; 0xa2a <__stack+0x1cb>
     9a8:	8c 2f       	mov	r24, r28
     9aa:	0e 94 f3 01 	call	0x3e6	; 0x3e6 <get_hex>
     9ae:	88 30       	cpi	r24, 0x08	; 8
     9b0:	e1 f5       	brne	.+120    	; 0xa2a <__stack+0x1cb>
     9b2:	65 e0       	ldi	r22, 0x05	; 5
     9b4:	81 e0       	ldi	r24, 0x01	; 1
     9b6:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     9ba:	87 e9       	ldi	r24, 0x97	; 151
     9bc:	90 e0       	ldi	r25, 0x00	; 0
     9be:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     9c2:	81 e0       	ldi	r24, 0x01	; 1
     9c4:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     9c8:	30 c0       	rjmp	.+96     	; 0xa2a <__stack+0x1cb>
     9ca:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     9ce:	81 11       	cpse	r24, r1
     9d0:	0e 94 74 00 	call	0xe8	; 0xe8 <new_operation_reset>
     9d4:	cd 33       	cpi	r28, 0x3D	; 61
     9d6:	c9 f4       	brne	.+50     	; 0xa0a <__stack+0x1ab>
     9d8:	e0 91 6e 01 	lds	r30, 0x016E	; 0x80016e <input_idx>
     9dc:	f0 e0       	ldi	r31, 0x00	; 0
     9de:	e1 59       	subi	r30, 0x91	; 145
     9e0:	fe 4f       	sbci	r31, 0xFE	; 254
     9e2:	10 82       	st	Z, r1
     9e4:	8f e6       	ldi	r24, 0x6F	; 111
     9e6:	91 e0       	ldi	r25, 0x01	; 1
     9e8:	0e 94 bc 02 	call	0x578	; 0x578 <hex_to_int>
     9ec:	c8 2f       	mov	r28, r24
     9ee:	65 e0       	ldi	r22, 0x05	; 5
     9f0:	81 e0       	ldi	r24, 0x01	; 1
     9f2:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     9f6:	6c 2f       	mov	r22, r28
     9f8:	70 e0       	ldi	r23, 0x00	; 0
     9fa:	80 e0       	ldi	r24, 0x00	; 0
     9fc:	90 e0       	ldi	r25, 0x00	; 0
     9fe:	0e 94 94 06 	call	0xd28	; 0xd28 <LCD_WriteNumber>
     a02:	81 e0       	ldi	r24, 0x01	; 1
     a04:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     a08:	10 c0       	rjmp	.+32     	; 0xa2a <__stack+0x1cb>
     a0a:	8c 2f       	mov	r24, r28
     a0c:	0e 94 f3 01 	call	0x3e6	; 0x3e6 <get_hex>
     a10:	88 30       	cpi	r24, 0x08	; 8
     a12:	59 f4       	brne	.+22     	; 0xa2a <__stack+0x1cb>
     a14:	65 e0       	ldi	r22, 0x05	; 5
     a16:	81 e0       	ldi	r24, 0x01	; 1
     a18:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     a1c:	87 e9       	ldi	r24, 0x97	; 151
     a1e:	90 e0       	ldi	r25, 0x00	; 0
     a20:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     a24:	81 e0       	ldi	r24, 0x01	; 1
     a26:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     a2a:	df 91       	pop	r29
     a2c:	cf 91       	pop	r28
     a2e:	08 95       	ret

00000a30 <WriteInstruction>:
     a30:	cf 93       	push	r28
     a32:	c8 2f       	mov	r28, r24
     a34:	60 e0       	ldi	r22, 0x00	; 0
     a36:	8f e0       	ldi	r24, 0x0F	; 15
     a38:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     a3c:	8f ec       	ldi	r24, 0xCF	; 207
     a3e:	97 e0       	ldi	r25, 0x07	; 7
     a40:	01 97       	sbiw	r24, 0x01	; 1
     a42:	f1 f7       	brne	.-4      	; 0xa40 <WriteInstruction+0x10>
     a44:	00 c0       	rjmp	.+0      	; 0xa46 <WriteInstruction+0x16>
     a46:	00 00       	nop
     a48:	60 e0       	ldi	r22, 0x00	; 0
     a4a:	81 e0       	ldi	r24, 0x01	; 1
     a4c:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     a50:	6c 2f       	mov	r22, r28
     a52:	66 1f       	adc	r22, r22
     a54:	66 27       	eor	r22, r22
     a56:	66 1f       	adc	r22, r22
     a58:	86 e0       	ldi	r24, 0x06	; 6
     a5a:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     a5e:	c6 fb       	bst	r28, 6
     a60:	66 27       	eor	r22, r22
     a62:	60 f9       	bld	r22, 0
     a64:	85 e0       	ldi	r24, 0x05	; 5
     a66:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     a6a:	c5 fb       	bst	r28, 5
     a6c:	66 27       	eor	r22, r22
     a6e:	60 f9       	bld	r22, 0
     a70:	84 e0       	ldi	r24, 0x04	; 4
     a72:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     a76:	c4 fb       	bst	r28, 4
     a78:	66 27       	eor	r22, r22
     a7a:	60 f9       	bld	r22, 0
     a7c:	83 e0       	ldi	r24, 0x03	; 3
     a7e:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     a82:	61 e0       	ldi	r22, 0x01	; 1
     a84:	82 e0       	ldi	r24, 0x02	; 2
     a86:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     a8a:	8f e9       	ldi	r24, 0x9F	; 159
     a8c:	9f e0       	ldi	r25, 0x0F	; 15
     a8e:	01 97       	sbiw	r24, 0x01	; 1
     a90:	f1 f7       	brne	.-4      	; 0xa8e <WriteInstruction+0x5e>
     a92:	00 c0       	rjmp	.+0      	; 0xa94 <WriteInstruction+0x64>
     a94:	00 00       	nop
     a96:	60 e0       	ldi	r22, 0x00	; 0
     a98:	82 e0       	ldi	r24, 0x02	; 2
     a9a:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     a9e:	8f e9       	ldi	r24, 0x9F	; 159
     aa0:	9f e0       	ldi	r25, 0x0F	; 15
     aa2:	01 97       	sbiw	r24, 0x01	; 1
     aa4:	f1 f7       	brne	.-4      	; 0xaa2 <WriteInstruction+0x72>
     aa6:	00 c0       	rjmp	.+0      	; 0xaa8 <WriteInstruction+0x78>
     aa8:	00 00       	nop
     aaa:	c3 fb       	bst	r28, 3
     aac:	66 27       	eor	r22, r22
     aae:	60 f9       	bld	r22, 0
     ab0:	86 e0       	ldi	r24, 0x06	; 6
     ab2:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     ab6:	c2 fb       	bst	r28, 2
     ab8:	66 27       	eor	r22, r22
     aba:	60 f9       	bld	r22, 0
     abc:	85 e0       	ldi	r24, 0x05	; 5
     abe:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     ac2:	c1 fb       	bst	r28, 1
     ac4:	66 27       	eor	r22, r22
     ac6:	60 f9       	bld	r22, 0
     ac8:	84 e0       	ldi	r24, 0x04	; 4
     aca:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     ace:	6c 2f       	mov	r22, r28
     ad0:	61 70       	andi	r22, 0x01	; 1
     ad2:	83 e0       	ldi	r24, 0x03	; 3
     ad4:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     ad8:	61 e0       	ldi	r22, 0x01	; 1
     ada:	82 e0       	ldi	r24, 0x02	; 2
     adc:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     ae0:	8f e9       	ldi	r24, 0x9F	; 159
     ae2:	9f e0       	ldi	r25, 0x0F	; 15
     ae4:	01 97       	sbiw	r24, 0x01	; 1
     ae6:	f1 f7       	brne	.-4      	; 0xae4 <WriteInstruction+0xb4>
     ae8:	00 c0       	rjmp	.+0      	; 0xaea <WriteInstruction+0xba>
     aea:	00 00       	nop
     aec:	60 e0       	ldi	r22, 0x00	; 0
     aee:	82 e0       	ldi	r24, 0x02	; 2
     af0:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     af4:	8f e9       	ldi	r24, 0x9F	; 159
     af6:	9f e0       	ldi	r25, 0x0F	; 15
     af8:	01 97       	sbiw	r24, 0x01	; 1
     afa:	f1 f7       	brne	.-4      	; 0xaf8 <WriteInstruction+0xc8>
     afc:	00 c0       	rjmp	.+0      	; 0xafe <WriteInstruction+0xce>
     afe:	00 00       	nop
     b00:	cf 91       	pop	r28
     b02:	08 95       	ret

00000b04 <LCD_Clear>:
     b04:	81 e0       	ldi	r24, 0x01	; 1
     b06:	0e 94 18 05 	call	0xa30	; 0xa30 <WriteInstruction>
     b0a:	8f e9       	ldi	r24, 0x9F	; 159
     b0c:	9f e0       	ldi	r25, 0x0F	; 15
     b0e:	01 97       	sbiw	r24, 0x01	; 1
     b10:	f1 f7       	brne	.-4      	; 0xb0e <LCD_Clear+0xa>
     b12:	00 c0       	rjmp	.+0      	; 0xb14 <LCD_Clear+0x10>
     b14:	00 00       	nop
     b16:	10 92 7c 01 	sts	0x017C, r1	; 0x80017c <cell>
     b1a:	10 92 7b 01 	sts	0x017B, r1	; 0x80017b <line>
     b1e:	08 95       	ret

00000b20 <LCD_SetCursor>:
     b20:	80 93 7b 01 	sts	0x017B, r24	; 0x80017b <line>
     b24:	60 93 7c 01 	sts	0x017C, r22	; 0x80017c <cell>
     b28:	81 11       	cpse	r24, r1
     b2a:	06 c0       	rjmp	.+12     	; 0xb38 <LCD_SetCursor+0x18>
     b2c:	80 e8       	ldi	r24, 0x80	; 128
     b2e:	86 0f       	add	r24, r22
     b30:	0e 94 18 05 	call	0xa30	; 0xa30 <WriteInstruction>
     b34:	80 e0       	ldi	r24, 0x00	; 0
     b36:	08 95       	ret
     b38:	81 30       	cpi	r24, 0x01	; 1
     b3a:	31 f4       	brne	.+12     	; 0xb48 <LCD_SetCursor+0x28>
     b3c:	80 ec       	ldi	r24, 0xC0	; 192
     b3e:	86 0f       	add	r24, r22
     b40:	0e 94 18 05 	call	0xa30	; 0xa30 <WriteInstruction>
     b44:	80 e0       	ldi	r24, 0x00	; 0
     b46:	08 95       	ret
     b48:	84 e0       	ldi	r24, 0x04	; 4
     b4a:	08 95       	ret

00000b4c <WriteData>:
     b4c:	cf 93       	push	r28
     b4e:	df 93       	push	r29
     b50:	c8 2f       	mov	r28, r24
     b52:	d6 2f       	mov	r29, r22
     b54:	61 30       	cpi	r22, 0x01	; 1
     b56:	31 f4       	brne	.+12     	; 0xb64 <WriteData+0x18>
     b58:	60 91 7c 01 	lds	r22, 0x017C	; 0x80017c <cell>
     b5c:	80 91 7b 01 	lds	r24, 0x017B	; 0x80017b <line>
     b60:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     b64:	60 e0       	ldi	r22, 0x00	; 0
     b66:	8f e0       	ldi	r24, 0x0F	; 15
     b68:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     b6c:	8f ec       	ldi	r24, 0xCF	; 207
     b6e:	97 e0       	ldi	r25, 0x07	; 7
     b70:	01 97       	sbiw	r24, 0x01	; 1
     b72:	f1 f7       	brne	.-4      	; 0xb70 <WriteData+0x24>
     b74:	00 c0       	rjmp	.+0      	; 0xb76 <WriteData+0x2a>
     b76:	00 00       	nop
     b78:	61 e0       	ldi	r22, 0x01	; 1
     b7a:	81 e0       	ldi	r24, 0x01	; 1
     b7c:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     b80:	6c 2f       	mov	r22, r28
     b82:	66 1f       	adc	r22, r22
     b84:	66 27       	eor	r22, r22
     b86:	66 1f       	adc	r22, r22
     b88:	86 e0       	ldi	r24, 0x06	; 6
     b8a:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     b8e:	c6 fb       	bst	r28, 6
     b90:	66 27       	eor	r22, r22
     b92:	60 f9       	bld	r22, 0
     b94:	85 e0       	ldi	r24, 0x05	; 5
     b96:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     b9a:	c5 fb       	bst	r28, 5
     b9c:	66 27       	eor	r22, r22
     b9e:	60 f9       	bld	r22, 0
     ba0:	84 e0       	ldi	r24, 0x04	; 4
     ba2:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     ba6:	c4 fb       	bst	r28, 4
     ba8:	66 27       	eor	r22, r22
     baa:	60 f9       	bld	r22, 0
     bac:	83 e0       	ldi	r24, 0x03	; 3
     bae:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     bb2:	61 e0       	ldi	r22, 0x01	; 1
     bb4:	82 e0       	ldi	r24, 0x02	; 2
     bb6:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     bba:	8f e9       	ldi	r24, 0x9F	; 159
     bbc:	9f e0       	ldi	r25, 0x0F	; 15
     bbe:	01 97       	sbiw	r24, 0x01	; 1
     bc0:	f1 f7       	brne	.-4      	; 0xbbe <WriteData+0x72>
     bc2:	00 c0       	rjmp	.+0      	; 0xbc4 <WriteData+0x78>
     bc4:	00 00       	nop
     bc6:	60 e0       	ldi	r22, 0x00	; 0
     bc8:	82 e0       	ldi	r24, 0x02	; 2
     bca:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     bce:	8f e9       	ldi	r24, 0x9F	; 159
     bd0:	9f e0       	ldi	r25, 0x0F	; 15
     bd2:	01 97       	sbiw	r24, 0x01	; 1
     bd4:	f1 f7       	brne	.-4      	; 0xbd2 <WriteData+0x86>
     bd6:	00 c0       	rjmp	.+0      	; 0xbd8 <WriteData+0x8c>
     bd8:	00 00       	nop
     bda:	c3 fb       	bst	r28, 3
     bdc:	66 27       	eor	r22, r22
     bde:	60 f9       	bld	r22, 0
     be0:	86 e0       	ldi	r24, 0x06	; 6
     be2:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     be6:	c2 fb       	bst	r28, 2
     be8:	66 27       	eor	r22, r22
     bea:	60 f9       	bld	r22, 0
     bec:	85 e0       	ldi	r24, 0x05	; 5
     bee:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     bf2:	c1 fb       	bst	r28, 1
     bf4:	66 27       	eor	r22, r22
     bf6:	60 f9       	bld	r22, 0
     bf8:	84 e0       	ldi	r24, 0x04	; 4
     bfa:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     bfe:	6c 2f       	mov	r22, r28
     c00:	61 70       	andi	r22, 0x01	; 1
     c02:	83 e0       	ldi	r24, 0x03	; 3
     c04:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     c08:	61 e0       	ldi	r22, 0x01	; 1
     c0a:	82 e0       	ldi	r24, 0x02	; 2
     c0c:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     c10:	8f e9       	ldi	r24, 0x9F	; 159
     c12:	9f e0       	ldi	r25, 0x0F	; 15
     c14:	01 97       	sbiw	r24, 0x01	; 1
     c16:	f1 f7       	brne	.-4      	; 0xc14 <WriteData+0xc8>
     c18:	00 c0       	rjmp	.+0      	; 0xc1a <WriteData+0xce>
     c1a:	00 00       	nop
     c1c:	60 e0       	ldi	r22, 0x00	; 0
     c1e:	82 e0       	ldi	r24, 0x02	; 2
     c20:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     c24:	8f e9       	ldi	r24, 0x9F	; 159
     c26:	9f e0       	ldi	r25, 0x0F	; 15
     c28:	01 97       	sbiw	r24, 0x01	; 1
     c2a:	f1 f7       	brne	.-4      	; 0xc28 <WriteData+0xdc>
     c2c:	00 c0       	rjmp	.+0      	; 0xc2e <WriteData+0xe2>
     c2e:	00 00       	nop
     c30:	d1 30       	cpi	r29, 0x01	; 1
     c32:	b1 f4       	brne	.+44     	; 0xc60 <WriteData+0x114>
     c34:	80 91 7c 01 	lds	r24, 0x017C	; 0x80017c <cell>
     c38:	8f 30       	cpi	r24, 0x0F	; 15
     c3a:	79 f4       	brne	.+30     	; 0xc5a <WriteData+0x10e>
     c3c:	80 91 7b 01 	lds	r24, 0x017B	; 0x80017b <line>
     c40:	81 30       	cpi	r24, 0x01	; 1
     c42:	29 f4       	brne	.+10     	; 0xc4e <WriteData+0x102>
     c44:	10 92 7b 01 	sts	0x017B, r1	; 0x80017b <line>
     c48:	10 92 7c 01 	sts	0x017C, r1	; 0x80017c <cell>
     c4c:	09 c0       	rjmp	.+18     	; 0xc60 <WriteData+0x114>
     c4e:	8f 5f       	subi	r24, 0xFF	; 255
     c50:	80 93 7b 01 	sts	0x017B, r24	; 0x80017b <line>
     c54:	10 92 7c 01 	sts	0x017C, r1	; 0x80017c <cell>
     c58:	03 c0       	rjmp	.+6      	; 0xc60 <WriteData+0x114>
     c5a:	8f 5f       	subi	r24, 0xFF	; 255
     c5c:	80 93 7c 01 	sts	0x017C, r24	; 0x80017c <cell>
     c60:	df 91       	pop	r29
     c62:	cf 91       	pop	r28
     c64:	08 95       	ret

00000c66 <LCD_Init>:
     c66:	0f 93       	push	r16
     c68:	1f 93       	push	r17
     c6a:	cf 93       	push	r28
     c6c:	df 93       	push	r29
     c6e:	10 92 7c 01 	sts	0x017C, r1	; 0x80017c <cell>
     c72:	10 92 7b 01 	sts	0x017B, r1	; 0x80017b <line>
     c76:	10 92 7a 01 	sts	0x017A, r1	; 0x80017a <saved_patterns>
     c7a:	2f e7       	ldi	r18, 0x7F	; 127
     c7c:	88 e3       	ldi	r24, 0x38	; 56
     c7e:	91 e0       	ldi	r25, 0x01	; 1
     c80:	21 50       	subi	r18, 0x01	; 1
     c82:	80 40       	sbci	r24, 0x00	; 0
     c84:	90 40       	sbci	r25, 0x00	; 0
     c86:	e1 f7       	brne	.-8      	; 0xc80 <LCD_Init+0x1a>
     c88:	00 c0       	rjmp	.+0      	; 0xc8a <LCD_Init+0x24>
     c8a:	00 00       	nop
     c8c:	60 e0       	ldi	r22, 0x00	; 0
     c8e:	8f e0       	ldi	r24, 0x0F	; 15
     c90:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     c94:	8f ec       	ldi	r24, 0xCF	; 207
     c96:	97 e0       	ldi	r25, 0x07	; 7
     c98:	01 97       	sbiw	r24, 0x01	; 1
     c9a:	f1 f7       	brne	.-4      	; 0xc98 <LCD_Init+0x32>
     c9c:	00 c0       	rjmp	.+0      	; 0xc9e <LCD_Init+0x38>
     c9e:	00 00       	nop
     ca0:	82 e0       	ldi	r24, 0x02	; 2
     ca2:	0e 94 18 05 	call	0xa30	; 0xa30 <WriteInstruction>
     ca6:	88 e2       	ldi	r24, 0x28	; 40
     ca8:	0e 94 18 05 	call	0xa30	; 0xa30 <WriteInstruction>
     cac:	8f ec       	ldi	r24, 0xCF	; 207
     cae:	97 e0       	ldi	r25, 0x07	; 7
     cb0:	01 97       	sbiw	r24, 0x01	; 1
     cb2:	f1 f7       	brne	.-4      	; 0xcb0 <LCD_Init+0x4a>
     cb4:	00 c0       	rjmp	.+0      	; 0xcb6 <LCD_Init+0x50>
     cb6:	00 00       	nop
     cb8:	8c e0       	ldi	r24, 0x0C	; 12
     cba:	0e 94 18 05 	call	0xa30	; 0xa30 <WriteInstruction>
     cbe:	8f ec       	ldi	r24, 0xCF	; 207
     cc0:	97 e0       	ldi	r25, 0x07	; 7
     cc2:	01 97       	sbiw	r24, 0x01	; 1
     cc4:	f1 f7       	brne	.-4      	; 0xcc2 <LCD_Init+0x5c>
     cc6:	00 c0       	rjmp	.+0      	; 0xcc8 <LCD_Init+0x62>
     cc8:	00 00       	nop
     cca:	81 e0       	ldi	r24, 0x01	; 1
     ccc:	0e 94 18 05 	call	0xa30	; 0xa30 <WriteInstruction>
     cd0:	8f e9       	ldi	r24, 0x9F	; 159
     cd2:	9f e0       	ldi	r25, 0x0F	; 15
     cd4:	01 97       	sbiw	r24, 0x01	; 1
     cd6:	f1 f7       	brne	.-4      	; 0xcd4 <LCD_Init+0x6e>
     cd8:	00 c0       	rjmp	.+0      	; 0xcda <LCD_Init+0x74>
     cda:	00 00       	nop
     cdc:	86 e0       	ldi	r24, 0x06	; 6
     cde:	0e 94 18 05 	call	0xa30	; 0xa30 <WriteInstruction>
     ce2:	80 e4       	ldi	r24, 0x40	; 64
     ce4:	0e 94 18 05 	call	0xa30	; 0xa30 <WriteInstruction>
     ce8:	cc e2       	ldi	r28, 0x2C	; 44
     cea:	d1 e0       	ldi	r29, 0x01	; 1
     cec:	04 e3       	ldi	r16, 0x34	; 52
     cee:	11 e0       	ldi	r17, 0x01	; 1
     cf0:	60 e0       	ldi	r22, 0x00	; 0
     cf2:	89 91       	ld	r24, Y+
     cf4:	0e 94 a6 05 	call	0xb4c	; 0xb4c <WriteData>
     cf8:	c0 17       	cp	r28, r16
     cfa:	d1 07       	cpc	r29, r17
     cfc:	c9 f7       	brne	.-14     	; 0xcf0 <LCD_Init+0x8a>
     cfe:	80 91 7a 01 	lds	r24, 0x017A	; 0x80017a <saved_patterns>
     d02:	8f 5f       	subi	r24, 0xFF	; 255
     d04:	80 93 7a 01 	sts	0x017A, r24	; 0x80017a <saved_patterns>
     d08:	80 e8       	ldi	r24, 0x80	; 128
     d0a:	0e 94 18 05 	call	0xa30	; 0xa30 <WriteInstruction>
     d0e:	10 92 7c 01 	sts	0x017C, r1	; 0x80017c <cell>
     d12:	10 92 7b 01 	sts	0x017B, r1	; 0x80017b <line>
     d16:	df 91       	pop	r29
     d18:	cf 91       	pop	r28
     d1a:	1f 91       	pop	r17
     d1c:	0f 91       	pop	r16
     d1e:	08 95       	ret

00000d20 <LCD_WriteChar>:
     d20:	61 e0       	ldi	r22, 0x01	; 1
     d22:	0e 94 a6 05 	call	0xb4c	; 0xb4c <WriteData>
     d26:	08 95       	ret

00000d28 <LCD_WriteNumber>:
     d28:	4f 92       	push	r4
     d2a:	5f 92       	push	r5
     d2c:	6f 92       	push	r6
     d2e:	7f 92       	push	r7
     d30:	af 92       	push	r10
     d32:	bf 92       	push	r11
     d34:	cf 92       	push	r12
     d36:	df 92       	push	r13
     d38:	ef 92       	push	r14
     d3a:	ff 92       	push	r15
     d3c:	0f 93       	push	r16
     d3e:	1f 93       	push	r17
     d40:	cf 93       	push	r28
     d42:	df 93       	push	r29
     d44:	cd b7       	in	r28, 0x3d	; 61
     d46:	de b7       	in	r29, 0x3e	; 62
     d48:	2b 97       	sbiw	r28, 0x0b	; 11
     d4a:	0f b6       	in	r0, 0x3f	; 63
     d4c:	f8 94       	cli
     d4e:	de bf       	out	0x3e, r29	; 62
     d50:	0f be       	out	0x3f, r0	; 63
     d52:	cd bf       	out	0x3d, r28	; 61
     d54:	6b 01       	movw	r12, r22
     d56:	7c 01       	movw	r14, r24
     d58:	fe 01       	movw	r30, r28
     d5a:	31 96       	adiw	r30, 0x01	; 1
     d5c:	8b e0       	ldi	r24, 0x0B	; 11
     d5e:	df 01       	movw	r26, r30
     d60:	1d 92       	st	X+, r1
     d62:	8a 95       	dec	r24
     d64:	e9 f7       	brne	.-6      	; 0xd60 <LCD_WriteNumber+0x38>
     d66:	ff 20       	and	r15, r15
     d68:	0c f0       	brlt	.+2      	; 0xd6c <LCD_WriteNumber+0x44>
     d6a:	4f c0       	rjmp	.+158    	; 0xe0a <LCD_WriteNumber+0xe2>
     d6c:	8d e2       	ldi	r24, 0x2D	; 45
     d6e:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     d72:	f0 94       	com	r15
     d74:	e0 94       	com	r14
     d76:	d0 94       	com	r13
     d78:	c0 94       	com	r12
     d7a:	c1 1c       	adc	r12, r1
     d7c:	d1 1c       	adc	r13, r1
     d7e:	e1 1c       	adc	r14, r1
     d80:	f1 1c       	adc	r15, r1
     d82:	c1 14       	cp	r12, r1
     d84:	d1 04       	cpc	r13, r1
     d86:	e1 04       	cpc	r14, r1
     d88:	f1 04       	cpc	r15, r1
     d8a:	21 f4       	brne	.+8      	; 0xd94 <LCD_WriteNumber+0x6c>
     d8c:	80 e3       	ldi	r24, 0x30	; 48
     d8e:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     d92:	42 c0       	rjmp	.+132    	; 0xe18 <LCD_WriteNumber+0xf0>
     d94:	10 e0       	ldi	r17, 0x00	; 0
     d96:	0f 2e       	mov	r0, r31
     d98:	fa e0       	ldi	r31, 0x0A	; 10
     d9a:	4f 2e       	mov	r4, r31
     d9c:	51 2c       	mov	r5, r1
     d9e:	61 2c       	mov	r6, r1
     da0:	71 2c       	mov	r7, r1
     da2:	f0 2d       	mov	r31, r0
     da4:	01 c0       	rjmp	.+2      	; 0xda8 <LCD_WriteNumber+0x80>
     da6:	10 2f       	mov	r17, r16
     da8:	01 e0       	ldi	r16, 0x01	; 1
     daa:	01 0f       	add	r16, r17
     dac:	aa 24       	eor	r10, r10
     dae:	a3 94       	inc	r10
     db0:	b1 2c       	mov	r11, r1
     db2:	ac 0e       	add	r10, r28
     db4:	bd 1e       	adc	r11, r29
     db6:	a1 0e       	add	r10, r17
     db8:	b1 1c       	adc	r11, r1
     dba:	17 fd       	sbrc	r17, 7
     dbc:	ba 94       	dec	r11
     dbe:	c7 01       	movw	r24, r14
     dc0:	b6 01       	movw	r22, r12
     dc2:	a3 01       	movw	r20, r6
     dc4:	92 01       	movw	r18, r4
     dc6:	0e 94 01 0a 	call	0x1402	; 0x1402 <__divmodsi4>
     dca:	60 5d       	subi	r22, 0xD0	; 208
     dcc:	f5 01       	movw	r30, r10
     dce:	60 83       	st	Z, r22
     dd0:	c2 2e       	mov	r12, r18
     dd2:	d3 2e       	mov	r13, r19
     dd4:	e4 2e       	mov	r14, r20
     dd6:	f5 2e       	mov	r15, r21
     dd8:	c1 14       	cp	r12, r1
     dda:	d1 04       	cpc	r13, r1
     ddc:	e1 04       	cpc	r14, r1
     dde:	f1 04       	cpc	r15, r1
     de0:	11 f7       	brne	.-60     	; 0xda6 <LCD_WriteNumber+0x7e>
     de2:	11 23       	and	r17, r17
     de4:	cc f0       	brlt	.+50     	; 0xe18 <LCD_WriteNumber+0xf0>
     de6:	ff 24       	eor	r15, r15
     de8:	fa 94       	dec	r15
     dea:	f1 0e       	add	r15, r17
     dec:	e1 e0       	ldi	r30, 0x01	; 1
     dee:	f0 e0       	ldi	r31, 0x00	; 0
     df0:	ec 0f       	add	r30, r28
     df2:	fd 1f       	adc	r31, r29
     df4:	e1 0f       	add	r30, r17
     df6:	f1 1d       	adc	r31, r1
     df8:	17 fd       	sbrc	r17, 7
     dfa:	fa 95       	dec	r31
     dfc:	80 81       	ld	r24, Z
     dfe:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     e02:	1f 2d       	mov	r17, r15
     e04:	ff 20       	and	r15, r15
     e06:	7c f7       	brge	.-34     	; 0xde6 <LCD_WriteNumber+0xbe>
     e08:	07 c0       	rjmp	.+14     	; 0xe18 <LCD_WriteNumber+0xf0>
     e0a:	c1 14       	cp	r12, r1
     e0c:	d1 04       	cpc	r13, r1
     e0e:	e1 04       	cpc	r14, r1
     e10:	f1 04       	cpc	r15, r1
     e12:	09 f0       	breq	.+2      	; 0xe16 <LCD_WriteNumber+0xee>
     e14:	bf cf       	rjmp	.-130    	; 0xd94 <LCD_WriteNumber+0x6c>
     e16:	ba cf       	rjmp	.-140    	; 0xd8c <LCD_WriteNumber+0x64>
     e18:	2b 96       	adiw	r28, 0x0b	; 11
     e1a:	0f b6       	in	r0, 0x3f	; 63
     e1c:	f8 94       	cli
     e1e:	de bf       	out	0x3e, r29	; 62
     e20:	0f be       	out	0x3f, r0	; 63
     e22:	cd bf       	out	0x3d, r28	; 61
     e24:	df 91       	pop	r29
     e26:	cf 91       	pop	r28
     e28:	1f 91       	pop	r17
     e2a:	0f 91       	pop	r16
     e2c:	ff 90       	pop	r15
     e2e:	ef 90       	pop	r14
     e30:	df 90       	pop	r13
     e32:	cf 90       	pop	r12
     e34:	bf 90       	pop	r11
     e36:	af 90       	pop	r10
     e38:	7f 90       	pop	r7
     e3a:	6f 90       	pop	r6
     e3c:	5f 90       	pop	r5
     e3e:	4f 90       	pop	r4
     e40:	08 95       	ret

00000e42 <LCD_WriteString>:
     e42:	0f 93       	push	r16
     e44:	1f 93       	push	r17
     e46:	cf 93       	push	r28
     e48:	fc 01       	movw	r30, r24
     e4a:	89 2b       	or	r24, r25
     e4c:	71 f0       	breq	.+28     	; 0xe6a <LCD_WriteString+0x28>
     e4e:	80 81       	ld	r24, Z
     e50:	88 23       	and	r24, r24
     e52:	59 f0       	breq	.+22     	; 0xe6a <LCD_WriteString+0x28>
     e54:	8f 01       	movw	r16, r30
     e56:	c0 e0       	ldi	r28, 0x00	; 0
     e58:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     e5c:	cf 5f       	subi	r28, 0xFF	; 255
     e5e:	f8 01       	movw	r30, r16
     e60:	ec 0f       	add	r30, r28
     e62:	f1 1d       	adc	r31, r1
     e64:	80 81       	ld	r24, Z
     e66:	81 11       	cpse	r24, r1
     e68:	f7 cf       	rjmp	.-18     	; 0xe58 <LCD_WriteString+0x16>
     e6a:	cf 91       	pop	r28
     e6c:	1f 91       	pop	r17
     e6e:	0f 91       	pop	r16
     e70:	08 95       	ret

00000e72 <LCD_WriteBinary_8B>:
     e72:	0f 93       	push	r16
     e74:	1f 93       	push	r17
     e76:	cf 93       	push	r28
     e78:	df 93       	push	r29
     e7a:	c7 e0       	ldi	r28, 0x07	; 7
     e7c:	d0 e0       	ldi	r29, 0x00	; 0
     e7e:	08 2f       	mov	r16, r24
     e80:	10 e0       	ldi	r17, 0x00	; 0
     e82:	c8 01       	movw	r24, r16
     e84:	0c 2e       	mov	r0, r28
     e86:	02 c0       	rjmp	.+4      	; 0xe8c <LCD_WriteBinary_8B+0x1a>
     e88:	95 95       	asr	r25
     e8a:	87 95       	ror	r24
     e8c:	0a 94       	dec	r0
     e8e:	e2 f7       	brpl	.-8      	; 0xe88 <LCD_WriteBinary_8B+0x16>
     e90:	81 70       	andi	r24, 0x01	; 1
     e92:	80 5d       	subi	r24, 0xD0	; 208
     e94:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     e98:	21 97       	sbiw	r28, 0x01	; 1
     e9a:	98 f7       	brcc	.-26     	; 0xe82 <LCD_WriteBinary_8B+0x10>
     e9c:	df 91       	pop	r29
     e9e:	cf 91       	pop	r28
     ea0:	1f 91       	pop	r17
     ea2:	0f 91       	pop	r16
     ea4:	08 95       	ret

00000ea6 <LCD_WriteHex>:
     ea6:	1f 93       	push	r17
     ea8:	cf 93       	push	r28
     eaa:	df 93       	push	r29
     eac:	cd b7       	in	r28, 0x3d	; 61
     eae:	de b7       	in	r29, 0x3e	; 62
     eb0:	60 97       	sbiw	r28, 0x10	; 16
     eb2:	0f b6       	in	r0, 0x3f	; 63
     eb4:	f8 94       	cli
     eb6:	de bf       	out	0x3e, r29	; 62
     eb8:	0f be       	out	0x3f, r0	; 63
     eba:	cd bf       	out	0x3d, r28	; 61
     ebc:	18 2f       	mov	r17, r24
     ebe:	80 e1       	ldi	r24, 0x10	; 16
     ec0:	e4 e6       	ldi	r30, 0x64	; 100
     ec2:	f0 e0       	ldi	r31, 0x00	; 0
     ec4:	de 01       	movw	r26, r28
     ec6:	11 96       	adiw	r26, 0x01	; 1
     ec8:	01 90       	ld	r0, Z+
     eca:	0d 92       	st	X+, r0
     ecc:	8a 95       	dec	r24
     ece:	e1 f7       	brne	.-8      	; 0xec8 <LCD_WriteHex+0x22>
     ed0:	89 e2       	ldi	r24, 0x29	; 41
     ed2:	91 e0       	ldi	r25, 0x01	; 1
     ed4:	0e 94 21 07 	call	0xe42	; 0xe42 <LCD_WriteString>
     ed8:	81 2f       	mov	r24, r17
     eda:	82 95       	swap	r24
     edc:	8f 70       	andi	r24, 0x0F	; 15
     ede:	e1 e0       	ldi	r30, 0x01	; 1
     ee0:	f0 e0       	ldi	r31, 0x00	; 0
     ee2:	ec 0f       	add	r30, r28
     ee4:	fd 1f       	adc	r31, r29
     ee6:	e8 0f       	add	r30, r24
     ee8:	f1 1d       	adc	r31, r1
     eea:	80 81       	ld	r24, Z
     eec:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     ef0:	1f 70       	andi	r17, 0x0F	; 15
     ef2:	e1 e0       	ldi	r30, 0x01	; 1
     ef4:	f0 e0       	ldi	r31, 0x00	; 0
     ef6:	ec 0f       	add	r30, r28
     ef8:	fd 1f       	adc	r31, r29
     efa:	e1 0f       	add	r30, r17
     efc:	f1 1d       	adc	r31, r1
     efe:	80 81       	ld	r24, Z
     f00:	0e 94 90 06 	call	0xd20	; 0xd20 <LCD_WriteChar>
     f04:	60 96       	adiw	r28, 0x10	; 16
     f06:	0f b6       	in	r0, 0x3f	; 63
     f08:	f8 94       	cli
     f0a:	de bf       	out	0x3e, r29	; 62
     f0c:	0f be       	out	0x3f, r0	; 63
     f0e:	cd bf       	out	0x3d, r28	; 61
     f10:	df 91       	pop	r29
     f12:	cf 91       	pop	r28
     f14:	1f 91       	pop	r17
     f16:	08 95       	ret

00000f18 <LCD_ClearLocation>:
     f18:	0e 94 90 05 	call	0xb20	; 0xb20 <LCD_SetCursor>
     f1c:	84 30       	cpi	r24, 0x04	; 4
     f1e:	09 f4       	brne	.+2      	; 0xf22 <LCD_ClearLocation+0xa>
     f20:	57 c0       	rjmp	.+174    	; 0xfd0 <LCD_ClearLocation+0xb8>
     f22:	60 e0       	ldi	r22, 0x00	; 0
     f24:	8f e0       	ldi	r24, 0x0F	; 15
     f26:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     f2a:	8f ec       	ldi	r24, 0xCF	; 207
     f2c:	97 e0       	ldi	r25, 0x07	; 7
     f2e:	01 97       	sbiw	r24, 0x01	; 1
     f30:	f1 f7       	brne	.-4      	; 0xf2e <LCD_ClearLocation+0x16>
     f32:	00 c0       	rjmp	.+0      	; 0xf34 <LCD_ClearLocation+0x1c>
     f34:	00 00       	nop
     f36:	61 e0       	ldi	r22, 0x01	; 1
     f38:	81 e0       	ldi	r24, 0x01	; 1
     f3a:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     f3e:	60 e0       	ldi	r22, 0x00	; 0
     f40:	86 e0       	ldi	r24, 0x06	; 6
     f42:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     f46:	60 e0       	ldi	r22, 0x00	; 0
     f48:	85 e0       	ldi	r24, 0x05	; 5
     f4a:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     f4e:	60 e0       	ldi	r22, 0x00	; 0
     f50:	84 e0       	ldi	r24, 0x04	; 4
     f52:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     f56:	60 e0       	ldi	r22, 0x00	; 0
     f58:	83 e0       	ldi	r24, 0x03	; 3
     f5a:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     f5e:	61 e0       	ldi	r22, 0x01	; 1
     f60:	82 e0       	ldi	r24, 0x02	; 2
     f62:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     f66:	8f e9       	ldi	r24, 0x9F	; 159
     f68:	9f e0       	ldi	r25, 0x0F	; 15
     f6a:	01 97       	sbiw	r24, 0x01	; 1
     f6c:	f1 f7       	brne	.-4      	; 0xf6a <LCD_ClearLocation+0x52>
     f6e:	00 c0       	rjmp	.+0      	; 0xf70 <LCD_ClearLocation+0x58>
     f70:	00 00       	nop
     f72:	60 e0       	ldi	r22, 0x00	; 0
     f74:	82 e0       	ldi	r24, 0x02	; 2
     f76:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     f7a:	8f e9       	ldi	r24, 0x9F	; 159
     f7c:	9f e0       	ldi	r25, 0x0F	; 15
     f7e:	01 97       	sbiw	r24, 0x01	; 1
     f80:	f1 f7       	brne	.-4      	; 0xf7e <LCD_ClearLocation+0x66>
     f82:	00 c0       	rjmp	.+0      	; 0xf84 <LCD_ClearLocation+0x6c>
     f84:	00 00       	nop
     f86:	60 e0       	ldi	r22, 0x00	; 0
     f88:	86 e0       	ldi	r24, 0x06	; 6
     f8a:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     f8e:	60 e0       	ldi	r22, 0x00	; 0
     f90:	85 e0       	ldi	r24, 0x05	; 5
     f92:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     f96:	60 e0       	ldi	r22, 0x00	; 0
     f98:	84 e0       	ldi	r24, 0x04	; 4
     f9a:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     f9e:	60 e0       	ldi	r22, 0x00	; 0
     fa0:	83 e0       	ldi	r24, 0x03	; 3
     fa2:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     fa6:	61 e0       	ldi	r22, 0x01	; 1
     fa8:	82 e0       	ldi	r24, 0x02	; 2
     faa:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     fae:	8f e9       	ldi	r24, 0x9F	; 159
     fb0:	9f e0       	ldi	r25, 0x0F	; 15
     fb2:	01 97       	sbiw	r24, 0x01	; 1
     fb4:	f1 f7       	brne	.-4      	; 0xfb2 <LCD_ClearLocation+0x9a>
     fb6:	00 c0       	rjmp	.+0      	; 0xfb8 <LCD_ClearLocation+0xa0>
     fb8:	00 00       	nop
     fba:	60 e0       	ldi	r22, 0x00	; 0
     fbc:	82 e0       	ldi	r24, 0x02	; 2
     fbe:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
     fc2:	8f e9       	ldi	r24, 0x9F	; 159
     fc4:	9f e0       	ldi	r25, 0x0F	; 15
     fc6:	01 97       	sbiw	r24, 0x01	; 1
     fc8:	f1 f7       	brne	.-4      	; 0xfc6 <LCD_ClearLocation+0xae>
     fca:	00 c0       	rjmp	.+0      	; 0xfcc <LCD_ClearLocation+0xb4>
     fcc:	00 00       	nop
     fce:	80 e0       	ldi	r24, 0x00	; 0
     fd0:	08 95       	ret

00000fd2 <KEYPAD_Init>:
     fd2:	08 95       	ret

00000fd4 <KEYPAD_GetEntry>:
     fd4:	5f 92       	push	r5
     fd6:	6f 92       	push	r6
     fd8:	7f 92       	push	r7
     fda:	8f 92       	push	r8
     fdc:	9f 92       	push	r9
     fde:	af 92       	push	r10
     fe0:	bf 92       	push	r11
     fe2:	cf 92       	push	r12
     fe4:	df 92       	push	r13
     fe6:	ef 92       	push	r14
     fe8:	ff 92       	push	r15
     fea:	0f 93       	push	r16
     fec:	1f 93       	push	r17
     fee:	cf 93       	push	r28
     ff0:	df 93       	push	r29
     ff2:	0f 2e       	mov	r0, r31
     ff4:	f8 e3       	ldi	r31, 0x38	; 56
     ff6:	af 2e       	mov	r10, r31
     ff8:	f1 e0       	ldi	r31, 0x01	; 1
     ffa:	bf 2e       	mov	r11, r31
     ffc:	f0 2d       	mov	r31, r0
     ffe:	0c e3       	ldi	r16, 0x3C	; 60
    1000:	11 e0       	ldi	r17, 0x01	; 1
    1002:	e5 01       	movw	r28, r10
    1004:	61 e0       	ldi	r22, 0x01	; 1
    1006:	89 91       	ld	r24, Y+
    1008:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
    100c:	0c 17       	cp	r16, r28
    100e:	1d 07       	cpc	r17, r29
    1010:	c9 f7       	brne	.-14     	; 0x1004 <KEYPAD_GetEntry+0x30>
    1012:	0f 2e       	mov	r0, r31
    1014:	fc e3       	ldi	r31, 0x3C	; 60
    1016:	cf 2e       	mov	r12, r31
    1018:	f1 e0       	ldi	r31, 0x01	; 1
    101a:	df 2e       	mov	r13, r31
    101c:	f0 2d       	mov	r31, r0
    101e:	0f 2e       	mov	r0, r31
    1020:	fc e4       	ldi	r31, 0x4C	; 76
    1022:	8f 2e       	mov	r8, r31
    1024:	f1 e0       	ldi	r31, 0x01	; 1
    1026:	9f 2e       	mov	r9, r31
    1028:	f0 2d       	mov	r31, r0
    102a:	0f 2e       	mov	r0, r31
    102c:	f4 e5       	ldi	r31, 0x54	; 84
    102e:	5f 2e       	mov	r5, r31
    1030:	f0 2d       	mov	r31, r0
    1032:	0f 2e       	mov	r0, r31
    1034:	f8 e3       	ldi	r31, 0x38	; 56
    1036:	ef 2e       	mov	r14, r31
    1038:	f1 e0       	ldi	r31, 0x01	; 1
    103a:	ff 2e       	mov	r15, r31
    103c:	f0 2d       	mov	r31, r0
    103e:	f5 01       	movw	r30, r10
    1040:	61 90       	ld	r6, Z+
    1042:	5f 01       	movw	r10, r30
    1044:	60 e0       	ldi	r22, 0x00	; 0
    1046:	86 2d       	mov	r24, r6
    1048:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
    104c:	c4 e3       	ldi	r28, 0x34	; 52
    104e:	d1 e0       	ldi	r29, 0x01	; 1
    1050:	86 01       	movw	r16, r12
    1052:	79 90       	ld	r7, Y+
    1054:	87 2d       	mov	r24, r7
    1056:	0e 94 c3 09 	call	0x1386	; 0x1386 <DIO_ReadPin>
    105a:	81 11       	cpse	r24, r1
    105c:	07 c0       	rjmp	.+14     	; 0x106c <KEYPAD_GetEntry+0x98>
    105e:	87 2d       	mov	r24, r7
    1060:	0e 94 c3 09 	call	0x1386	; 0x1386 <DIO_ReadPin>
    1064:	88 23       	and	r24, r24
    1066:	d9 f3       	breq	.-10     	; 0x105e <KEYPAD_GetEntry+0x8a>
    1068:	f8 01       	movw	r30, r16
    106a:	50 80       	ld	r5, Z
    106c:	0f 5f       	subi	r16, 0xFF	; 255
    106e:	1f 4f       	sbci	r17, 0xFF	; 255
    1070:	ce 15       	cp	r28, r14
    1072:	df 05       	cpc	r29, r15
    1074:	71 f7       	brne	.-36     	; 0x1052 <KEYPAD_GetEntry+0x7e>
    1076:	61 e0       	ldi	r22, 0x01	; 1
    1078:	86 2d       	mov	r24, r6
    107a:	0e 94 3e 09 	call	0x127c	; 0x127c <DIO_WritePin>
    107e:	f4 e0       	ldi	r31, 0x04	; 4
    1080:	cf 0e       	add	r12, r31
    1082:	d1 1c       	adc	r13, r1
    1084:	c8 14       	cp	r12, r8
    1086:	d9 04       	cpc	r13, r9
    1088:	d1 f6       	brne	.-76     	; 0x103e <KEYPAD_GetEntry+0x6a>
    108a:	85 2d       	mov	r24, r5
    108c:	df 91       	pop	r29
    108e:	cf 91       	pop	r28
    1090:	1f 91       	pop	r17
    1092:	0f 91       	pop	r16
    1094:	ff 90       	pop	r15
    1096:	ef 90       	pop	r14
    1098:	df 90       	pop	r13
    109a:	cf 90       	pop	r12
    109c:	bf 90       	pop	r11
    109e:	af 90       	pop	r10
    10a0:	9f 90       	pop	r9
    10a2:	8f 90       	pop	r8
    10a4:	7f 90       	pop	r7
    10a6:	6f 90       	pop	r6
    10a8:	5f 90       	pop	r5
    10aa:	08 95       	ret

000010ac <DIO_Init>:
    10ac:	ec e4       	ldi	r30, 0x4C	; 76
    10ae:	f1 e0       	ldi	r31, 0x01	; 1
    10b0:	80 e0       	ldi	r24, 0x00	; 0
    10b2:	41 e0       	ldi	r20, 0x01	; 1
    10b4:	50 e0       	ldi	r21, 0x00	; 0
    10b6:	91 91       	ld	r25, Z+
    10b8:	28 2f       	mov	r18, r24
    10ba:	26 95       	lsr	r18
    10bc:	26 95       	lsr	r18
    10be:	26 95       	lsr	r18
    10c0:	38 2f       	mov	r19, r24
    10c2:	37 70       	andi	r19, 0x07	; 7
    10c4:	91 30       	cpi	r25, 0x01	; 1
    10c6:	09 f4       	brne	.+2      	; 0x10ca <DIO_Init+0x1e>
    10c8:	49 c0       	rjmp	.+146    	; 0x115c <DIO_Init+0xb0>
    10ca:	20 f0       	brcs	.+8      	; 0x10d4 <DIO_Init+0x28>
    10cc:	92 30       	cpi	r25, 0x02	; 2
    10ce:	09 f4       	brne	.+2      	; 0x10d2 <DIO_Init+0x26>
    10d0:	89 c0       	rjmp	.+274    	; 0x11e4 <DIO_Init+0x138>
    10d2:	cf c0       	rjmp	.+414    	; 0x1272 <DIO_Init+0x1c6>
    10d4:	21 30       	cpi	r18, 0x01	; 1
    10d6:	a9 f0       	breq	.+42     	; 0x1102 <DIO_Init+0x56>
    10d8:	28 f0       	brcs	.+10     	; 0x10e4 <DIO_Init+0x38>
    10da:	22 30       	cpi	r18, 0x02	; 2
    10dc:	09 f1       	breq	.+66     	; 0x1120 <DIO_Init+0x74>
    10de:	23 30       	cpi	r18, 0x03	; 3
    10e0:	71 f1       	breq	.+92     	; 0x113e <DIO_Init+0x92>
    10e2:	c7 c0       	rjmp	.+398    	; 0x1272 <DIO_Init+0x1c6>
    10e4:	9a b3       	in	r25, 0x1a	; 26
    10e6:	ba 01       	movw	r22, r20
    10e8:	02 c0       	rjmp	.+4      	; 0x10ee <DIO_Init+0x42>
    10ea:	66 0f       	add	r22, r22
    10ec:	77 1f       	adc	r23, r23
    10ee:	3a 95       	dec	r19
    10f0:	e2 f7       	brpl	.-8      	; 0x10ea <DIO_Init+0x3e>
    10f2:	9b 01       	movw	r18, r22
    10f4:	96 2b       	or	r25, r22
    10f6:	9a bb       	out	0x1a, r25	; 26
    10f8:	9b b3       	in	r25, 0x1b	; 27
    10fa:	20 95       	com	r18
    10fc:	29 23       	and	r18, r25
    10fe:	2b bb       	out	0x1b, r18	; 27
    1100:	b8 c0       	rjmp	.+368    	; 0x1272 <DIO_Init+0x1c6>
    1102:	97 b3       	in	r25, 0x17	; 23
    1104:	ba 01       	movw	r22, r20
    1106:	02 c0       	rjmp	.+4      	; 0x110c <DIO_Init+0x60>
    1108:	66 0f       	add	r22, r22
    110a:	77 1f       	adc	r23, r23
    110c:	3a 95       	dec	r19
    110e:	e2 f7       	brpl	.-8      	; 0x1108 <DIO_Init+0x5c>
    1110:	9b 01       	movw	r18, r22
    1112:	96 2b       	or	r25, r22
    1114:	97 bb       	out	0x17, r25	; 23
    1116:	98 b3       	in	r25, 0x18	; 24
    1118:	20 95       	com	r18
    111a:	29 23       	and	r18, r25
    111c:	28 bb       	out	0x18, r18	; 24
    111e:	a9 c0       	rjmp	.+338    	; 0x1272 <DIO_Init+0x1c6>
    1120:	94 b3       	in	r25, 0x14	; 20
    1122:	ba 01       	movw	r22, r20
    1124:	02 c0       	rjmp	.+4      	; 0x112a <DIO_Init+0x7e>
    1126:	66 0f       	add	r22, r22
    1128:	77 1f       	adc	r23, r23
    112a:	3a 95       	dec	r19
    112c:	e2 f7       	brpl	.-8      	; 0x1126 <DIO_Init+0x7a>
    112e:	9b 01       	movw	r18, r22
    1130:	96 2b       	or	r25, r22
    1132:	94 bb       	out	0x14, r25	; 20
    1134:	95 b3       	in	r25, 0x15	; 21
    1136:	20 95       	com	r18
    1138:	29 23       	and	r18, r25
    113a:	25 bb       	out	0x15, r18	; 21
    113c:	9a c0       	rjmp	.+308    	; 0x1272 <DIO_Init+0x1c6>
    113e:	91 b3       	in	r25, 0x11	; 17
    1140:	ba 01       	movw	r22, r20
    1142:	02 c0       	rjmp	.+4      	; 0x1148 <DIO_Init+0x9c>
    1144:	66 0f       	add	r22, r22
    1146:	77 1f       	adc	r23, r23
    1148:	3a 95       	dec	r19
    114a:	e2 f7       	brpl	.-8      	; 0x1144 <DIO_Init+0x98>
    114c:	9b 01       	movw	r18, r22
    114e:	96 2b       	or	r25, r22
    1150:	91 bb       	out	0x11, r25	; 17
    1152:	92 b3       	in	r25, 0x12	; 18
    1154:	20 95       	com	r18
    1156:	29 23       	and	r18, r25
    1158:	22 bb       	out	0x12, r18	; 18
    115a:	8b c0       	rjmp	.+278    	; 0x1272 <DIO_Init+0x1c6>
    115c:	21 30       	cpi	r18, 0x01	; 1
    115e:	a9 f0       	breq	.+42     	; 0x118a <DIO_Init+0xde>
    1160:	28 f0       	brcs	.+10     	; 0x116c <DIO_Init+0xc0>
    1162:	22 30       	cpi	r18, 0x02	; 2
    1164:	09 f1       	breq	.+66     	; 0x11a8 <DIO_Init+0xfc>
    1166:	23 30       	cpi	r18, 0x03	; 3
    1168:	71 f1       	breq	.+92     	; 0x11c6 <DIO_Init+0x11a>
    116a:	83 c0       	rjmp	.+262    	; 0x1272 <DIO_Init+0x1c6>
    116c:	9a b3       	in	r25, 0x1a	; 26
    116e:	ba 01       	movw	r22, r20
    1170:	02 c0       	rjmp	.+4      	; 0x1176 <DIO_Init+0xca>
    1172:	66 0f       	add	r22, r22
    1174:	77 1f       	adc	r23, r23
    1176:	3a 95       	dec	r19
    1178:	e2 f7       	brpl	.-8      	; 0x1172 <DIO_Init+0xc6>
    117a:	9b 01       	movw	r18, r22
    117c:	20 95       	com	r18
    117e:	92 23       	and	r25, r18
    1180:	9a bb       	out	0x1a, r25	; 26
    1182:	9b b3       	in	r25, 0x1b	; 27
    1184:	29 23       	and	r18, r25
    1186:	2b bb       	out	0x1b, r18	; 27
    1188:	74 c0       	rjmp	.+232    	; 0x1272 <DIO_Init+0x1c6>
    118a:	97 b3       	in	r25, 0x17	; 23
    118c:	ba 01       	movw	r22, r20
    118e:	02 c0       	rjmp	.+4      	; 0x1194 <DIO_Init+0xe8>
    1190:	66 0f       	add	r22, r22
    1192:	77 1f       	adc	r23, r23
    1194:	3a 95       	dec	r19
    1196:	e2 f7       	brpl	.-8      	; 0x1190 <DIO_Init+0xe4>
    1198:	9b 01       	movw	r18, r22
    119a:	20 95       	com	r18
    119c:	92 23       	and	r25, r18
    119e:	97 bb       	out	0x17, r25	; 23
    11a0:	98 b3       	in	r25, 0x18	; 24
    11a2:	29 23       	and	r18, r25
    11a4:	28 bb       	out	0x18, r18	; 24
    11a6:	65 c0       	rjmp	.+202    	; 0x1272 <DIO_Init+0x1c6>
    11a8:	94 b3       	in	r25, 0x14	; 20
    11aa:	ba 01       	movw	r22, r20
    11ac:	02 c0       	rjmp	.+4      	; 0x11b2 <DIO_Init+0x106>
    11ae:	66 0f       	add	r22, r22
    11b0:	77 1f       	adc	r23, r23
    11b2:	3a 95       	dec	r19
    11b4:	e2 f7       	brpl	.-8      	; 0x11ae <DIO_Init+0x102>
    11b6:	9b 01       	movw	r18, r22
    11b8:	20 95       	com	r18
    11ba:	92 23       	and	r25, r18
    11bc:	94 bb       	out	0x14, r25	; 20
    11be:	95 b3       	in	r25, 0x15	; 21
    11c0:	29 23       	and	r18, r25
    11c2:	25 bb       	out	0x15, r18	; 21
    11c4:	56 c0       	rjmp	.+172    	; 0x1272 <DIO_Init+0x1c6>
    11c6:	91 b3       	in	r25, 0x11	; 17
    11c8:	ba 01       	movw	r22, r20
    11ca:	02 c0       	rjmp	.+4      	; 0x11d0 <DIO_Init+0x124>
    11cc:	66 0f       	add	r22, r22
    11ce:	77 1f       	adc	r23, r23
    11d0:	3a 95       	dec	r19
    11d2:	e2 f7       	brpl	.-8      	; 0x11cc <DIO_Init+0x120>
    11d4:	9b 01       	movw	r18, r22
    11d6:	20 95       	com	r18
    11d8:	92 23       	and	r25, r18
    11da:	91 bb       	out	0x11, r25	; 17
    11dc:	92 b3       	in	r25, 0x12	; 18
    11de:	29 23       	and	r18, r25
    11e0:	22 bb       	out	0x12, r18	; 18
    11e2:	47 c0       	rjmp	.+142    	; 0x1272 <DIO_Init+0x1c6>
    11e4:	21 30       	cpi	r18, 0x01	; 1
    11e6:	b1 f0       	breq	.+44     	; 0x1214 <DIO_Init+0x168>
    11e8:	28 f0       	brcs	.+10     	; 0x11f4 <DIO_Init+0x148>
    11ea:	22 30       	cpi	r18, 0x02	; 2
    11ec:	19 f1       	breq	.+70     	; 0x1234 <DIO_Init+0x188>
    11ee:	23 30       	cpi	r18, 0x03	; 3
    11f0:	89 f1       	breq	.+98     	; 0x1254 <DIO_Init+0x1a8>
    11f2:	3f c0       	rjmp	.+126    	; 0x1272 <DIO_Init+0x1c6>
    11f4:	9a b3       	in	r25, 0x1a	; 26
    11f6:	ba 01       	movw	r22, r20
    11f8:	02 c0       	rjmp	.+4      	; 0x11fe <DIO_Init+0x152>
    11fa:	66 0f       	add	r22, r22
    11fc:	77 1f       	adc	r23, r23
    11fe:	3a 95       	dec	r19
    1200:	e2 f7       	brpl	.-8      	; 0x11fa <DIO_Init+0x14e>
    1202:	9b 01       	movw	r18, r22
    1204:	36 2f       	mov	r19, r22
    1206:	30 95       	com	r19
    1208:	93 23       	and	r25, r19
    120a:	9a bb       	out	0x1a, r25	; 26
    120c:	9b b3       	in	r25, 0x1b	; 27
    120e:	29 2b       	or	r18, r25
    1210:	2b bb       	out	0x1b, r18	; 27
    1212:	2f c0       	rjmp	.+94     	; 0x1272 <DIO_Init+0x1c6>
    1214:	97 b3       	in	r25, 0x17	; 23
    1216:	ba 01       	movw	r22, r20
    1218:	02 c0       	rjmp	.+4      	; 0x121e <DIO_Init+0x172>
    121a:	66 0f       	add	r22, r22
    121c:	77 1f       	adc	r23, r23
    121e:	3a 95       	dec	r19
    1220:	e2 f7       	brpl	.-8      	; 0x121a <DIO_Init+0x16e>
    1222:	9b 01       	movw	r18, r22
    1224:	36 2f       	mov	r19, r22
    1226:	30 95       	com	r19
    1228:	93 23       	and	r25, r19
    122a:	97 bb       	out	0x17, r25	; 23
    122c:	98 b3       	in	r25, 0x18	; 24
    122e:	29 2b       	or	r18, r25
    1230:	28 bb       	out	0x18, r18	; 24
    1232:	1f c0       	rjmp	.+62     	; 0x1272 <DIO_Init+0x1c6>
    1234:	94 b3       	in	r25, 0x14	; 20
    1236:	ba 01       	movw	r22, r20
    1238:	02 c0       	rjmp	.+4      	; 0x123e <DIO_Init+0x192>
    123a:	66 0f       	add	r22, r22
    123c:	77 1f       	adc	r23, r23
    123e:	3a 95       	dec	r19
    1240:	e2 f7       	brpl	.-8      	; 0x123a <DIO_Init+0x18e>
    1242:	9b 01       	movw	r18, r22
    1244:	36 2f       	mov	r19, r22
    1246:	30 95       	com	r19
    1248:	93 23       	and	r25, r19
    124a:	94 bb       	out	0x14, r25	; 20
    124c:	95 b3       	in	r25, 0x15	; 21
    124e:	29 2b       	or	r18, r25
    1250:	25 bb       	out	0x15, r18	; 21
    1252:	0f c0       	rjmp	.+30     	; 0x1272 <DIO_Init+0x1c6>
    1254:	91 b3       	in	r25, 0x11	; 17
    1256:	ba 01       	movw	r22, r20
    1258:	02 c0       	rjmp	.+4      	; 0x125e <DIO_Init+0x1b2>
    125a:	66 0f       	add	r22, r22
    125c:	77 1f       	adc	r23, r23
    125e:	3a 95       	dec	r19
    1260:	e2 f7       	brpl	.-8      	; 0x125a <DIO_Init+0x1ae>
    1262:	9b 01       	movw	r18, r22
    1264:	36 2f       	mov	r19, r22
    1266:	30 95       	com	r19
    1268:	93 23       	and	r25, r19
    126a:	91 bb       	out	0x11, r25	; 17
    126c:	92 b3       	in	r25, 0x12	; 18
    126e:	29 2b       	or	r18, r25
    1270:	22 bb       	out	0x12, r18	; 18
    1272:	8f 5f       	subi	r24, 0xFF	; 255
    1274:	80 32       	cpi	r24, 0x20	; 32
    1276:	09 f0       	breq	.+2      	; 0x127a <DIO_Init+0x1ce>
    1278:	1e cf       	rjmp	.-452    	; 0x10b6 <DIO_Init+0xa>
    127a:	08 95       	ret

0000127c <DIO_WritePin>:
    127c:	98 2f       	mov	r25, r24
    127e:	96 95       	lsr	r25
    1280:	96 95       	lsr	r25
    1282:	96 95       	lsr	r25
    1284:	87 70       	andi	r24, 0x07	; 7
    1286:	61 30       	cpi	r22, 0x01	; 1
    1288:	e1 f5       	brne	.+120    	; 0x1302 <DIO_WritePin+0x86>
    128a:	91 30       	cpi	r25, 0x01	; 1
    128c:	99 f0       	breq	.+38     	; 0x12b4 <DIO_WritePin+0x38>
    128e:	28 f0       	brcs	.+10     	; 0x129a <DIO_WritePin+0x1e>
    1290:	92 30       	cpi	r25, 0x02	; 2
    1292:	e9 f0       	breq	.+58     	; 0x12ce <DIO_WritePin+0x52>
    1294:	93 30       	cpi	r25, 0x03	; 3
    1296:	41 f1       	breq	.+80     	; 0x12e8 <DIO_WritePin+0x6c>
    1298:	08 95       	ret
    129a:	4b b3       	in	r20, 0x1b	; 27
    129c:	21 e0       	ldi	r18, 0x01	; 1
    129e:	30 e0       	ldi	r19, 0x00	; 0
    12a0:	b9 01       	movw	r22, r18
    12a2:	02 c0       	rjmp	.+4      	; 0x12a8 <DIO_WritePin+0x2c>
    12a4:	66 0f       	add	r22, r22
    12a6:	77 1f       	adc	r23, r23
    12a8:	8a 95       	dec	r24
    12aa:	e2 f7       	brpl	.-8      	; 0x12a4 <DIO_WritePin+0x28>
    12ac:	cb 01       	movw	r24, r22
    12ae:	84 2b       	or	r24, r20
    12b0:	8b bb       	out	0x1b, r24	; 27
    12b2:	08 95       	ret
    12b4:	48 b3       	in	r20, 0x18	; 24
    12b6:	21 e0       	ldi	r18, 0x01	; 1
    12b8:	30 e0       	ldi	r19, 0x00	; 0
    12ba:	b9 01       	movw	r22, r18
    12bc:	02 c0       	rjmp	.+4      	; 0x12c2 <DIO_WritePin+0x46>
    12be:	66 0f       	add	r22, r22
    12c0:	77 1f       	adc	r23, r23
    12c2:	8a 95       	dec	r24
    12c4:	e2 f7       	brpl	.-8      	; 0x12be <DIO_WritePin+0x42>
    12c6:	cb 01       	movw	r24, r22
    12c8:	84 2b       	or	r24, r20
    12ca:	88 bb       	out	0x18, r24	; 24
    12cc:	08 95       	ret
    12ce:	45 b3       	in	r20, 0x15	; 21
    12d0:	21 e0       	ldi	r18, 0x01	; 1
    12d2:	30 e0       	ldi	r19, 0x00	; 0
    12d4:	b9 01       	movw	r22, r18
    12d6:	02 c0       	rjmp	.+4      	; 0x12dc <DIO_WritePin+0x60>
    12d8:	66 0f       	add	r22, r22
    12da:	77 1f       	adc	r23, r23
    12dc:	8a 95       	dec	r24
    12de:	e2 f7       	brpl	.-8      	; 0x12d8 <DIO_WritePin+0x5c>
    12e0:	cb 01       	movw	r24, r22
    12e2:	84 2b       	or	r24, r20
    12e4:	85 bb       	out	0x15, r24	; 21
    12e6:	08 95       	ret
    12e8:	42 b3       	in	r20, 0x12	; 18
    12ea:	21 e0       	ldi	r18, 0x01	; 1
    12ec:	30 e0       	ldi	r19, 0x00	; 0
    12ee:	b9 01       	movw	r22, r18
    12f0:	02 c0       	rjmp	.+4      	; 0x12f6 <DIO_WritePin+0x7a>
    12f2:	66 0f       	add	r22, r22
    12f4:	77 1f       	adc	r23, r23
    12f6:	8a 95       	dec	r24
    12f8:	e2 f7       	brpl	.-8      	; 0x12f2 <DIO_WritePin+0x76>
    12fa:	cb 01       	movw	r24, r22
    12fc:	84 2b       	or	r24, r20
    12fe:	82 bb       	out	0x12, r24	; 18
    1300:	08 95       	ret
    1302:	61 11       	cpse	r22, r1
    1304:	3f c0       	rjmp	.+126    	; 0x1384 <DIO_WritePin+0x108>
    1306:	91 30       	cpi	r25, 0x01	; 1
    1308:	a1 f0       	breq	.+40     	; 0x1332 <DIO_WritePin+0xb6>
    130a:	28 f0       	brcs	.+10     	; 0x1316 <DIO_WritePin+0x9a>
    130c:	92 30       	cpi	r25, 0x02	; 2
    130e:	f9 f0       	breq	.+62     	; 0x134e <DIO_WritePin+0xd2>
    1310:	93 30       	cpi	r25, 0x03	; 3
    1312:	59 f1       	breq	.+86     	; 0x136a <DIO_WritePin+0xee>
    1314:	08 95       	ret
    1316:	4b b3       	in	r20, 0x1b	; 27
    1318:	21 e0       	ldi	r18, 0x01	; 1
    131a:	30 e0       	ldi	r19, 0x00	; 0
    131c:	b9 01       	movw	r22, r18
    131e:	02 c0       	rjmp	.+4      	; 0x1324 <DIO_WritePin+0xa8>
    1320:	66 0f       	add	r22, r22
    1322:	77 1f       	adc	r23, r23
    1324:	8a 95       	dec	r24
    1326:	e2 f7       	brpl	.-8      	; 0x1320 <DIO_WritePin+0xa4>
    1328:	cb 01       	movw	r24, r22
    132a:	80 95       	com	r24
    132c:	84 23       	and	r24, r20
    132e:	8b bb       	out	0x1b, r24	; 27
    1330:	08 95       	ret
    1332:	48 b3       	in	r20, 0x18	; 24
    1334:	21 e0       	ldi	r18, 0x01	; 1
    1336:	30 e0       	ldi	r19, 0x00	; 0
    1338:	b9 01       	movw	r22, r18
    133a:	02 c0       	rjmp	.+4      	; 0x1340 <DIO_WritePin+0xc4>
    133c:	66 0f       	add	r22, r22
    133e:	77 1f       	adc	r23, r23
    1340:	8a 95       	dec	r24
    1342:	e2 f7       	brpl	.-8      	; 0x133c <DIO_WritePin+0xc0>
    1344:	cb 01       	movw	r24, r22
    1346:	80 95       	com	r24
    1348:	84 23       	and	r24, r20
    134a:	88 bb       	out	0x18, r24	; 24
    134c:	08 95       	ret
    134e:	45 b3       	in	r20, 0x15	; 21
    1350:	21 e0       	ldi	r18, 0x01	; 1
    1352:	30 e0       	ldi	r19, 0x00	; 0
    1354:	b9 01       	movw	r22, r18
    1356:	02 c0       	rjmp	.+4      	; 0x135c <DIO_WritePin+0xe0>
    1358:	66 0f       	add	r22, r22
    135a:	77 1f       	adc	r23, r23
    135c:	8a 95       	dec	r24
    135e:	e2 f7       	brpl	.-8      	; 0x1358 <DIO_WritePin+0xdc>
    1360:	cb 01       	movw	r24, r22
    1362:	80 95       	com	r24
    1364:	84 23       	and	r24, r20
    1366:	85 bb       	out	0x15, r24	; 21
    1368:	08 95       	ret
    136a:	42 b3       	in	r20, 0x12	; 18
    136c:	21 e0       	ldi	r18, 0x01	; 1
    136e:	30 e0       	ldi	r19, 0x00	; 0
    1370:	b9 01       	movw	r22, r18
    1372:	02 c0       	rjmp	.+4      	; 0x1378 <DIO_WritePin+0xfc>
    1374:	66 0f       	add	r22, r22
    1376:	77 1f       	adc	r23, r23
    1378:	8a 95       	dec	r24
    137a:	e2 f7       	brpl	.-8      	; 0x1374 <DIO_WritePin+0xf8>
    137c:	cb 01       	movw	r24, r22
    137e:	80 95       	com	r24
    1380:	84 23       	and	r24, r20
    1382:	82 bb       	out	0x12, r24	; 18
    1384:	08 95       	ret

00001386 <DIO_ReadPin>:
    1386:	28 2f       	mov	r18, r24
    1388:	27 70       	andi	r18, 0x07	; 7
    138a:	86 95       	lsr	r24
    138c:	86 95       	lsr	r24
    138e:	86 95       	lsr	r24
    1390:	81 30       	cpi	r24, 0x01	; 1
    1392:	79 f0       	breq	.+30     	; 0x13b2 <DIO_ReadPin+0x2c>
    1394:	28 f0       	brcs	.+10     	; 0x13a0 <DIO_ReadPin+0x1a>
    1396:	82 30       	cpi	r24, 0x02	; 2
    1398:	a9 f0       	breq	.+42     	; 0x13c4 <DIO_ReadPin+0x3e>
    139a:	83 30       	cpi	r24, 0x03	; 3
    139c:	e1 f0       	breq	.+56     	; 0x13d6 <DIO_ReadPin+0x50>
    139e:	24 c0       	rjmp	.+72     	; 0x13e8 <DIO_ReadPin+0x62>
    13a0:	89 b3       	in	r24, 0x19	; 25
    13a2:	90 e0       	ldi	r25, 0x00	; 0
    13a4:	02 c0       	rjmp	.+4      	; 0x13aa <DIO_ReadPin+0x24>
    13a6:	95 95       	asr	r25
    13a8:	87 95       	ror	r24
    13aa:	2a 95       	dec	r18
    13ac:	e2 f7       	brpl	.-8      	; 0x13a6 <DIO_ReadPin+0x20>
    13ae:	81 70       	andi	r24, 0x01	; 1
    13b0:	08 95       	ret
    13b2:	86 b3       	in	r24, 0x16	; 22
    13b4:	90 e0       	ldi	r25, 0x00	; 0
    13b6:	02 c0       	rjmp	.+4      	; 0x13bc <DIO_ReadPin+0x36>
    13b8:	95 95       	asr	r25
    13ba:	87 95       	ror	r24
    13bc:	2a 95       	dec	r18
    13be:	e2 f7       	brpl	.-8      	; 0x13b8 <DIO_ReadPin+0x32>
    13c0:	81 70       	andi	r24, 0x01	; 1
    13c2:	08 95       	ret
    13c4:	83 b3       	in	r24, 0x13	; 19
    13c6:	90 e0       	ldi	r25, 0x00	; 0
    13c8:	02 c0       	rjmp	.+4      	; 0x13ce <DIO_ReadPin+0x48>
    13ca:	95 95       	asr	r25
    13cc:	87 95       	ror	r24
    13ce:	2a 95       	dec	r18
    13d0:	e2 f7       	brpl	.-8      	; 0x13ca <DIO_ReadPin+0x44>
    13d2:	81 70       	andi	r24, 0x01	; 1
    13d4:	08 95       	ret
    13d6:	80 b3       	in	r24, 0x10	; 16
    13d8:	90 e0       	ldi	r25, 0x00	; 0
    13da:	02 c0       	rjmp	.+4      	; 0x13e0 <DIO_ReadPin+0x5a>
    13dc:	95 95       	asr	r25
    13de:	87 95       	ror	r24
    13e0:	2a 95       	dec	r18
    13e2:	e2 f7       	brpl	.-8      	; 0x13dc <DIO_ReadPin+0x56>
    13e4:	81 70       	andi	r24, 0x01	; 1
    13e6:	08 95       	ret
    13e8:	80 e0       	ldi	r24, 0x00	; 0
    13ea:	08 95       	ret

000013ec <main>:
    13ec:	0e 94 56 08 	call	0x10ac	; 0x10ac <DIO_Init>
    13f0:	0e 94 33 06 	call	0xc66	; 0xc66 <LCD_Init>
    13f4:	0e 94 e9 07 	call	0xfd2	; 0xfd2 <KEYPAD_Init>
    13f8:	0e 94 e6 02 	call	0x5cc	; 0x5cc <NUMERICAL_CONVERTER_Init>
    13fc:	0e 94 3f 03 	call	0x67e	; 0x67e <NUMERICAL_CONVERTER_Runnable>
    1400:	fd cf       	rjmp	.-6      	; 0x13fc <main+0x10>

00001402 <__divmodsi4>:
    1402:	05 2e       	mov	r0, r21
    1404:	97 fb       	bst	r25, 7
    1406:	1e f4       	brtc	.+6      	; 0x140e <__divmodsi4+0xc>
    1408:	00 94       	com	r0
    140a:	0e 94 18 0a 	call	0x1430	; 0x1430 <__negsi2>
    140e:	57 fd       	sbrc	r21, 7
    1410:	07 d0       	rcall	.+14     	; 0x1420 <__divmodsi4_neg2>
    1412:	0e 94 26 0a 	call	0x144c	; 0x144c <__udivmodsi4>
    1416:	07 fc       	sbrc	r0, 7
    1418:	03 d0       	rcall	.+6      	; 0x1420 <__divmodsi4_neg2>
    141a:	4e f4       	brtc	.+18     	; 0x142e <__divmodsi4_exit>
    141c:	0c 94 18 0a 	jmp	0x1430	; 0x1430 <__negsi2>

00001420 <__divmodsi4_neg2>:
    1420:	50 95       	com	r21
    1422:	40 95       	com	r20
    1424:	30 95       	com	r19
    1426:	21 95       	neg	r18
    1428:	3f 4f       	sbci	r19, 0xFF	; 255
    142a:	4f 4f       	sbci	r20, 0xFF	; 255
    142c:	5f 4f       	sbci	r21, 0xFF	; 255

0000142e <__divmodsi4_exit>:
    142e:	08 95       	ret

00001430 <__negsi2>:
    1430:	90 95       	com	r25
    1432:	80 95       	com	r24
    1434:	70 95       	com	r23
    1436:	61 95       	neg	r22
    1438:	7f 4f       	sbci	r23, 0xFF	; 255
    143a:	8f 4f       	sbci	r24, 0xFF	; 255
    143c:	9f 4f       	sbci	r25, 0xFF	; 255
    143e:	08 95       	ret

00001440 <__tablejump2__>:
    1440:	ee 0f       	add	r30, r30
    1442:	ff 1f       	adc	r31, r31
    1444:	05 90       	lpm	r0, Z+
    1446:	f4 91       	lpm	r31, Z
    1448:	e0 2d       	mov	r30, r0
    144a:	09 94       	ijmp

0000144c <__udivmodsi4>:
    144c:	a1 e2       	ldi	r26, 0x21	; 33
    144e:	1a 2e       	mov	r1, r26
    1450:	aa 1b       	sub	r26, r26
    1452:	bb 1b       	sub	r27, r27
    1454:	fd 01       	movw	r30, r26
    1456:	0d c0       	rjmp	.+26     	; 0x1472 <__udivmodsi4_ep>

00001458 <__udivmodsi4_loop>:
    1458:	aa 1f       	adc	r26, r26
    145a:	bb 1f       	adc	r27, r27
    145c:	ee 1f       	adc	r30, r30
    145e:	ff 1f       	adc	r31, r31
    1460:	a2 17       	cp	r26, r18
    1462:	b3 07       	cpc	r27, r19
    1464:	e4 07       	cpc	r30, r20
    1466:	f5 07       	cpc	r31, r21
    1468:	20 f0       	brcs	.+8      	; 0x1472 <__udivmodsi4_ep>
    146a:	a2 1b       	sub	r26, r18
    146c:	b3 0b       	sbc	r27, r19
    146e:	e4 0b       	sbc	r30, r20
    1470:	f5 0b       	sbc	r31, r21

00001472 <__udivmodsi4_ep>:
    1472:	66 1f       	adc	r22, r22
    1474:	77 1f       	adc	r23, r23
    1476:	88 1f       	adc	r24, r24
    1478:	99 1f       	adc	r25, r25
    147a:	1a 94       	dec	r1
    147c:	69 f7       	brne	.-38     	; 0x1458 <__udivmodsi4_loop>
    147e:	60 95       	com	r22
    1480:	70 95       	com	r23
    1482:	80 95       	com	r24
    1484:	90 95       	com	r25
    1486:	9b 01       	movw	r18, r22
    1488:	ac 01       	movw	r20, r24
    148a:	bd 01       	movw	r22, r26
    148c:	cf 01       	movw	r24, r30
    148e:	08 95       	ret

00001490 <_exit>:
    1490:	f8 94       	cli

00001492 <__stop_program>:
    1492:	ff cf       	rjmp	.-2      	; 0x1492 <__stop_program>
