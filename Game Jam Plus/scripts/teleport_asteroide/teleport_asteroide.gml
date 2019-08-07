
	argument[0].image_alpha = 0

	//esto randomiza la posicion del asteroide	
	argument[0].activar = false;
	posicion_x = random_range(7,28)*64
	posicion_y = random_range(1,16)*64
	x = posicion_x;
	y = posicion_y;
	//esto causa que cada vez que cambie de posicion pueda tener otro sprite
	look_asteroide = round(random_range(0,2))
	if look_asteroide = 0
		{
		argument[0].sprite_index = asteroide1
		}
	if look_asteroide = 1
		{
		argument[0].sprite_index = asteroide2
		}
	if look_asteroide = 2
		{
		argument[0].sprite_index = asteroide3
		}	
		
	//esto causa que cada vez que cambie de posicion pueda cambiar direccion de rotacion	
	direccion_look = round(random_range(0,1))
	if direccion_look = 0
		{
		argument[0].direccion_spin = -1
		}
	if direccion_look = 1
		{
		argument[0].direccion_spin = 1
		}