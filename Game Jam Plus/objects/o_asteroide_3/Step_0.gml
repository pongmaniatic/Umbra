if activar = true
	{
	activar = false
	posicion_x = random_range(420,1880)
	posicion_y = random_range(20,1000)

	x = posicion_x
	y =  posicion_y
	}
if place_meeting(x,y,o_planeta_1) or place_meeting(x,y,o_planeta_2) or place_meeting(x,y,o_sol)
	{
	activar = false
	posicion_x = random_range(420,1880)
	posicion_y = random_range(20,1000)

	x = posicion_x
	y =  posicion_y
	}
