//esto pregunta que turno es y se registra el planeta correcto
if global.turno = 0
	{
	planeta = o_planeta_1;
	}
if  global.turno = 1
	{
	planeta = o_planeta_2;
	}

// distancia al planeta
radio = 128;

//velocidad de rotacion de la luna y la direccion
speed_luna = -0.5;

//esto diferencua cuando se esta colocando y ya esta colocado
modo_colocar = true