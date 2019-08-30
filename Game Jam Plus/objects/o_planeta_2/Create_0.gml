
activar = false;

// vida inicial del planeta
hp = 21;
// vida maxima del planeta
Max_hp = 21

//esto se hace true
dead = false;

//esto es true si es que se tiene el item y falso si no
item_gancho = false
item_bomba = false
item_lluvia = false
item_iman = false

// esto pone al planeta en un radio alrededor del sol
radious = 400;
angle = 180;
x = o_sol.x+lengthdir_x(radious,angle);
y = o_sol.y+lengthdir_y(radious,angle);
	
//numero de items en pocesion, esto ayuda a su organizacion en el menu
numero_de_items_actual = 0

//esto determina el sprite que se usa para el planeta segun lo elegido
if global.personaje_2 = 1
	{
	sprite_index = Global_Jam__planeta2
	}
if global.personaje_2 = 2
	{
	sprite_index = planetareptil
	}		
	
instance_create_depth(x,y,-65,o_bandera_2)	

