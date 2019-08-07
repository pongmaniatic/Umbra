vueltas_al_sol += 0.5

x = o_sol.x + lengthdir_x(256,vueltas_al_sol)
y = o_sol.y + lengthdir_y(256,vueltas_al_sol)
	
direction = point_direction(x,y,o_sol.x,o_sol.y)
image_angle = direction;