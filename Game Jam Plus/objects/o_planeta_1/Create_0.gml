
activar = false;

// vida inicial del planeta
hp = 11;
// vida maxima del planeta
Max_hp = 11

//esto se hace true
dead = false;

//esto es true si es que se tiene el item y falso si no
item_gancho = false
item_bomba = false
item_lluvia = false
item_iman = false

// esto pone al planeta en un radio alrededor del sol
radious = 400;
angle = 0;
x = o_sol.x+lengthdir_x(radious,angle);
y = o_sol.y+lengthdir_y(radious,angle);
	
//numero de items en pocesion, esto ayuda a su organizacion en el menu
numero_de_items_actual = 0

//esto determina el sprite que se usa para el planeta segun lo elegido
if global.personaje_1 = 1
	{
	sprite_index = s_planeta_2
	}
if global.personaje_1 = 2
	{
	sprite_index = s_planeta_1
	}	

instance_create_depth(x,y,-65,o_bandera_1)	

