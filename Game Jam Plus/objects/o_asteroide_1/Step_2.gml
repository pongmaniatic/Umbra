if activar
{
	activar = false;
	posicion_x = random_range(420,1880);
	posicion_y = random_range(20,1000);
	while !place_empty(posicion_x,posicion_y)
	{
		posicion_x = random_range(420,1880);
		posicion_y = random_range(20,1000);
	};
	x = posicion_x;
	y = posicion_y;
}