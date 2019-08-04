/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (hp < 0)
	{
		instance_destroy();
		instance_create_depth(x,y,100,o_planeta_muerto)
	}


if global.turno = 0
	{
	if item_gancho = true and !instance_exists(o_moon_item)
		{
		with(instance_create_depth(x,y,-50,o_moon_item))
			{
			creado_por = 0
			}
		
		}
	
	if item_bomba = true and !instance_exists(o_item_bomba)
		{
		with(instance_create_depth(x,y,-50,o_item_bomba))
			{
			creado_por = 0
			}
		}
	
	if item_lluvia = true and !instance_exists(o_item_lluvia_de_asteroides)
		{
		with(instance_create_depth(x,y,-50,o_item_lluvia_de_asteroides))
			{
			creado_por = 0
			}
		}
	
	if item_iman = true and !instance_exists(o_item_iman)
		{
		with(instance_create_depth(x,y,-50,o_item_iman))
			{
			creado_por = 0
			}
		}
	}