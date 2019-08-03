


//evento step 
//teclas
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump= keyboard_check_pressed(ord("W"));

//evento step 
// cerrar juego
if keyboard_check(vk_escape)
	{
	game_end();
	}
	



//movimiento
key_left = keyboard_check(ord("A")) or keyboard_check(vk_left)
key_right = keyboard_check(ord("D")) or keyboard_check(vk_right)
key_jump = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)
//////////// mira en la direccion correcta///////////////
var move = key_right - key_left;

if sign(move) = -1
	{
	image_xscale= -1;
	looking_left = true;
	looking_right = false; 
	}
if sign(move) = 1
	{
	image_xscale= 1;
	looking_right = true; 
	looking_left = false;
	}
/////////////////////////////////////////////////////////

///////////////////moverse//////////////////////////
if key_right or key_left  
	{	
	///////////////////////////////
	estado_idle = false;
	estado_running = true;
	estado_airborne = false;

	///////////////////////////////	
	}
else
	{
	///////////////////////////////
	estado_idle = true;
	estado_running = false;
	estado_airborne = false;

	///////////////////////////////
	}
if o_player_colision_abajo.touching_floor = false
	{
	///////////////////////////////
	estado_idle = false;
	estado_running = false;
	estado_airborne = true;
	///////////////////////////////
	}
	
	

if 	estado_running = true
	{
	sprite_index = s_player

		
	if key_right and o_player_colision_derecha.touching_floor = false
		{	
		phy_speed_x = speed_player;
		}
	if key_right and o_player_colision_derecha.touching_floor = true
		{	
		phy_speed_x = 0;
		}
		
	if key_left and o_player_colision_izquierda.touching_floor = false
		{
		phy_speed_x = -speed_player;
		}
	if key_left and o_player_colision_izquierda.touching_floor = true
		{
		phy_speed_x = 0;
		}
	}

if 	estado_idle = true
	{
	sprite_index = s_player	
	phy_speed_x = 0;	
	}

if 	estado_airborne = true
	{	
	sprite_index = s_player	

	if key_right and o_player_colision_derecha.touching_floor = false
		{		
		phy_speed_x = speed_player;
		}
	if key_right and o_player_colision_derecha.touching_floor = true
		{	
		phy_speed_x = 0;
		}			
		
	if key_left and o_player_colision_izquierda.touching_floor = false
		{
		phy_speed_x = -speed_player;
		}	
	if key_left and o_player_colision_izquierda.touching_floor = true
		{	
		phy_speed_x = 0;
		}	
			
	phySpdMax = 12;
	phySpdDecMod= 0.99;
	if(phy_speed > phySpdMax)
	    {
		phy_speed_x *= phySpdDecMod;
		}
	}


/////////////////esto hace que en el aire cuando se suelte el moverse baje la velocidad horizontal dando mas control aereo///////////////////////////////
if !keyboard_check_released(key_left) = true and !keyboard_check_released(key_right) = true
	{
	phy_speed_x = 0;
	}	



	

/////////////////jump///////////////////////////////

if o_player_colision_abajo.touching_floor = true
	{
	puede_saltar = true;
	salto_de_disign = false;
	}

if 	key_jump = true  and puede_saltar = true
	{		
	phy_speed_y =  -altura_salto
	///////////////////////////////
	estado_idle = false;
	estado_running = false;
	estado_airborne = true;
	///////////////////////////////
	jump_start = true;	
	}
	
// acorta el salto
if jump_start = true and phy_speed_y < 0.1 
	{	
	if keyboard_check_released(ord("W")) = true or keyboard_check_released(vk_up) = true
		{
		phy_speed_y = phy_speed_y/2
		jump_start = false;
		}
	}
	
/////////////////////////////Timer para salto aereo secreto de diseño/////////////////////////////////////////
if o_player_colision_abajo.touching_floor = false and salto_de_disign = false and key_jump = false
	{
	alarm_set(0,4)
	salto_de_disign = true
	}
if salto_de_disign = true
	{
	salto_o_no = alarm_get(0)
	if salto_o_no = 0 or salto_o_no < 0
		{	
		puede_saltar = false;
		}
	}





