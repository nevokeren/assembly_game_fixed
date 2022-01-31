IDEAL

MODEL small

STACK 100h

DATASEG

	;colors
		linescolor db 15
		backgroundcolor db 8
		block_color db 6
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
		progress dw 00
		block_y dw 00
		block_x dw, 00
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
		;existence
			block1_e dw 00
			block2_e dw 00
			block3_e dw 00
			block4_e dw 00
			block5_e dw 00
			block6_e dw 00
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
	call randomize
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
first_block:
;check for existence
	cmp [block1_e], 0
	JNE block1_exist

block1_n_exist:
;set len
	call randomize_len
	mov ax, [random_len]
	mov [block1len], ax
;set x, y
	mov [block1_x], 00
	cmp [random], 1
	JNE cmp1
	mov [block1_y], 50
cmp1:
	cmp [random], 2
	JNE cmp2
	mov [block1_y], 100
cmp2:
	mov [block1_y], 150

block1_exist:
	mov bx, 1
	call move_block

ret
ENDP sort


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PROC move_block    ;;;move/jenerate block in chosen course
	cmp bx, 1
	JE move_first_block:

delete:
	push cx
	mov al, [backgroundcolor]
	mov ah, 0ch
	mov bh, 00
start_delete:
	int 10h
	dec cx
	cmp cx, [block_x]
	JNE start_delete
	pop cx
	push cx
	inc dx
	cmp dx, [block_y]
	JNE start_delete
	pop cx
	ret

	
move_first_block:
	cmp [block1_e], 00
	JE not_exist1
	mov cx, [block1_x]
	mov dx, [block1_y]

	push cx
	sub cx, [block1len]
	mov [block_x], cx
	cmp [block_x], 0
	JNL next1
	mov [block_x], 0
next1:
	pop cx

	push dx
	add dx, 30
	mov [block_y], dx
	pop dx
	call delete

not_exist1:
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

	mov bx, 10
	mov ax, dx
	call multiply
	mov [random_len], ax
	ret
ENDP randomize_len

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