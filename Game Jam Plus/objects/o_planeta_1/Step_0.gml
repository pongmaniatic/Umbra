/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (hp < 0)
	{
		instance_destroy();
		instance_create_depth(x,y,100,o_planeta_muerto)
	}


