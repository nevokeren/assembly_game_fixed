IDEAL

MODEL small

STACK 100h

DATASEG
	;grafics arrays
		player_grafics_upwards  db 't', 't', 't', 't', 't', 't', 't', 't', 24, 24, 24, 't', 'n'
								db 't', 't', 't', 't', 't', 't', 24, 24, 24, 24, 24, 't', 'n' 
								db 't', 't', 't', 't', 't', 't', 24, 24, 24, 24, 't', 't', 'n'
								db 't', 't', 't', 't', 't', 't', 24, 24, 't', 't', 't', 't', 'n'
								db 't', 't', 't', 't', 't', 't', 24, 24, 't', 't', 't', 't','n'  
								db 't', 't', 4, 4, 4, 4, 4, 4, 4, 4, 't', 't', 'n'
								db 't', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 't', 'n'
								db 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 0, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 0, 0, 0, 15, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 15, 15, 15, 15, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 55, 55, 55, 55 ,55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 0, 0, 0, 15, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 15, 15, 15, 15, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 0 ,55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 't', 4, 4, 4, 4, 4, 4,4, 4, 4, 4, 't', 'n'
								db 't', 't', 4, 4, 4, 4, 4, 4, 4, 4, 't', 't', 'n'
								db 't', 't', 't', 't', 't', 't', 24, 24, 't', 't', 't', 't','n' 
								db 't', 't', 't', 't', 't', 't', 24, 24, 't', 't', 't', 't', 'n'
								db 't', 't', 't', 't', 't', 't', 24, 24, 24, 24, 't', 't', 'n'
								db 't', 't', 't', 't', 't', 't', 24, 24, 24, 24, 24, 't', 'n' 
								db 't', 't', 't', 't', 't', 't', 't', 't', 24, 24, 24, 't', 's'

		player_grafics_downward db 't', 't', 't', 't', 't', 't', 't', 't', 24, 24, 24, 't', 'n'
								db 't', 't', 't', 't', 't', 't', 24, 24, 24, 24, 24, 't', 'n' 
								db 't', 't', 't', 't', 't', 't', 24, 24, 24, 24, 't', 't', 'n'
								db 't', 't', 't', 't', 't', 't', 24, 24, 't', 't', 't', 't', 'n'
								db 't', 't', 't', 't', 't', 't', 24, 24, 't', 't', 't', 't','n'  
								db 't', 't', 4, 4, 4, 4, 4, 4, 4, 4, 't', 't', 'n'
								db 't', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 't', 'n'
								db 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 0, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 15, 15, 15, 15, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 0, 0, 0, 15, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 55, 55, 55, 55 ,55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 15, 15, 15, 15, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 0, 0, 0, 15, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 0, 0 ,55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 4, 4, 'n'
								db 't', 4, 4, 4, 4, 4, 4,4, 4, 4, 4, 't', 'n'
								db 't', 't', 4, 4, 4, 4, 4, 4, 4, 4, 't', 't', 'n'
								db 't', 't', 't', 't', 't', 't', 24, 24, 't', 't', 't', 't','n' 
								db 't', 't', 't', 't', 't', 't', 24, 24, 't', 't', 't', 't', 'n'
								db 't', 't', 't', 't', 't', 't', 24, 24, 24, 24, 't', 't', 'n'
								db 't', 't', 't', 't', 't', 't', 24, 24, 24, 24, 24, 't', 'n' 
								db 't', 't', 't', 't', 't', 't', 't', 't', 24, 24, 24, 't', 's'

						
	;colors
		linescolor db 15
		backgroundcolor db 0
		block_color db 15
		
	;player data
		player db 1
		player_y dw 101
	;lines
		upperline dw 40
		middleline1 dw 90
		middleline2 dw 140
		bottomline dw 190
	;loop data
		loop_ dw 00
		loop2_ dw 00
		progress dw 0
		speed dw 50000
	;print data
		units db 00
		dozens db 00
		hundbreds db 00
	;mode
		hard_mode dw 0
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

JMP main
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
	mov dx, [upperline]
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
	mov cx, 295
	mov dx, 101
	mov bh, 00h
	mov bx, offset player_grafics_upwards
;	mov al, [player]
	mov ah, 0ch
color_player:
	mov al, [bx]
	cmp al, 's'
	JNE continue_check
	ret
continue_check:
	cmp al, 't'
	JNE draw_player
	inc cx
	add bx, 1
	JMP color_player
draw_player:
	cmp al, 'n'
	JNE not_color
	mov cx, 295
	inc dx
	add bx, 1
	JMP color_player
not_color:
	int 10h
	inc cx
	add bx, 1
	JMP color_player

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
	mov cx, 295
	mov ah, 0ch
	mov dx, [player_y]
	mov [loop_], dx
	add [loop_], 78
mov_down:
mov dx, [player_y]
mov cx, 295
	mov [loop2_], dx
	add [loop2_], 29

delete_player1:
	mov al, [linescolor]
	cmp dx, [middleline2]
	JE normal_delete
	cmp dx, [middleline1]
	JE normal_delete
	mov al, [backgroundcolor]
normal_delete:
	
	int 10h
	inc cx
	cmp cx, 307
	JNE delete_player1
continue_deleting1:
	mov cx, 295
	inc dx
	cmp dx, [loop2_]
	JNE delete_player1

create_the_player2:
	mov cx, 295
	inc [player_y]
	mov dx, [player_y]

	mov bh, 00h
	mov bx, offset player_grafics_downward
	mov ah, 0ch
color_player2:
	mov al, [bx]
	cmp al, 's'
	JNE continue_check2
	push [loop_]
	push dx
	push cx
	push ax
	push bx

	call sort

	 pop bx
	 pop ax
	 pop cx
	 pop dx
	 pop [loop_]
	cmp [loop_], dx
	JNE mov_down
	ret
continue_check2:
	cmp al, 't'
	JNE draw_player2
	inc cx
	add bx, 1
	JMP color_player2
draw_player2:
	cmp al, 'n'
	JNE not_color2
	mov cx, 295
	inc dx
	add bx, 1
	JMP color_player2
not_color2:
	int 10h
	inc cx
	add bx, 1
	JMP color_player2


	
ENDP move_down
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PROC move_up   ; move up
	mov bh, 00h
	mov cx, 295
	mov ah, 0ch
	mov dx, [player_y]
	mov [loop_], dx
	sub [loop_], 22
mov_up:
	mov dx, [player_y]
	mov cx, 295
	mov [loop2_], dx
	add [loop2_], 29

delete_player:
	mov al, [linescolor]
	cmp dx, [middleline2]
	JE normal_delete1
	cmp dx, [middleline1]
	JE normal_delete1
	mov al, [backgroundcolor]
normal_delete1:
	int 10h
	inc cx
	cmp cx, 307
	JNE delete_player
continue_deleting:
	mov cx, 295
	inc dx
	cmp dx, [loop2_]
	JNE delete_player

create_the_player1:
	mov cx, 295
	dec [player_y]
	mov dx, [player_y]

	mov bh, 00h
	mov bx, offset player_grafics_upwards
	mov ah, 0ch
color_player1:
	mov al, [bx]
	cmp al, 's'
	JNE continue_check1
	push [loop_]
	push dx
	push cx
	push ax
	push bx

	call sort

	 pop bx
	 pop ax
	 pop cx
	 pop dx
	 pop [loop_]
	cmp [loop_], dx
	JNE mov_up
	ret
continue_check1:
	cmp al, 't'
	JNE draw_player1
	inc cx
	add bx, 1
	JMP color_player1
draw_player1:
	cmp al, 'n'
	JNE not_color1
	mov cx, 295
	inc dx
	add bx, 1
	JMP color_player1
not_color1:
	int 10h
	inc cx
	add bx, 1
	JMP color_player1

; 	mov bh, 00h
; 	mov cx, 295
; 	mov ah, 0ch
; 	mov dx, [player_y]
	
; 	mov [loop_], dx
; 	add [loop_], 29

; delete_player:
; 	mov al, [backgroundcolor]
; 	int 10h
; 	inc cx
; 	cmp cx, 307
; 	JNE delete_player
; continue_deleting:
; 	mov cx, 295
; 	inc dx
; 	cmp dx, [loop_]
; 	JNE delete_player

; create_the_player1:
; 	mov cx, 295
; 	dec [player_y]
; 	mov dx, [player_y]
; 	mov [loop_], dx
; 	sub [loop_], 50
; 	mov bh, 00h
; 	mov bx, offset player_grafics_upwards
; 	mov ah, 0ch
; color_player1:
; 	mov al, [bx]
; 	cmp al, 's'
; 	JNE continue_check1
; 	push [loop_]
; 	push dx
; 	push cx
; 	push ax
; 	push bx

; 	call sort

; 	 pop bx
; 	 pop ax
; 	 pop cx
; 	 pop dx
; 	 pop [loop_]

; 	cmp [loop_], 0
; 	JNE move_up
; 	ret
; continue_check1:
; 	cmp al, 't'
; 	JNE draw_player1
; 	inc cx
; 	add bx, 1
; 	JMP color_player1
; draw_player1:
; 	cmp al, 'n'
; 	JNE not_color1
; 	mov cx, 295
; 	inc dx
; 	add bx, 1
; 	JMP color_player1
; not_color1:
; 	int 10h
; 	inc cx
; 	add bx, 1
; 	JMP color_player1
ENDP move_up
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PROC main
	call eliminate
	add [loop2_], 1

wait_:					;wait for data
	mov  ah, 01h
	int  16h
	JZ sort_the_game
	mov ah, 00h
	int 16h
	
	cmp ah, 48h
	JNE next
	cmp [player_y], 51
	JE sort_the_game
	call move_up
	JMP sort_the_game
next:
	cmp ah, 50h
	JNE sort_the_game
	cmp [player_y], 151
	JE sort_the_game
	call move_down

sort_the_game:
;mov ax, [speed]
	cmp [loop2_], 10000
	JNE main
	mov [loop2_], 00
	call sort
	;call print_score
	JMP main
ENDP main
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
	div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 2)
	add dx, 1
	cmp dx, 2
	JNE second_block

;set len
	mov [block1_e], 1
	call randomize_len
;	mov ax, [random_len]
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
mov dx, [speed]
call delay

;;;;;;;;;;;;;;;;;;;;;;;;;
second_block:
mov dx, [speed]
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
	div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 2)
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
	mov [block2_y], 50
	JMP block1_exist
cmp3:
	cmp [random], 2
	JNE cmp4
	mov [block2_y], 100
	JMP block2_exist
cmp4:
	mov [block2_y], 150

block2_exist:
	call move_block
;;;;;;;;;;;;;;;;;;;;;;;;;
third_block:
mov dx, [speed]
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
	div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 2)
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
	mov [block3_y], 50
	JMP block3_exist
cmp5:
	cmp [random], 2
	JNE cmp6
	mov [block3_y], 100
	JMP block3_exist
cmp6:
	mov [block3_y], 150

block3_exist:	
	call move_block

;;;;;;;;;;;;;;;;;;;;;;;;;
fourth_block:
mov dx, [speed]
call delay
call randomize_course
	mov bx, 4
	cmp [block4_e], 00
	JNE block4_exist

	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 450
	div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 2)
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
	mov [block4_y], 50
	JMP block4_exist
cmp7:
	cmp [random], 2
	JNE cmp8
	mov [block4_y], 100
	JMP block4_exist
cmp8:
	mov [block4_y], 150

block4_exist:	
	call move_block
ret	
ENDP sort
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PROC print_score
	mov ax, [progress]

	mov bl, 100
	div bl
	mov [hundbreds], al
	xor al, al
	mov bl, 10
	div bl
	mov [dozens], al
	mov [units], ah

	mov [units], 0

	add [units], 48
	add [dozens], 48
	add [hundbreds], 48

	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 2h ; row
	mov dl, 2h ; column
	int 10h

	mov ah, 02h ; write string to standart output
	lea dx, [units]
	int 21h
ENDP print_score

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
;	mov [speed], 50
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
	inc [progress]
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
;	mov ax, [speed]
;	mov ax, 500
;	mov [speed], ax
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
	cmp [hard_mode], 1
	JE hard_mode_len
	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 5
	div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 4)
	add dx, 2
	mov [random_len], dx
	ret
hard_mode_len:
	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 60
	div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 4)
	add dx, 200
	mov [random_len], dx
	ret
ENDP randomize_len

PROC randomize_course
randstart:			;create randoms
	cmp [random], 1
	JNE check_next_course
	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 2
	div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 2)
	add dx, 2
	mov [random], dx
	ret
check_next_course:
	cmp [random], 2
	JNE random_is_3
	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 2
	div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 2)
;	add dx, 2
	cmp dx, 0
	JNE random_is_2
	inc dx
	mov [random], dx
	ret
random_is_2:
	add dx, 2
	mov [random], dx
	ret
random_is_3:
	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 2
	div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 2)
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