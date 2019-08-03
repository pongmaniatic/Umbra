


//evento step 
//teclas
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_down = keyboard_check(ord("S"))
key_up= keyboard_check_pressed(ord("W"));

key_up= keyboard_check_pressed(ord("W"));
/////////////////////step event//////////////////////////
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


if key_left = true
	{
	phy_speed_x = -speed_player
	}

if key_right = true
	{
	phy_speed_x = speed_player
	}
	
if 	key_jump = true 
	{		
	phy_speed_y =  -altura_salto
	}