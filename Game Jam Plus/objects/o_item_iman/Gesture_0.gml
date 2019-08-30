
if global.item_seleccionado = false
	{
	global.item_seleccionado = true
	if (global.turno == 0) 
		{
		o_planeta_1.item_iman = false
		if elegido = false
			{
			instance_create_depth(o_planeta_1.x,o_planeta_1.y,-70,o_iman)
			}		
		}
	if (global.turno == 1) 
		{ 
		o_planeta_2.item_iman = false
		if elegido = false
			{
			instance_create_depth(o_planeta_2.x,o_planeta_2.y,-70,o_iman)
			}	
		}
	elegido = true
		if global.turno == 0 
			{
			image_index = 2
			}
		if global.turno == 1 
			{
			image_index = 3
			}		
	}
