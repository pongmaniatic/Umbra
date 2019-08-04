
saltito_al_disparar = false;
hp = 1;

dead = false;
tapped = 0;


item_gancho = true
item_bomba = true
item_lluvia = true
item_iman = true

activar = false;
radious = 400;
angle = 0;
x = o_sol.x+lengthdir_x(radious,angle);
y = o_sol.y+lengthdir_y(radious,angle);
	

if global.personaje_1 = 1
	{
	sprite_index = planetarosado
	item_bomba = true
	}

if global.personaje_1 = 2
	{
	sprite_index = s_planeta_oficial_1
	item_iman = true
	}

numero_de_items_actual = 0





