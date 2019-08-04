/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if hp < 0 and dead = false
	{
	dead = true
	sprite_index = Explosi_n
	}
	
if 	dead = true
	{
	if image_number > image_index -1
		{
		instance_destroy(self)
		}
	}