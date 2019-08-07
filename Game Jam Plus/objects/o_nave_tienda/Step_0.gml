
// esto causa que se mueva alrededor del sol
posicion_respecto_al_sol += 0.5
x = o_sol.x + lengthdir_x(256,posicion_respecto_al_sol)
y = o_sol.y + lengthdir_y(256,posicion_respecto_al_sol)
	
//esto cambia la el angulo del sprite para que siempre mire en direccion al sol	
direction = point_direction(x,y,o_sol.x,o_sol.y)
image_angle = direction;