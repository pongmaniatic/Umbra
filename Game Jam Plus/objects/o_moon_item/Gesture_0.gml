
if global.item_seleccionado = false
	{
	global.item_seleccionado = true
	if elegido = false
		{
		if global.turno == 0 
			{
			image_index = 2
			}
		if global.turno == 1 
			{
			image_index = 3
			}
		elegido = true
		if (global.turno == 0) 
			{ //poner una luna ojoi, luna selecionada
			instance_create_depth(o_planeta_1.x,o_planeta_1.y,-70,o_luna)
			o_planeta_1.item_gancho = false
			}
		if (global.turno == 1) 
			{ //poner una luna ojoi, luna selecionada
			instance_create_depth(o_planeta_1.x,o_planeta_1.y,-70,o_luna)
			o_planeta_2.item_gancho = false
			}
		}
	}