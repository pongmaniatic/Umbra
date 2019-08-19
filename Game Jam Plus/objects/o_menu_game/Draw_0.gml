

draw_self()

draw_set_font(Font_nasalization)
draw_set_color(c_black)
if global.turno = 0
	{
	if global.personaje_1 = 1
		{
		draw_sprite(cucaracha,0,x+128+32, y+128)
		}
	if global.personaje_1 = 2
		{
		draw_sprite(_1robot_copy,0,x+128+32, y+128)
		}

	}
if global.turno = 1
	{
	if global.personaje_2 = 1
		{
		draw_sprite(_2humano,0,x+128+32, y+128+16)
		}
	if global.personaje_2 = 2
		{
		draw_sprite(s_reptil,0,x+128+32, y+128)
		}
	}	
	

