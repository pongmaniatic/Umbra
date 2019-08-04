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
	
if saltito_al_disparar = false	
	{
	sprite_index = planetarosado
	
	}
	
	
if 	saltito_al_disparar = true
	{
	saltito_al_disparar = false	
	sprite_index = planetarosado_grande
	}