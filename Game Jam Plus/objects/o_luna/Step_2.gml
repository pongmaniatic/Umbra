//colocando la luna
if modo_colocar = true
	{
	//la luna sigue al mouse	
	dir = point_direction(planeta.x, planeta.y, mouse_x, mouse_y);
	x = planeta.x + lengthdir_x(radio, dir);
	y = planeta.y + lengthdir_y(radio, dir);
	
	//cuando se coloca la luna
	if mouse_check_button_pressed(mb_left) 
		{
		modo_colocar = false
		cambiar_turno()
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
		
	//esto hace rotar a la luna
	dir += speed_luna
	
	//esto determina la posicion de la luna en respecto a el planeta
	x = planeta.x + lengthdir_x(radio, dir);
	y = planeta.y + lengthdir_y(radio, dir);	
	}