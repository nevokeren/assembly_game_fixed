IDEAL

MODEL small

STACK 100h

DATASEG

	;colors
		linescolor db 15
		backgroundcolor db 8
		block_color db 180

		first_block_array db 't',  'n'
	;player data
		player db 1
		player_y dw 110
	;lines
		leftline dw 40
		middleline1 dw 90
		middleline2 dw 140
		bottomline dw 190
	;loop data
		loop_ dw 00
		loop2_ dw 00
		progress dw 00


	;mode
		hard_mode dw 00
	;blocks data
			blocks_highest_x dw 00
		;y's
			max_block dw 00
			block1_y dw 00	
			block2_y dw 00
			block3_y dw 00
			block4_y dw 00
			block5_y dw 00
			block6_y dw 00
		;x's
			block1_x dw 1
			block2_x dw 1
			block3_x dw 1
			block4_x dw 1
			block5_x dw 1
			block6_x dw 1
		;lenses
			block1len dw 00
			block2len dw 00
			block3len dw 00
			block4len dw 00
			block5len dw 00
			block6len dw 00
		;existence
			block1_e dw 00
			block2_e dw 00
			block3_e dw 00
			block4_e dw 00
			block5_e dw 00
			block6_e dw 00
		;general
		block_y dw 00
		block_x dw, 00
		block_len dw 00
		block_end dw 00
		block_lower dw 00
	;randoms
		random dw 00
		random_len dw 00
	;indicators
		indicator dw 00
	


CODESEG

start:
	mov ax, @data
	mov ds, ax

;set grafic mode
	mov ax, 13h
	int 10h

call base_color

JMP WaitForData
PROC base_color
	mov cx, 320
	mov al, [backgroundcolor]
	mov dx, 40
	mov bh, 0h
	mov ah, 0ch
color_background:
	int 10h
	inc dx
	cmp dx, 190
	JNE color_background
	mov dx, 40
	dec cx
	cmp cx, -1
	JNE color_background

;the lines
	mov bh, 0h
	mov al, [linescolor]
	mov ah, 0ch
	JMP draw_upper_line
draw_the_lines:
	int 10h
	dec cx
	cmp cx, -1
	JNE draw_the_lines
	ret

draw_upper_line:
	mov cx, 319
	mov dx, [leftline]
	call draw_the_lines

	mov cx, 319
	mov dx, [middleline1]
	call draw_the_lines

	mov cx, 319
	mov dx, [middleline2]
	call draw_the_lines

	mov cx, 319
	mov dx, [bottomline]
	call draw_the_lines

;create player in the middle
create_the_player:
	mov cx, 300
	mov dx, 110
	mov bh, 00h
	mov al, [player]
	mov ah, 0ch
color_player:
	int 10h
	dec cx
	cmp cx, 295
	JNE color_player
	inc dx
	mov cx, 300
	cmp dx, 120
	JNE color_player
	ret
ENDP base_color
PROC eliminate
	mov cx, [player_y]
	sub cx, 10
	cmp [block1_x], 295
	JNE next_checkout1
	cmp [block1_y], cx
	JNE next_checkout1
	call break
next_checkout1:
	cmp [block2_x], 295
	JNE next_checkout2
	cmp [block2_y], cx
	JNE next_checkout2
	call break
next_checkout2:
	cmp [block3_x], 295
	JNE next_checkout3
	cmp [block3_y], cx
	JNE next_checkout3
	call break
next_checkout3:
	cmp [block4_x], 295
	JNE next_checkout4
	cmp [block4_y], cx
	JNE next_checkout4
	call break
next_checkout4:
	ret
ENDP eliminate
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PROC move_down   ; move down
	mov bh, 00h
	mov cx, 300
	mov ah, 0ch
	mov dx, [player_y]
	add [player_y], 50
	mov [loop_], dx
	add [loop_], 60

color1:
	mov al, [player]
	int 10h
	dec cx
	cmp cx, 295
	JNE color1
	mov cx, 300
	sub dx, 10
	cmp dx, 90
	JE delete_line1
	cmp dx, 140
	JE delete_line1
	mov al, [backgroundcolor]
	JMP delete1

delete_line1:
	mov al, [linescolor]

delete1:
	int 10h
	dec cx
	cmp cx, 295
	JNE delete1

;;;line down
	add dx, 11
	mov cx, 300

;;;delay
	push dx
	push cx
	push [loop_]

	call sort

	pop [loop_]
	pop cx
	pop dx
	cmp dx, [loop_]
	JNE color1
	ret
	
ENDP move_down
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PROC move_up   ; move up
	mov bh, 00h
	mov cx, 300
	mov ah, 0ch
	mov dx, [player_y]
	sub [player_y], 50
	mov [loop_], dx
	sub [loop_], 50

color:
	mov al, [player]
	int 10h
	dec cx
	cmp cx, 295
	JNE color
	mov cx, 300	
	add dx, 10
	cmp dx, 90
	JE delete_line
	cmp dx, 140
	JE delete_line
	mov al, [backgroundcolor]
	JMP delete

delete_line:
	mov al, [linescolor]

delete:
	int 10h
	dec cx
	cmp cx, 295
	JNE delete

;;;line down
	sub dx, 11
	mov cx, 300

;;;delay
	push dx
	push cx
	push [loop_]
	
	call sort

	pop [loop_]
	pop cx
	pop dx

	cmp dx, [loop_]
	JNE color
	ret
ENDP move_up
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PROC WaitForData
	call eliminate
	add [loop2_], 1

wait_:					;wait for data
	mov  ah, 01h
	int  16h
	JZ main
	mov ah, 00h
	int 16h
	
	cmp ah, 48h
	JNE next
	cmp [player_y], 60
	JE main
	call move_up
	JMP main
next:
	cmp ah, 50h
	JNE main
	cmp [player_y], 160
	JE main
	call move_down

main:
	cmp [loop2_], 50
	JNE WaitForData
	mov [loop2_], 00
	call sort
	JMP WaitForData
ENDP WaitForData
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PROC sort
first_block:
	cmp [block1_e], 00
	JNE block1_exist
	call randomize_course
	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 50
	div cx 		;dx contains the remain of the cx devided by bx (from 0 to 2)
	add dx, 1
	cmp dx, 2
	JNE second_block

;set len
	mov [block1_e], 1
	call randomize_len
	mov ax, [random_len]
	mov [block1len], ax

;set y
	cmp [random], 1
	JNE cmp1
	mov [block1_y], 50
	JMP block1_exist
cmp1:
	cmp [random], 2
	JNE cmp2
	mov [block1_y], 100
	JMP block1_exist
cmp2:
	mov [block1_y], 150

block1_exist:
	mov bx, 1
	call move_block
;	ret
mov dx, 10000
call delay

;;;;;;;;;;;;;;;;;;;;;;;;;
second_block:
mov dx, 7500
call delay
call randomize_course

	mov bx, 2
	cmp [block2_e], 00
	JNE block2_exist

	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 150
	div cx 		;dx contains the remain of the cx devided by bx (from 0 to 2)
	add dx, 1
	cmp dx, 2
	JNE third_block

;set len
	mov [block2_e], 1
	call randomize_len
	mov ax, [random_len]
	mov [block2len], ax

;set y
	cmp [random], 1
	JNE cmp3
	mov [block2_y], 100
	JMP block1_exist
cmp3:
	cmp [random], 2
	JNE cmp4
	mov [block2_y], 150
	JMP block2_exist
cmp4:
	mov [block2_y], 50

block2_exist:
	call move_block
;;;;;;;;;;;;;;;;;;;;;;;;;
third_block:
mov dx, 7500
call delay
call randomize_course
	mov bx, 3
	cmp [block3_e], 00
	JNE block3_exist

	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 150
	div cx 		;dx contains the remain of the cx devided by bx (from 0 to 2)
	add dx, 1
	cmp dx, 2
	JE set_len

set_len:
	mov [block3_e], 1
	call randomize_len
	mov ax, [random_len]
	mov [block3len], ax

;set y
	cmp [random], 1
	JNE cmp5
	mov [block3_y], 150
	JMP block3_exist
cmp5:
	cmp [random], 2
	JNE cmp6
	mov [block3_y], 50
	JMP block3_exist
cmp6:
	mov [block3_y], 100

block3_exist:	
	call move_block

;;;;;;;;;;;;;;;;;;;;;;;;;
fourth_block:
mov dx, 7500
call delay
call randomize_course
	mov bx, 4
	cmp [block4_e], 00
	JNE block4_exist

	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 150
	div cx 		;dx contains the remain of the cx devided by bx (from 0 to 2)
	add dx, 1
	cmp dx, 2
	JE set_len

set_len2:
	mov [block4_e], 1
	call randomize_len
	mov ax, [random_len]
	mov [block4len], ax

;set y
	cmp [random], 1
	JNE cmp7
	mov [block4_y], 100
	JMP block4_exist
cmp7:
	cmp [random], 2
	JNE cmp8
	mov [block4_y], 50
	JMP block4_exist
cmp8:
	mov [block4_y], 150

block4_exist:	
	call move_block
ret	
ENDP sort
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PROC draw_block
	mov al, [backgroundcolor]
	mov ah, 0ch
	mov bh, 00
	mov [loop_], 00
;set x,y
draw_in_range:
	mov cx, [block_x]
	mov dx, [block_y]
	add dx, 30
	mov [block_lower], dx
	sub dx, 30

	push cx
	sub cx, [block_len]
	cmp cx, 00
	JL lower_then_0
	mov [block_end], cx
	pop cx
	cmp [block_end], 319
	JNE cnte
	mov bx, 8
	ret
cnte:
	JMP delete_block

lower_then_0:
	mov [block_end], 00
	pop cx

delete_block:
	int 10h
	dec cx
	cmp cx, [block_end]
	JNE delete_block
	mov cx, [block_x]
	inc dx
	cmp dx, [block_lower]
	JNE delete_block
	cmp [loop_], 00
	JE next_range
	mov [loop_], 00
	ret
next_range:
;set x,y,color
	mov al, [block_color]
	mov [loop_], 1
	cmp [block_x], 319
	JNE x
	sub [block_len], 1
	cmp [block_len], 0
	JNE draw_in_range
	mov bx, 8
	ret
x:
	add [block_x], 1
	JMP draw_in_range
ENDP draw_block

PROC move_block    ;;;move/jenerate block in chosen course
	cmp bx, 1
	JE  move_first_block
	cmp bx, 2
	JE move_second_block
	cmp bx, 3
	JE  move_third_block
	JMP move_fourth_block
	ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
move_first_block:
	mov cx, [block1_x]
	mov [block_x], cx

	mov cx, [block1_y]
	mov [block_y], cx

	mov cx, [block1len]
	mov [block_len], cx

	call draw_block

	mov dx, [block_len]
	mov [block1len], dx
	mov cx, [block_x]
	mov [block1_x], cx
	cmp bx, 8
	JNE return1
	mov [block1_e], 00
	mov [block1_x], 01

return1:
	ret
;;;;;;;;;;;;;
move_second_block:
	mov cx, [block2_x]
	mov [block_x], cx

	mov cx, [block2_y]
	mov [block_y], cx

	mov cx, [block2len]
	mov [block_len], cx

	call draw_block

	mov dx, [block_len]
	mov [block2len], dx
	mov cx, [block_x]
	mov [block2_x], cx
	cmp bx, 8
	JNE return2
	mov [block2_e], 00
	mov [block2_x], 01

return2:
	ret
;;;;;;;;;;;;;
move_third_block:
	mov cx, [block3_x]
	mov [block_x], cx

	mov cx, [block3_y]
	mov [block_y], cx

	mov cx, [block3len]
	mov [block_len], cx

	call draw_block

	mov dx, [block_len]
	mov [block3len], dx
	mov cx, [block_x]
	mov [block3_x], cx
	cmp bx, 8
	JNE return3
	mov [block3_e], 00
	mov [block3_x], 01

return3:
	ret
;;;;;;;;;;;;;
move_fourth_block:
	mov cx, [block4_x]
	mov [block_x], cx

	mov cx, [block4_y]
	mov [block_y], cx

	mov cx, [block4len]
	mov [block_len], cx

	call draw_block

	mov dx, [block_len]
	mov [block4len], dx
	mov cx, [block_x]
	mov [block4_x], cx
	cmp bx, 8
	JNE return4
	mov [block4_e], 00
	mov [block4_x], 01

return4:
	ret

ENDP move_block
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PROC randomize_len				;;;randomize number between 1-bx at dx, [random_len]
	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 5
	div cx 		;dx contains the remain of the cx devided by bx (from 0 to 4)
	add dx, 1
	mov [random_len], dx
	ret
ENDP randomize_len

PROC randomize_course
randstart:			;create randoms
	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 3
	div cx 		;dx contains the remain of the cx devided by bx (from 0 to 2)
	add dx, 1
	mov [random], dx
	ret
	ENDP randomize_course
PROC break
	mov ah, 0ch
	mov bl, 00h
	mov al, 0
	mov cx, 0
	mov dx, 0
black:
	int 10h
	inc dx
	cmp dx, 200
	JNE black
	mov dx, 0
	inc cx
	cmp cx, 320
	JNE black
	JMP black
ENDP break

PROC multiply  ;;does ax times bx at ax
 	mov cx, ax
multy:
	add ax, cx
	dec bx
	cmp bx, 1
	JNE multy
	ret
ENDP multiply

PROC delay		;;run until dx
	push bx
	mov bx, 0
d:
	inc bx
	cmp bx, dx
	JNE d
	pop bx
	ret
ENDP delay
exit:
	mov ax, 4c00h
	int 21h

END start