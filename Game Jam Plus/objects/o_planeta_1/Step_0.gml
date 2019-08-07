
if (image_index >= 14)
	{
	image_speed = 0
	}

if (hp < 0)
	{
		sprite_index = Explosi_n;	
	}
	
//if activar = true
//	{
//		angle -=15;
//		x = o_sol.x+lengthdir_x(radious,angle);
//		y = o_sol.y+lengthdir_y(radious,angle);
//		activar = false;
//	}

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