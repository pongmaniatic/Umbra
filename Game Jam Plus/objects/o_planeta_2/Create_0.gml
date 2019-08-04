hp = 21
dead = false

saltito_al_disparar = false
tapped = 0;

item_gancho = true
item_bomba = true
item_lluvia = true
item_iman = true

activar = false;
radious = 400;
angle = 180;
x = o_sol.x+lengthdir_x(radious,angle);
y = o_sol.y+lengthdir_y(radious,angle);


if global.personaje_2 = 1
	{
	sprite_index = Global_Jam__planeta236
	item_gancho = true
	}

if global.personaje_2 = 2
	{
	sprite_index = planetareptil
	item_lluvia = true
	}
	
numero_de_items_actual = 0
	
