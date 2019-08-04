/// @description object_going_out

if !place_meeting(x, y, o_bala) and (object_going_out)
{
	object_going_out = false;
};

if place_meeting(x,y, o_nave_tienda)
	{
	activar = true
	}

if activar = true
	{
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
	}

