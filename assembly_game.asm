IDEAL

MODEL small

STACK 10h

DATASEG
	;grafics arrays
		blocks_array db 3, 2, 1, 3, 1, 2, 1, 2, 1, 3, 2, 1, 2, 1, 3, 1, 3, 2, 1, 2, 1, 2, 1, 3, 2
					db , 3, 2, 3, 1, 2, 3, 1, 2, 1, 2, 3, 2, 3, 2, 3, 1, 2, 3, 1, 2, 1, 2, 1, 2, 1
					db, 1, 2, 3, 1, 2, 3, 1, 3, 2, 3, 1, 3, 1, 2, 3, 2, 1, 2, 3, 2, 1, 2, 3, 1, 2
					db 3, 1, 2, 3, 2, 1, 2, 3, 1, 3, 2, 3, 2, 3, 1, 2, 1, 3, 1, 2, 1, 3, 1, 3, 2, 1
					db, 1, 2, 1, 3, 1, 2, 1, 2, 1, 3, 2, 3, 1, 2, 1, 2, 1, 3, 2, 1, 3, 2, 1, 3, 2, 1
					db, 2, 1, 2, 1, 2, 3, 1, 3, 1, 3, 2, 3, 2, 1, 3, 2, 1, 3, 1, 3, 2, 3, 1, 3, 1, 3
					db, 1, 3, 2, 1, 2, 3, 2, 1, 2, 1, 2, 1, 3, 1, 2, 1, 3, 2, 3, 1, 3, 2, 3, 2, 3, 1
					db, 2, 1, 3, 2, 1, 2, 3, 1, 3, 1, 3, 1, 2, 3, 1, 3, 2, 1, 3, 1, 3, 1, 2, 1, 3, 2
					db, 3, 2, 1, 3, 2, 3, 2, 1, 3, 2, 1, 2, 3, 1, 2, 1, 3, 1, 2, 3, 2, 1, 3, 2, 3, 2
					db, 3, 1, 2, 3, 2, 1, 2, 3, 2, 1, 2, 1, 3, 1, 2, 3, 1, 3, 1, 3, 1, 3, 2, 3, 2, 1
					db, 3, 2, 1, 2, 1, 3, 2, 3, 1, 3, 1, 2, 3, 2, 1, 3, 2, 1, 3, 1, 3, 2, 3, 1, 3, 2
					db, 2, 3, 1, 2, 3, 1, 3, 2, 3, 2, 1, 2, 3, 2, 1, 3, 1, 2, 1, 2, 3, 2, 1, 3, 2, 3
					db, 3, 1, 3, 2, 1, 3, 2, 1, 2, 1, 2, 1, 3, 2, 3, 2, 1, 2, 1, 3, 1, 3, 2, 1, 3, 1
					db, 1, 3, 2, 3, 1, 3, 2, 1, 2, 3, 1, 3, 1, 3, 2, 1, 2, 1, 3, 2, 1, 2, 3, 1, 3, 1
					db, 1, 3, 2, 3, 2, 1, 3, 2, 1, 3, 2, 1, 2, 3, 1, 2, 1, 3, 2, 3, 1, 2, 3, 2, 3, 2
					db, 3, 2, 1, 2, 3, 2, 3, 1, 2, 1, 2, 1, 2, 3, 1, 2, 1, 3, 1, 2, 3, 2, 3, 1, 2, 3
					db, 2, 1, 3, 2, 1, 2, 1, 3, 2, 1, 2, 3, 2, 3, 2, 3, 2, 1, 2, 3, 1, 3, 1, 2, 3, 1
					db, 1, 2, 3, 2, 3, 2, 1, 2, 1, 2, 3, 1, 2, 1, 3, 1, 2, 1, 3, 1, 2, 1, 3, 2, 1, 2
					db, 3, 2, 1, 2, 3, 2, 1, 3, 2, 1, 2, 3, 1, 2, 1, 2, 1, 3, 2, 1, 2, 3, 2, 3, 1, 3
					db, 3, 2, 1, 2, 3, 1, 2, 3, 2, 1, 3, 2, 1, 2, 3, 2, 1, 3, 1, 2, 3, 1

		mario_jumping db 15h, 15h, 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 15h, 15h, 15h, 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 15h, 15h, 15h, 't', 't' ,'t', 't', 28h, 28h, 28h, 28h, 28h, 't', 't', 't', 't', 't', 'n'
						db 28h, 28h, 28h, 28h, 28h, 28h, 28h, 28h, 28h, 28h, 28h, 28h, 28h, 't', 't', 't', 't', 'n'
						db 't', 28h, 28h, 't', 't', 't', 40h, 40h, 12h, 12h, 12h, 12h, 't', 't', 't', 't', 't', 'n'
						db 't', 28h, 40h, 40h, 40h, 40h, 0, 40h, 40h, 12h, 40h, 40h, 12h, 't', 't', 't', 't', 'n'
						db 't', 28h, 40h, 40h, 40h, 0, 40h, 40h, 40h, 12h, 40h, 40h, 12h, 't', 't', 't', 't', 'n'
						db 't', 40h, 40h, 40h, 40h, 0, 40h, 40h, 12h, 12h, 40h, 40h, 12h, 't', 't', 't', 't', 'n'
						db 't', 't', 0, 0, 0, 0, 0, 40h, 40h, 40h, 40h, 12h, 12h, 12h, 't', 't', 't', 'n'
						db 't', 't', 28h, 40h, 40h, 40h, 40h, 40h, 40h, 40h, 40h, 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 28h, 28h, 37h, 28h, 28h, 37h, 37h, 28h, 28h, 28h, 28h, 28h, 't', 't', 'n'
						db 't', 't', 't', 't', 28h, 37h, 28h, 37h, 37h, 37h, 28h, 28h, 28h, 28h, 28h, 15h, 15h, 'n'
						db 't', 't', 't', 't', 28h, 2ch, 37h, 37h, 2ch, 37h, 28h, 28h, 't', 't', 15h, 15h, 15h, 'n'
						db 't', 't', 't', 't', 't', 2ch, 37h, 37h, 2ch, 37h, 28h, 28h, 't', 't', 't', 15h, 15h, 'n'
						db 't', 't', 12h, 't', 't', 37h, 37h, 37h, 37h, 37h, 37h, 37h, 't', 't', 't', 't', 't', 'n'
						db 't', 't', 12h, 12h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 't', 't', 't', 't', 'n'
						db 't', 't', 12h, 12h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 12h, 't', 't', 'n'
						db 't', 't', 12h, 12h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 12h, 12h, 12h, 't', 'n'
						db 't', 't', 12h, 12h, 37h, 37h, 37h, 37h, 't', 't', 't', 37h, 37h, 37h, 12h, 12h, 12h, 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 37h, 37h, 37h, 12h, 12h, 12h, 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 12h, 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 's'

		mario_walking  db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't','t', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't' ,'t', 't', 28h, 28h, 28h, 28h, 28h, 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 28h, 28h, 28h, 28h, 28h, 28h, 28h, 28h, 28h, 28h, 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 40h, 40h, 12h, 12h, 12h, 12h, 't', 't', 't', 't', 't', 'n'
						db 't', 't', 40h, 40h, 40h, 40h, 0, 40h, 40h, 12h, 40h, 40h, 12h, 't', 't', 't', 't', 'n'
						db 't', 't', 40h, 40h, 40h, 0, 40h, 40h, 40h, 12h, 40h, 40h, 12h, 't', 't', 't', 't', 'n'
						db 't', 40h, 40h, 40h, 40h, 0, 40h, 40h, 12h, 12h, 40h, 40h, 12h, 't', 't', 't', 't', 'n'
						db 't', 't', 0, 0, 0, 0, 0, 40h, 40h, 40h, 40h, 12h, 12h, 12h, 't', 't', 't', 'n'
						db 't', 't', 't', 40h, 40h, 40h, 40h, 40h, 40h, 40h, 40h, 't', 't', 't', 't', 't', 't', 'n'
						db 15h, 15h, 't', 't', 't', 't', 28h, 28h, 37h, 37h, 28h, 28h, 28h, 28h, 28h, 't', 't', 'n'
						db 15h, 15h, 15h, 28h, 28h, 28h, 28h, 37h, 37h, 37h, 28h, 28h, 28h, 28h, 28h, 15h, 15h, 'n'
						db 15h, 15h, 28h, 28h, 28h, 37h, 37h, 37h, 2ch, 37h, 28h, 28h, 't', 't', 15h, 15h, 15h, 'n'
						db 't', 't', 't', 't', 't', 37h, 37h, 37h, 2ch, 37h, 28h, 28h, 't', 't', 't', 15h, 15h, 'n'
						db 't', 't', 12h, 't', 't', 37h, 37h, 37h, 37h, 37h, 37h, 37h, 't', 't', 't', 't', 't', 'n'
						db 't', 't', 12h, 12h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 't', 't', 't', 't', 'n'
						db 't', 't', 12h, 12h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 't', 't', 't', 'n'
						db 't', 't', 12h, 12h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 't', 't', 'n'
						db 't', 't', 12h, 12h, 37h, 37h, 37h, 37h, 't', 't', 't', 37h, 37h, 12h, 12h, 12h, 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 12h, 12h, 12h, 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't',12h, 12h, 12h, 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 's'


		mario_sliding   db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 't', 't' ,'t', 't', 28h, 28h, 28h, 28h, 28h, 't', 't', 't', 't', 't', 'n'
						db 't', 't', 't', 28h, 28h, 28h, 28h, 28h, 28h, 28h, 28h, 28h, 28h, 't', 't', 't', 't', 'n'
						db 't', 't', 40h, 40h, 40h, 40h, 0, 40h, 40h, 12h, 40h, 40h, 12h, 't', 't', 't', 't', 'n'
						db 't', 't', 40h, 40h, 40h, 40h, 40h, 40h, 40h, 12h, 40h, 40h, 12h, 't', 't', 't', 't', 'n'
						db 't', 't', 40h, 40h, 40h, 0, 40h, 40h, 12h, 12h, 40h, 12h, 12h, 12h, 't', 't', 't', 'n'
						db 't', 't', 't', 0, 0, 0, 0, 40h, 40h, 40h, 40h, 't', 't', 't', 't', 't', 't', 'n'
						db 15h, 15h, 15h, 28h, 28h, 28h, 37h, 37h, 28h, 28h, 28h, 28h, 28h, 15h, 15h, 'n'
						db 't', 't', 't', 't', 't', 37h, 37h, 37h, 2ch, 37h, 28h, 28h, 't', 't', 't','t', 't', 'n'
						db 't', 't', 12h, 't', 't', 37h, 37h, 37h, 37h, 37h, 37h, 37h, 't', 't', 't', 't', 't', 'n'
						db 't', 't', 12h, 12h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 't', 't', 't', 't', 'n'
						db 't', 't', 12h, 12h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 37h, 't', 't', 't', 'n'
						db 't', 't', 12h, 12h, 37h, 37h, 37h, 37h, 't', 't', 't', 37h, 37h, 12h, 12h, 12h, 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 12h, 12h, 12h, 't', 'n'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't',12h, 12h, 12h, 't', 't', 's'
						db 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 's'

		
		
		

	;far jumps
		address dw 00
		blocks_array_address dw offset blocks_array
	;colors
		linescolor db 15
		middle_lines_color db 0
		backgroundcolor db 11h
		block_color db 15
		normal_block_color db 15
		slide_block_color db 20h
		slide_block_frame db 36h
		normal_block_frame db 0
		jmp_block_frame db 4
		jmp_block_color db  6
		
	;player data
		player_y dw 101
		upwards dw 0
	;lines
		upperline dw 40
		middleline1 dw 90
		middleline2 dw 140
		bottomline dw 190
	;loop data
		loop_ dw 00
		loop2_ dw 00
	;progress
		progress dw 0
		best dw 0
		speed dw 10500
	;print data
		units db '0', '$'
		dozens db '0', '$'
		hundbreds db '0', '$'

		best_dozens db '0', '$'
		best_hundbreds db '0', '$'
		best_units db '0', '$'
	;mode
		hard_mode dw 00
	;blocks data
		blocks_highest_x dw 00
		blocks dw 00
		blocks_on_screen dw 00
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
			block_x dw 00
			block_len dw 00
			block_end dw 00
			block_lower dw 00
	;randoms
		random db 00
		random_len dw 00
		start_random dw 00	
	;indicators
		indicator1 dw 00
		indicator2 dw, 00
		indicator3 dw 00
		indicator4 dw 00
		len dw 00
		pressed db 0
		pressed1 db 0
		time_for_speciel db 0
	;strings
	rules db 'Rules:', '$'
	how_to_move_up db '-press UP to move up', '$'
	how_to_move_down db '-press DOWN to move down', '$'
	how_to_eliminate db '-if you touch the blocks of any color',  '$'
	die db 'you will die','$'
	how_to_jump db '-if you see a blue block ahead', '$'
	jump db 'press LEFT to jump over it', '$'
	what_to_slide db '-if you see a red block ahead','$'
	slide db 'press RIGHT to crouch under it'
	normal_hard db '-if you want to play normal mode ', '$'
	press_1 db 'press 1', '$'
	hard db '-if you want to play hard mode','$'
	press_2 db 'press 2', '$'
	your_best db 'Your best:', '$'
	good_job db 'GOOD JOB!!!', '$'
	
CODESEG

start:
	mov ax, @data
	mov ds, ax

;set grafic mode
	mov ax, 13h
	int 10h

	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 20
	div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 2)
	add dx, 1
	add [blocks_array_address], dx
	; mov [start_random], dx

	call opening_screen
	call break
start_the_game:
	mov ah, 09h
    mov cx, 1400h
    mov al, 20h
    mov bl, 0
    int 10h
call base_color

JMP main
PROC opening_screen
black:
	mov ah, 09h
    mov cx, 1400h
    mov al, 20h
    mov bl, 0
    int 10h

	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 05h ; row
	mov dl, 03h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [rules]
	int 21h
;;;;;;;;;;;;;;;;;;;;;;;
	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 07h ; row
	mov dl, 05h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [how_to_move_up]
	int 21h
;;;;;;;;;;;;;;;;;;;;;;;
	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 09h ; row
	mov dl, 05h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [how_to_move_down]
	int 21h
;;;;;;;;;;;;;;;;;;;;;;;
	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 0bh ; row
	mov dl, 05h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [how_to_eliminate]
	int 21h
;;;;;;;;;;;;;;;;;;;;;;;
	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 0dh ; row
	mov dl, 07h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [die]
	int 21h
;;;;;;;;;;;;;;;;;;;;;;;
	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 0fh ; row
	mov dl, 05h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [how_to_jump]
	int 21h
;;;;;;;;;;;;;;;;;;;;;;;
	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 011h ; row
	mov dl, 07h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [jump]
	int 21h

	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 013h ; row
	mov dl, 05h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [what_to_slide]
	int 21h

		mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 015h ; row
	mov dl, 05h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [slide]
	int 21h
;;;;;;;;;;;;;;;;;;;;;;;
	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 017h ; row
	mov dl, 5h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [normal_hard]
	int 21h
;;;;;;;;;;;;;;
	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 019h ; row
	mov dl, 05h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [press_1]
	int 21h
call break
ENDP opening_screen

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

	; mov cx, 319
	; mov dx, [middleline1]
	; call draw_the_lines

	; mov cx, 319
	; mov dx, [middleline2]
	; call draw_the_lines

	mov cx, 319
	mov dx, [bottomline]
	call draw_the_lines
	mov [upwards], 1
	call create_the_player

ENDP base_color

PROC create_the_player
delete_the_player:
	mov dx, [player_y]
	mov cx, 295
	mov al, [backgroundcolor]
	mov ah, 0ch
	mov bh,00h
xxx:
	int 10h
	inc cx
	cmp cx, 315
	JNE xxx
	inc dx
	mov cx, 295
	cmp dx, [middleline1]
	JE create_the_playerf
	cmp dx, [middleline2]
	JE create_the_playerf
	cmp dx, [bottomline]
	JE create_the_playerf
	JMP xxx


;create player in the middle
create_the_playerf:
	; mov cx, 295
	mov dx, [player_y]
	mov bh, 00h
	cmp [upwards], 1
	JNE draw_downwards
	mov bx, offset mario_walking
	JMP drw
draw_downwards:
	cmp [upwards], 3
	JNE draw_jumping
	mov bx, offset mario_sliding
	JMP drw
draw_jumping:
	mov bx, offset mario_jumping
drw:
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
ENDP create_the_player
PROC eliminate
	mov cx, [player_y]
	sub cx, 1
	mov dx, offset break
	cmp [block1_x], 295
	JNE next_checkout1
	cmp [block1_y], cx
	JNE next_checkout1
	JMP dx
next_checkout1:
	cmp [block2_x], 295
	JNE next_checkout2
	cmp [block2_y], cx
	JNE next_checkout2
	JMP dx
next_checkout2:
	cmp [pressed1], 1
	JE next_checkout3
	cmp [block3_x], 295
	JNE next_checkout3
	cmp [block3_y], cx
	JNE next_checkout3
	JMP dx
next_checkout3:
	cmp [pressed], 1
	JE next_checkout4
	cmp [block4_x], 295
	JNE next_checkout4
	cmp [block4_y], cx
	JNE next_checkout4
	JMP dx
next_checkout4:
	ret
ENDP eliminate
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PROC print_score
mov ax, [progress]
mov bl, 100

div bl
add al, 30h
mov [hundbreds], al
mov al, ah
mov ah, 00
mov bl, 10
div bl

add al, 30h
mov [dozens], al

mov al, ah
add al, 30h
mov [units], al
;;;;;;;;;
mov ax, [best]
mov bl, 100

div bl
add al, 30h
mov [best_hundbreds], al
mov al, ah
mov ah, 00
mov bl, 10
div bl

add al, 30h
mov [best_dozens], al

mov al, ah
add al, 30h
mov [best_units], al

	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 00h ; row
	mov dl, 027h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [units]
	int 21h
;;;
	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 00h ; row
	mov dl, 026h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [dozens]
	int 21h
;;;;
	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 00h ; row
	mov dl, 025h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [hundbreds]
	int 21h
;;;;;;
	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 02h ; row
	mov dl, 19h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [your_best]
	int 21h
;;;;;
	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 02h ; row
	mov dl, 027h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [best_units]
	int 21h
;;;
	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 02h ; row
	mov dl, 026h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [best_dozens]
	int 21h
	;;;;
	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 02h ; row
	mov dl, 025h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [best_hundbreds]
	int 21h

	ret
ENDP print_score

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
	mov al, [backgroundcolor]
normal_delete:
	
	int 10h
	inc cx
	cmp cx, 315
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
	add dx, 29
	mov bh, 00h
	mov ah, 0dh
	int 10h
	cmp al, [block_color]
	JNE maybe_eliminated1
	call break
maybe_eliminated1:
	cmp al, [slide_block_frame]
	JNE not_eliminated1
	call break
not_eliminated1:

	sub dx, 29
	mov bx, offset mario_walking
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
	
	mov ax, [speed]
	mov bl, 45
	div bl
	mov dx, ax
	call delay


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
	mov al, [backgroundcolor]
normal_delete1:
	int 10h
	inc cx
	cmp cx, 315
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
	mov ah, 0dh
	int 10h
	cmp al, [block_color]
	JNE maybe_eliminated
	call break
maybe_eliminated:
	cmp al, [slide_block_frame]
	JNE not_eliminated
	call break
not_eliminated:

	mov bx, offset mario_jumping
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

	mov ax, [speed]
	mov bl, 50
	div bl
	mov dx, ax
	mov dx, 65500
	call delay

	call sort

	 pop bx
	 pop ax
	 pop cx
	 pop dx
	 pop [loop_]
	cmp [loop_], dx
	JNE mov_up

	mov [upwards], 1
	call create_the_player
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
	

	cmp ah, 4bh
	JNE next
	mov [pressed], 0
	mov [pressed1], 1
	mov [upwards], 4
	call create_the_player

next:
	cmp ah,4dh
	JNE next2
	mov [pressed1], 0
	mov [pressed], 1
	mov [upwards], 3
	call create_the_player
next2:
	cmp ah, 48h
	JNE next1
	cmp [player_y], 51
	JE sort_the_game
	call move_up
	JMP sort_the_game
next1:
	cmp ah, 50h
	JNE sort_the_game
	cmp [player_y], 151
	JE sort_the_game
	call move_down

sort_the_game:
	mov bx, [speed]
	cmp bx, 500
	JAE count
	mov bx, 500
	mov [speed], 500
count:
	cmp [loop2_], bx
	JL main
	mov [loop2_], 00
	call sort
	call print_score
	; call check_for_running

	mov ax, 00

inc [time_for_speciel]
cmp [time_for_speciel], 140
JNE delay_to_
mov [time_for_speciel], 0
mov [pressed], 0
mov [pressed1], 0
mov [upwards], 1
call create_the_player
delay_to_:
	JMP main
ENDP main
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PROC sort
first_block:
		mov dx, 65500
		call delay
		cmp [block1_e], 00
		JNE block1_exist


		; call randomize_course
		; cmp [random], 0
		; JE second_block


		; mov bx, [random]
		; call check_rows
		; cmp [blocks], 2
		; JAE second_block 

	; 	cmp [indicator1], 1
	; 	JNE indicator_is_fine1
	; 	cmp [indicator3], 1
	; 	JNE indicator_is_fine1
	; 	JMP second_block
	; indicator_is_fine1:
	;set len
		mov [block1_e], 1
		inc [blocks_on_screen]
		mov bx, 2
		call randomize_len
		mov ax, [random_len]
		mov [block1len], ax

		mov bx, [blocks_array_address]
		mov al, [bx]
		mov [random], al
		add [blocks_array_address], 1

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


second_block:
		cmp [block2_e], 00
		JNE block2_exist

		mov dx, 65500
		call delay
		
		; call randomize_course
		; cmp [random], 0
		; JE third_block

	
		mov ah, 0h 	;get system time
		int 1ah
		mov ax,dx
		xor dx,dx
		mov cx, 50
		div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 2)
		add dx, 1
		cmp dx, 8
		JNE third_block

	;set len
		mov [block2_e], 1
		inc [blocks_on_screen]
		mov bx, 2
		call randomize_len
		mov ax, [random_len]
		mov [block2len], ax

		mov bx, [blocks_array_address]
		mov al, [bx]
		mov [random], al
		add [blocks_array_address], 1

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
		mov bx, 2
		call move_block

third_block:
		mov dx, [speed]
		call delay


		cmp [block3_e], 00
		JNE block3_exist
		
		; call randomize_course
		; cmp [random], 0
		; JE fourth_block

		
		mov ah, 0h 	;get system time
		int 1ah
		mov ax,dx
		xor dx,dx
		mov cx, 100
		div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 2)
		add dx, 1
		cmp dx, 36
		JNE fourth_block

	set_len:
		mov [block3_e], 1
		inc [blocks_on_screen]
		mov bx, 3
		call randomize_len
		mov ax, [random_len]
		mov [block3len], ax

		mov bx, [blocks_array_address]
		mov al, [bx]
		mov [random], al
		add [blocks_array_address], 1

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
		mov bx, 3
		call move_slide_block

fourth_block:
		mov dx, [speed]
		call delay


		cmp [block4_e], 00
		JNE block4_exist
		
		; call randomize_course
		; cmp [random], 0
		; JE fourth_block

		
		mov ah, 0h 	;get system time
		int 1ah
		mov ax,dx
		xor dx,dx
		mov cx, 100
		div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 2)
		add dx, 1
		cmp dx, 16
		JNE delays

	set_len11:
		mov [block4_e], 1
		inc [blocks_on_screen]
		mov bx, 3
		call randomize_len
		mov ax, [random_len]
		mov [block4len], ax

		mov bx, [blocks_array_address]
		mov al, [bx]
		mov [random], al
		add [blocks_array_address], 1

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
		mov bx, 3
		call move_jmp_block

delays:
	mov dx, [blocks_on_screen]
	mov ax, 4
	sub ax, dx
		; cmp dx, 0
		; JNE normal_delay
	mov dx, ax 
		;normal_delay:
	mov ax, 10000
	call multiply
	mov dx, ax
	call delay

 	ret	
ENDP sort
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PROC move_slide_block
	mov cx, [block3_x]
	mov dx, [block3_y]

	mov [block_lower], dx
	add [block_lower], 30

	mov [block_end], cx
	mov ax, [block3len]
	sub [block_end], ax
	cmp [block_end], 0
	JL end_is_lower0

	JMP start_deleting

end_is_lower0:
	mov [block_end], 00

start_deleting:
 	mov ah, 0ch
 	mov bh, 00h
	mov al, [backgroundcolor]
 	int 10h
 	dec cx
 	cmp cx, [block_end]
 	JNE start_deleting
 	inc dx
 	mov cx, [block3_x]
 	cmp dx, [block_lower]
 	JNE start_deleting

 	inc [block3_x]
	cmp [block3_x], 319
	JNE fine
	dec [block3_x]

short_block_len:
	dec [block3len]
	cmp [block3len], 0
	JA fine
	mov [block3_e], 00
	dec [blocks_on_screen]
	sub [speed], 100
	inc [progress]
	mov [block3_x], 01
	mov [block3_y], 00
	;mov [pressed], 0
	;mov [pressed1], 0
	ret
fine:

 	mov cx, [block3_x]
 	mov dx, [block3_y]
 	mov [block_end], cx
 	mov ax, [block3len]
 	sub [block_end], ax
 	cmp [block_end], 0
 	JL lower_then0
 	JMP start_drawing
 lower_then0:
 	mov [block_end], 00
 start_drawing:
 	inc [block_end]
	dec [block_lower]

 	cmp cx, [block3_x]
 	JE speciel_color

	cmp cx, [block_end]
	JE speciel_color

	cmp dx, [block3_y]
	JE speciel_color

	cmp dx, [block_lower]
	JE speciel_color

	mov ah, 50
	push cx
	mov cx, dx
	call cx_%_2
	cmp ah, 0
	pop cx
	JE speciel_color

	

 normal_color:
 mov ah, 0ch
	mov al, [slide_block_color]
	int 10h
	JMP increases
 speciel_color:
	mov ah, 0ch
 	mov al, [slide_block_frame]
 	int 10h
 increases:
  	dec [block_end]
	inc [block_lower]


	dec cx
	cmp cx, [block_end]
	JNE start_drawing
	mov cx, [block3_x]
	inc dx
	cmp dx, [block_lower]
	JNE start_drawing

	cmp [block3_x], 296
	JL do_not_draw_player
	cmp [block3_y], 50
	JNE check_second_row
	cmp [player_y], 51
	JNE do_not_draw_player
	
	push ax
	push dx
	push bx
	push cx
	mov [upwards], 2
	call create_the_player
	pop cx
	pop bx
	pop dx
	pop ax

check_second_row:
	cmp [block3_y], 100
	JNE check_third_row
	cmp [player_y], 101
	JNE do_not_draw_player
	
	push ax
	push dx
	push bx
	push cx
	mov [upwards], 2
	call create_the_player
	pop cx
	pop bx
	pop dx
	pop ax

check_third_row:
	cmp [block3_y], 150
	JNE do_not_draw_player
	cmp [player_y], 151
	JNE do_not_draw_player

	push ax
	push dx
	push bx
	push cx
	mov [upwards], 2
	call create_the_player
	pop cx
	pop bx
	pop dx
	pop ax
do_not_draw_player:

	cmp [block_end], 317
	JNE lll
	push ax
	push dx
	push bx
	push cx
	mov [upwards], 1
	call create_the_player
	pop cx
	pop bx
	pop dx
	pop ax

lll:
	ret
ENDP move_slide_block
PROC move_block    ;;;move/jenerate block in chosen course
	cmp bx, 1
	JE  move_first_block
	cmp bx, 2
	JE move_second_block
	cmp bx, 3
	;JE  move_third_block
	;JMP move_fourth_block
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
	;mov [pressed], 0
	;mov [pressed1], 0
	; mov [upwards], 1
	; call create_the_player
	dec [blocks_on_screen]
	sub [speed], 100
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
	;mov [pressed], 0
	;mov [pressed1], 0
	; mov [upwards], 1
	; call create_the_player
	dec [blocks_on_screen]
	sub [speed], 100

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

PROC move_jmp_block
	mov cx, [block4_x]
	mov dx, [block4_y]

	mov [block_lower], dx
	add [block_lower], 30

	mov [block_end], cx
	mov ax, [block4len]
	sub [block_end], ax
	cmp [block_end], 0
	JL end_is_lower_0

	JMP start_deleting1

end_is_lower_0:
	mov [block_end], 00

start_deleting1:
 	mov ah, 0ch
 	mov bh, 00h
	mov al, [backgroundcolor]
 	int 10h
 	dec cx
 	cmp cx, [block_end]
 	JNE start_deleting1
 	inc dx
 	mov cx, [block4_x]
 	cmp dx, [block_lower]
 	JNE start_deleting1

 	inc [block4_x]
	cmp [block4_x], 319
	JNE fine1
	dec [block4_x]

short_block_len1:
	dec [block4len]
	cmp [block4len], 0
	JA fine1
	mov [block4_e], 00
	dec [blocks_on_screen]
	sub [speed], 100
	inc [progress]
	mov [block4_x], 01
	mov [block4_y], 00
	;mov [pressed], 0
	;mov [pressed1], 0
	ret
fine1:

 	mov cx, [block4_x]
 	mov dx, [block4_y]
 	mov [block_end], cx
 	mov ax, [block4len]
 	sub [block_end], ax
 	cmp [block_end], 0
 	JL lower_then_0
 	JMP start_drawing1
 lower_then_0:
 	mov [block_end], 00
 start_drawing1:
 	inc [block_end]
	dec [block_lower]

 	cmp cx, [block4_x]
 	JE speciel_color1

	cmp cx, [block_end]
	JE speciel_color1

	cmp dx, [block3_y]
	JE speciel_color1

	cmp dx, [block_lower]
	JE speciel_color1

	mov ah, 50
	push cx
	mov cx, dx
	call cx_%_2
	cmp ah, 0
	pop cx
	JE speciel_color1

 normal_color1:
 mov ah, 0ch
	mov al, [jmp_block_color]
	int 10h
	JMP increases1
 speciel_color1:
	mov ah, 0ch
 	mov al, [jmp_block_frame]
 	int 10h
 increases1:
  	dec [block_end]
	inc [block_lower]


	dec cx
	cmp cx, [block_end]
	JNE start_drawing1
	mov cx, [block4_x]
	inc dx
	cmp dx, [block_lower]
	JNE start_drawing1

	cmp [block_end], 315
	JNE do_not_draw_player1
	mov [upwards], 1
	call create_the_player
do_not_draw_player1:

	; cmp [block4_x], 295
	; Jl not_drawing_the_player


	; push ax
	; push bx
	; push cx
	; push dx

	; call create_the_player

	; pop dx
	; pop cx
	; pop bx
	; pop ax
not_drawing_the_player:
	ret
ENDP move_jmp_block

PROC draw_block
	mov al, [backgroundcolor]
;mov al, dl
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
	JL lower_then_0_
	mov [block_end], cx
	pop cx
	cmp [block_end], 319
	JNE cnte
	mov bx, 8
	ret
cnte:
	JMP delete_block

lower_then_0_:
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
	JMP draw_the_frame
next_range:
;set x,y,color
	call randomize
	mov al, [block_color]
	;pop dx
	mov [loop_], 1
	cmp [block_x], 319
	JNE x
	dec [block_len]
	cmp [block_len], 0
	JNE draw_in_range
	mov bx, 8
	inc [progress]
	;sub [speed], 50
	JMP draw_the_frame
x:
	add [block_x], 1
	JMP draw_in_range

draw_the_frame:
	mov cx, [block_x]
	mov dx, [block_y]
	
start_draw_the_frame:
	inc [block_end]
	dec [block_lower]

 	; cmp cx, [block_x]
 	; JE speciel_color1

	; cmp cx, [block_end]
	; JE speciel_color1

	; cmp dx, [block_y]
	; JE speciel_color1

	; cmp dx, [block_lower]
	; JE speciel_color1

	; ; mov ah, 50
	; ; push cx
	; ; mov cx, dx
	; ; call cx_%_2
	; ; cmp ah, 0
	; ; pop cx
	; ; JE speciel_color1
	 JMP checks


speciel_color2:
dec [block_end]
inc [block_lower]
	mov ah, 0ch
	mov al, [normal_block_frame]
	mov bh, 00h
	int 10h

checks:
dec [block_end]
inc [block_lower]
	dec cx
	cmp cx, [block_end]
	JNE start_draw_the_frame
	mov cx, [block_x]
	inc dx
	cmp dx, [block_lower]
	JNE start_draw_the_frame
	ret

ENDP draw_block

PROC randomize_len				;;;randomize number between 1-bx at dx, [random_len]
cmp bx, 3 
JE short_len
mov dx, 1000
call delay
	cmp [hard_mode], 1
	JE hard_mode_len
	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 100
	div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 4)
	add dx,30
	cmp dx, [len]
	JE randomize_len
	mov [random_len], dx
	mov [len], dx
	ret
hard_mode_len:
	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 180
	div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 4)
	add dx, 120
	cmp dx, [random_len]
	JE randomize_len
	mov [random_len], dx
	ret

short_len:
	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 20
	div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 4)
	add dx, 1
	cmp dx, [random_len]
	JE randomize_len
	mov [random_len], dx
	ret
ENDP randomize_len

PROC randomize_course
randstart:			;create randoms
; 	mov ah, 0h 	;get system time
; 	int 1ah
; 	mov ax,dx
; 	xor dx,dx
; 	mov cx, 3
; 	div cx 		;dx contains the remain of the cx devided by bx (from 0 to 2)
; 	add dx, 1
; 	mov [random], dx

; 	cmp dx, 1
; 	JNE random_isnt_1
; 	mov cx, 1
; 	mov dx, 55
; 	mov ah, 0dh
; 	mov bh, 00h
; 	int 10h
; 	cmp al, [block_color]
; 	inc [random]
; 	mov dx, [random]
; 	JE random_isnt_1
; 	cmp al, [slide_block_color]
; 	JE randomize_course
; 	ret
; random_isnt_1:
; 	cmp dx, 2
; 	JNE random_isnt_2
; 	mov cx, 1
; 	mov dx, 105
; 	mov ah, 0dh
; 	mov bh, 00h
; 	int 10h
; 	cmp al, [block_color]
; 	inc [random]
; 	mov dx,[random]
; 	JE random_isnt_2
; 	cmp al, [slide_block_color]
; 	JE randomize_course
; 	ret
; random_isnt_2:
; 	mov cx, 1
; 	mov dx, 155
; 	mov ah, 0dh
; 	mov bh, 00h
; 	int 10h
; 	cmp al, [block_color]
; 	JNE check_and_return
; 	mov [random], 0
; 	ret
; check_and_return:
; 	cmp al, [slide_block_color]
; 	JNE return_with_random
; 	mov [random], 0
; 	ret
; return_with_random:
	ret
ENDP randomize_course

PROC check_for_running
	mov cx, 310
	mov dx, 5
	mov bh, 00
	mov ah, 0dh
	int 10h
	cmp al, 15
	JNE game_stopped
	ret
game_stopped:
	call break
	ret
endp check_for_running

PROC cx_%_2
	mov ax, cx
	mov bl, 3
	div bl
	ret
ENDP cx_%_2
PROC check_rows
	mov [indicator1], 0
	mov [indicator2], 0
	mov [indicator3], 0
	mov [indicator4], 0
	mov  [blocks], 0
	mov cx, 0
	mov dx, 55
	mov bh, 00h
	mov ah, 0dh
	int 10h
	cmp al, [block_color]
	JNE second_row
	inc [blocks]
second_row:
	mov dx, 115
	int 10h
	cmp al, [block_color]
	JNE third_row
	inc [blocks]
third_row:
	mov dx, 175
	int 10h
	cmp al, [block_color]
	JNE return_sort
	inc [blocks]
return_sort:
ret

; 	cmp bx, 1
; 	JNE check2
	
; check23:	
; 	mov bh, 00h
; 	mov ah, 0dh

; 	mov cx, 0
; 	mov dx, 101
; 	int 10h
; 	cmp al, [block_color]
; 	JNE next_cmp1
; 	mov [indicator1], 1
; next_cmp1:
; 	mov cx, 5

; 	int 10h
; 	cmp al, [block_color]
; 	JNE next_cmp2
; 	mov [indicator2], 1
; next_cmp2:
; 	mov dx, 151
; 	mov cx, 0

; 	int 10h
; 	cmp al, [block_color]
; 	JNE next_cmp3
; 	mov [indicator3], 1
; next_cmp3:
; 	mov cx, 5

; 	int 10h
; 	cmp al, [block_color]
; 	JNE return_sort
; 	mov [indicator4], 1

; check2:
; 	cmp bx, 2
; 	JE check13




; check12:	

; 	mov cx, 0
; 	mov dx, 51

; 	int 10h
; 	cmp al, [block_color]
; 	JNE next_cmp7
; 	mov [indicator1], 1
; next_cmp7:
; 	mov cx, 5

; 	int 10h
; 	cmp al, [block_color]
; 	JNE next_cmp8
; 	mov [indicator2], 1
; next_cmp8:
; 	mov dx, 101
; 	mov cx, 0
; 	int 10h
; 	cmp al, [block_color]
; 	JNE next_cmp9
; 	mov [indicator3], 1
; next_cmp9:
; 	mov cx, 5

; 	int 10h
; 	cmp al, [block_color]
; 	JNE return_sort
; 	mov [indicator4], 1
; 	JMP return_sort
; 	;;;;;;;;

; 	return_sort:
; 	ret

; check13:	

; 	mov cx, 0
; 	mov dx, 51

; 	int 10h
; 	cmp al, [block_color]
; 	JNE next_cmp4
; 	 mov [indicator1], 1
; next_cmp4:
; 	mov cx, 5

; 	int 10h
; 	cmp al, [block_color]
; 	JNE next_cmp5
; 	mov [indicator2], 1
; next_cmp5:
; 	mov dx, 151
; 	mov cx, 0

; 	int 10h
; 	cmp al, [block_color]
; 	JNE next_cmp6
; 	mov [indicator3], 1
; next_cmp6:
; 	mov cx, 5

; 	int 10h
; 	cmp al, [block_color]
; 	JNE return_sort
; 	mov [indicator4], 1
; 	JMP return_sort
ENDP check_rows

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

PROC randomize
push dx

push ax
push cx
	mov ah, 0h 	;get system time
	int 1ah
	mov ax,dx
	xor dx,dx
	mov cx, 3
	div cx 		;dx contains the resort_the_game of the cx devided by bx (from 0 to 2)
	add dx, 1
	mov bx, dx
pop cx
pop ax
pop dx
ret
ENDP randomize

PROC break
	mov ax, [progress]
	cmp ax, [best]
	JLE not_new_best
	mov [best], ax
	call print_score

not_new_best:
	 cmp [progress], 69
	 JNE bad_job

	mov ah, 02h ; cursor position
	mov bh, 00h ; page number
	mov dh, 8h ; row
	mov dl, 05h ; columns
	int 10h

	mov ah, 09h ; write string to standart output
	lea dx, [good_job]
	int 21h

bad_job:
	mov [player_y], 101
	mov [progress], 0
	mov [block1len], 0
	mov [block1_x], 1
	mov [block1_e], 0
	;;mov [pressed], 0

	mov [block2len], 0
	mov [block2_x], 1
	mov [block2_e], 0

	mov [block3len], 0
	mov [block3_x], 1
	mov [block3_e], 0

	mov [block4len], 0
	mov [block4_x], 1
	mov [block4_e], 0

	mov [pressed], 0
	mov [pressed1], 0
	mov [speed], 10500

	mov [loop2_], 0

sss:
	mov ah, 00h
	int 16h

mmm:
	cmp al, 31h
	JNE rules1

	mov [hard_mode], 0
	mov bx, offset start_the_game
	mov [address], bx
	JMP [address]

rules1:
	cmp al, 1bh
	JNE hard_mode1
	call opening_screen

hard_mode1:
	cmp al, 32h
	JNE sss
	mov [hard_mode], 1
	mov bx, offset start_the_game
	mov [address], bx
	JMP [address]
ENDP break

exit:
	mov ax, 4c00h
	int 21h
END start