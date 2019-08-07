//este es el spin del asteroide
image_angle += direccion_spin * 0.4

// esto ocurre una vez por activacion, y causa que el asteroide cambie de lugar, sprite y spin
if activar = true
	{
	//esto randomiza la posicion del asteroide	
	activar = false;
	posicion_x = random_range(7,28)*64
	posicion_y = random_range(1,16)*64
	while !place_empty(posicion_x,posicion_y)
	{
	posicion_x = random_range(7,28)*64
	posicion_y = random_range(1,16)*64
	};
	x = posicion_x;
	y = posicion_y;
	

	//esto causa que cada vez que cambie de posicion pueda tener otro sprite
	look_asteroide = round(random_range(0,2))
	if look_asteroide = 0
		{
		sprite_index = asteroide1
		}
	if look_asteroide = 1
		{
		sprite_index = asteroide2
		}
	if look_asteroide = 2
		{
		sprite_index = asteroide3
		}	
		
	//esto causa que cada vez que cambie de posicion pueda cambiar direccion de rotacion	
	direccion_look = round(random_range(0,1))
	if direccion_look = 0
		{
		direccion_spin = -1
		}
	if direccion_look = 1
		{
		direccion_spin = 1
		}
	}