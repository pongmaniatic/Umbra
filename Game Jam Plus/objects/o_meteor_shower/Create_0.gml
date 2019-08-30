
//dependiendo del turno Crea el generador de meteorors en el planeta correcto
if global.turno = 0
	{
	instance_create_depth(o_planeta_1.x, o_planeta_1.y, 111, o_m1_meteor);
	instance_destroy();
	}
if global.turno = 1
	{
	instance_create_depth(o_planeta_2.x, o_planeta_2.y, 111, o_m1_meteor);
	instance_destroy();
	}

