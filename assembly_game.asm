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
	;blocks data
		blocks_highest_x dw 00
		max_block dw 00
		block1_y dw 00	
		block2_y dw 00
		block3_y dw 00
		block4_y dw 00
		block5_y dw 00
		block6_y dw 00
		block1_x dw 00
		block2_x dw 00
		block3_x dw 00
		block4_x dw 00
		block5_x dw 00
		block6_x dw 00

	;randoms
		random dw 00
	


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

PROC move_down
; move down
	mov bh, 00h
	mov cx, 300
	mov ah, 0dh
	mov dx, [player_y]
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

PROC move_up
; move up
	mov cx, 300
	mov dx, [player_y]
	mov bh, 00h
	mov ah, 0ch
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
	mov cx, 300
	push bx
	mov bx, 0
	sub dx, 10
	mov al, [player]
	call delay
	add [player_y], 50
	ret
ENDP move_up

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PROC WaitForData
;create randoms
create_randoms:
randstart:
	mov ah,0h ; interrupts to get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx,2
	div cx ;  dx contains the remain of the division - from 0 to 9
	add dx,1
	mov [random], dx

		
;wait for data
wait_:
	call eliminate
	mov  ah, 01h
    int  16h
	JZ main
	mov ah, 00h
	int 16h
	
	cmp ah, 48h
	JNE next
	call move_up
	call randomize_blocks
next:
	cmp ah, 50h
	JNE main
	call move_down
	call randomize_blocks

main:
	call randomize_blocks
	JMP WaitForData
ENDP WaitForData

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PROC randomize_blocks
	cmp [block1_y], 00
	JNE c_1
	cmp [block2_y], 00
	JNE c2
	cmp [block3_y], 00
	JNE c3
	cmp [block4_y], 00
	JNE c4
	cmp [block5_y], 00
	JNE c5
	cmp [block6_y], 00
	JNE c6
c_1:
	cmp [block1_x], 00
	JNE y1
	call jenerate_block
	y1:
	
c2:
	cmp [block2_x], 00
	JNE y2
	call jenerate_block
	y2:
c3:
	cmp [block3_x], 00
	JNE y3
	call jenerate_block
	y3:
c4:
c5:
c6:
	ret
ENDP randomize_blocks

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PROC higher_block
	inc cx
	mov dx, 50
	mov ah, 0ch
	mov bh, 0h
	mov al, [block_color]
color_block:			;color next block's row
	int 10h
	inc dx
	cmp dx, 80
	JNE color_block
delete_blocks_back:
	sub cx, 60
	cmp cx, 0
	JNL w
	call wait_
w:

	JMP g
call_WaitForData:
	call WaitForData
g:
	mov dx, 50
	mov ah, 0ch
	mov bh, 00h
	mov al, [backgroundcolor]
l:
	int 10h
	inc dx
	cmp dx, 80
	JNE l
	ret
ENDP higher_block

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PROC middle_block
	mov cx, 320

	mov dx, 110
	mov ah, 0dh
	mov bh, 0h
	int 10h
	inc cx
	mov dx, 100
	mov ah, 0ch
	mov bh, 0h
	mov al, [block_color]
color_block1:			;color next block's row
	int 10h
	inc dx
	cmp dx, 130
	JNE color_block1
delete_blocks_back1:
	sub cx, 60
	cmp cx, 0
	JNL not_wait
	call wait_
not_wait:
	JMP s
call_WaitForData1:
	call WaitForData
s:
	mov dx, 100
	mov ah, 0ch
	mov bh, 00h
	mov al, [backgroundcolor]
u:
	int 10h
	inc dx
	cmp dx, 130
	JNE u
	JMP wait_
	ret
ENDP middle_block

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PROC jenerate_block
	mov dx, [random]
	cmp dx, 1
	JNE cmpr2
	mov dx, 50
	mov [max_block], 100
	mov al, [block_color]
	mov ah, 0ch
	mov bh, 00h
	mov cx, 1
jenerate:
	int 10h
	inc dx
	cmp dx, [max_block]
	JNE jenerate
	ret
cmpr2:
	cmp dx, 2
	JNE cmpr3
	mov cx, 1
	mov dx, 120
	mov [max_block], 170
	JMP jenerate
cmpr3:
	mov cx, 1
	mov dx, 190
	mov [max_block], 240
	JMP jenerate
ENDP jenerate_block

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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