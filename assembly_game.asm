IDEAL

MODEL small

STACK 100h

DATASEG

	;colors
		linescolor db 15
		backgroundcolor db 8
		block_color db 6
	;player data
		player db 10
		player_y dw 110
	;lines
		leftline dw 40
		middleline1 dw 90
		middleline2 dw 140
		bottomline dw 190
	;loop data
		loop_ dw 00
		progress dw 00
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
		block1_x dw 00
		block2_x dw 00
		block3_x dw 00
		block4_x dw 00
		block5_x dw 00
		block6_x dw 00
	;lenses
		block1len dw 00
		block2len dw 00
		block3len dw 00
		block4len dw 00
		block5len dw 00
		block6len dw 00
	;randoms
		random dw 00
		random_len dw 00
	


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

;the upper line
	mov cx, 320
draw_upper_line:
	mov bh, 0h
	mov dx, [leftline]
	mov al, [linescolor]
	mov ah, 0ch
	int 10h
	dec cx
	cmp cx, -1
	JNE draw_upper_line

;the 1 middle line
	mov cx, 320
draw_middle_line1:
	mov bh, 0h
	mov dx, [middleline1]
	mov al, [linescolor]
	mov ah, 0ch
	int 10h
	dec cx
	cmp cx, -1
	JNE draw_middle_line1

;the 2 middle line
	mov cx, 320
draw_middle_line2:
	mov bh, 0h
	mov dx, [middleline2]
	mov al, [linescolor]
	mov ah, 0ch
	int 10h
	dec cx
	cmp cx, -1
	JNE draw_middle_line2

;the bottom line
	mov cx, 320
draw_bottom_line:
	mov bh, 0h
	mov dx, [bottomline]
	mov al, [linescolor]
	mov ah, 0ch
	int 10h
	dec cx
	cmp cx, -1
	JNE draw_bottom_line

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
	cmp [block1_x] , 295
	JE t
	cmp [block2_x], 295
	JE t
	cmp [block3_x], 295 
	JE t
	cmp [block4_x], 295
	JE t
	cmp [block5_x], 295
	JE t
	cmp [block6_x], 295
	JE t
	ret
t:
	mov dx, [player_y]
	cmp [block1_y], dx
	JNE r
	call break
	cmp [block2_y], dx
	JNE r
	call break
	cmp [block3_y], dx
	JNE r
	call break
	cmp [block4_y], dx
	JNE r
	call break
	cmp [block5_y], dx
	JNE r
	call break
	cmp [block6_y], dx
	JNE r
	call break
r:
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
	mov dx, 7500
	call delay
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
	mov dx, 7500
	sub dx, 10
	call delay
	pop dx

	cmp dx, [loop_]
	JNE color
	ret
ENDP move_up

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PROC WaitForData
randstart:			;create randoms
	mov bx, 3
	call randommize
	mov ax, [random_len]
	mov [random], ax

wait_:					;wait for data
	call eliminate
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
	call sort
	JMP WaitForData
ENDP WaitForData

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PROC sort
t1:
		mov bx, 1

		cmp [block1_x], 00
		JNE t2
		cmp [random], 1
		JNE cmpr1
		mov [block1_y], 50
	cmpr1:
		cmp [random], 2
		JNE cmpr2
		mov [block1_y], 100
	cmpr2:
		cmp [random], 3
		JNE t2
		mov [block1_y], 150
		mov bx, 5
		call randommize
		mov ax, [random]
		mov bx, 11
		call multiply
		mov [block1len], ax
;;;;;;;;;;;;;;;;;;;;;;;;;;;
t2:
		call move_block
		mov bx,2

		cmp [block2_x], 00
		JNE t3
		cmp [block2_y], 50
		JNE cmp3
		call move_block
	cmp3:
		cmp [block2_y], 100
		JNE cmp4
		call move_block
	cmp4:
		cmp [block2_y], 150
		JNE t3
		call move_block
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
t3:
		call move_block
		mov bx,3

		cmp [block3_x], 00
		JNE t4
		cmp [block3_y], 50
		JNE cmp5
		call move_block
	cmp5:
		cmp [block3_y], 100
		JNE cmp6
		call move_block
	cmp6:
		cmp [block3_y], 150
		JNE t4
		call move_block
;;;;;;;;;;;;;;;;;;;;;;;;;;;
t4:
		call move_block
		mov bx,4

		cmp [block4_x], 00
		JNE t5
		cmp [block4_y], 50
		JNE cmp7
		call move_block
	cmp7:
		cmp [block4_y], 100
		JNE cmp8
		call move_block
	cmp8:
		cmp [block4_y], 150
		JNE t5
		call move_block
;;;;;;;;;;;;;;;;;;;;;;;;;;
t5:
		call move_block
		mov bx,5

		cmp [hard_mode], 1
		JE n
		ret
	n:
		cmp [block5_x], 00
		JNE t7
		cmp [block5_y], 50
		JNE cmp9
		call move_block
	cmp9:
		cmp [block5_y], 100
		JNE cmp10
		call move_block
	cmp10:
		cmp [block5_y], 150
		JNE t6
		call move_block
;;;;;;;;;;;;;;;;;;;;;;;;;
t6:
		call move_block
		mov bx,6

		cmp [hard_mode], 1
		JE z
		ret
	z:

		cmp [block6_x], 00
		JNE t7
		cmp [block6_y], 50
		JNE cmp11
		call move_block
	cmp11:
		cmp [block6_y], 100
		JNE cmp12
		call move_block
	cmp12:
		cmp [block6_y], 150
		JNE t7
		call move_block

t7:
	ret
ENDP sort

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PROC move_block    ;;;move/jenerate block in chosen course
	mov ah, 0ch
	mov bh, 00h
	mov al, [block_color]
	JMP start_draw_block

delete_back:
	mov al, [backgroundcolor]
	int 10h
	inc dx
	cmp dx, [block1_y]
	JNE delete_back
	sub [block1_y], 30
	ret

start_draw_block:

	cmp bx, 1
	JNE _2
	mov dx, [block1_y]
	add [block1_y], 30
	mov cx, [block1_x]
_1:
	int 10h
	inc dx
	cmp dx, [block1_y]
	JNE _1
	sub dx, 30
	sub cx, [block1len]
	cmp cx, 0
	JE l1
	call delete_back
l1:
	ret
	cmp bx,2
	JNE _3
	mov dx, [block2_y]
	add [block2_y], 30
	mov cx, [block2_x]
_2:
	int 10h
	inc dx
	cmp dx, [block2_y]
	JNE _2
	sub dx, 30
	sub cx, [block2len]
	cmp cx, 0
	JE l2
	call delete_back
l2:
	ret
	cmp bx,3
	JNE _4
	mov dx, [block3_y]
	add [block3_y], 30
	mov cx, [block3_x]
_3:
	int 10h
	inc dx
	cmp dx, [block3_y]
	JNE _4
	sub dx, 30
	sub cx, [block3len]
	cmp cx, 0
	JE l3
	call delete_back
l3:
	ret

	cmp bx,4
	JNE _5
	mov dx, [block4_y]
	add [block4_y], 30
	mov cx, [block4_x]
_4:
	int 10h
	inc dx
	cmp dx, [block4_y]
	JNE _5
	sub dx, 30
	sub cx, [block4len]
	cmp cx, 0
	JE l4
	call delete_back
l4:
	ret

	cmp bx,5
	JNE _6
	mov dx, [block5_y]
	add [block5_y], 30
	mov cx, [block5_x]
_5:
	int 10h
	inc dx
	cmp dx, [block5_y]
	JNE _6
	sub dx, 30
	sub cx, [block5len]
	cmp cx, 0
	JE l5
	call delete_back
l5:
	ret
	cmp bx,6
	mov dx, [block6_y]
	add [block6_y], 30
	mov cx, [block6_x]
_6:
	int 10h
	inc dx
	cmp dx, [block6_y]
	JNE _6
	sub dx, 30
	sub cx, [block6len]
	cmp cx, 0
	JE l6
	call delete_back
l6:
	ret

ENDP move_block

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PROC randommize				;;;randomize number between 1-bx
	mov ah,0h ;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, bx
	div cx ;  dx contains the remain of the cx devided by bx (from 0 to bx)
	add dx,1
	mov [random_len], dx
	ret
ENDP randommize

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

PROC multiply  ;;does ax times bx
 	mov cx, ax
multy:
	add ax, cx
	dec bx
	cmp bx, 0
	JNE multy
	ret
ENDP multiply

PROC delay
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