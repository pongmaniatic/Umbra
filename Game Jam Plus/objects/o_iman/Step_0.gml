//colocando el iman
if modo_colocar = true
	{
	//El iman sigue al mouse	
	dir = point_direction(planeta.x, planeta.y, mouse_x, mouse_y);
	x = planeta.x + lengthdir_x(radio, dir);
	y = planeta.y + lengthdir_y(radio, dir);
		
	//cuando se coloca el iman
	if mouse_check_button_pressed(mb_left) 
		{
		modo_colocar = false
		cambiar_turno()
		}
	}
// Esto causa que la bala y el proyectil sea repelado
if instance_exists(o_bala)
	{
	push_direction = point_direction(o_bala.x, o_bala.y, x, y)
	if point_distance(x, y, o_bala.x, o_bala.y) < r_efecto
		{
		with o_bala
			{
			motion_add(-2*other.push_direction, other.aceleration)
			}
		}
	}
if instance_exists(o_projectile)
	{
	push_direction = point_direction(o_projectile.x, o_projectile.y, x, y)
	if point_distance(x, y, o_projectile.x, o_projectile.y) < r_efecto
		{
		with o_projectile
			{
			motion_add(-2*other.push_direction, other.aceleration)
			}
		}
	}	
	
//la luna ya esta colocada	
if modo_colocar = false
	{
	//esto evita que el numero suba infinitamente
	if dir = 360
		{
		dir = 0
		}	
	//esto hace rotar a el iman	
	dir += aceleration
	
	//esto determina la posicion de el iman en respecto a el planeta
	x = planeta.x + lengthdir_x(radio, dir);
	y = planeta.y + lengthdir_y(radio, dir);	
	}