//esto es para tener true random
randomize();

//esto es true para que el comienzo siempre sea random
activar = true
// se define esta variable aqui pero rapidamente se cambie
direccion_spin = 0

//esto randomiza el sprite inicialmente
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
	
//esto randomiza el spin inicialmente
direccion_look = round(random_range(0,1))
if direccion_look = 0
	{
	direccion_spin = -1
	}
if direccion_look = 1
	{
	direccion_spin = 1
	}	
	
//esto da un angulo inicial del sprite
image_angle = round(random_range(0,360))
