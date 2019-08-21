vueltas_al_sol += 0.5;

// vueltas_al_sol NO DEBIESE SUPERAR 360
if (vueltas_al_sol >= 360)
{
	vueltas_al_sol -= 360;
};

x = o_sol.x + lengthdir_x(256,vueltas_al_sol)
y = o_sol.y + lengthdir_y(256,vueltas_al_sol)

	
direction = point_direction(x,y,o_sol.x,o_sol.y)
image_angle = direction;