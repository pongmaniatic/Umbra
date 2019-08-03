

draw_self()

draw_set_font(Font_nasalization)
draw_set_color(c_black)
if global.turno = 0
	{
	draw_text(x+64+32+32, y+64+32,"Turno de ")
	draw_text(x+64+32+32, y+64+32+32,"Magenta")
	}
if global.turno = 1
	{
	draw_text(x+64+32+32, y+64+32,"Turno de ")
	draw_text(x+64+32+32, y+64+32+32,"Cien")
	}	