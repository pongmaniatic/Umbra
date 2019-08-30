if global.item_seleccionado = false
	{
	global.item_seleccionado = true
	if o_permanente.lluvia_de_meteoro_condicion_1 = false and o_permanente.lluvia_de_meteoro_condicion_2 = false
		{
		if global.turno = 0
			{
			o_planeta_1.item_lluvia = false	
			if !instance_exists(o_m1_meteor)	
				{
				with (instance_create_depth(x,y,-50,o_meteor_shower))
					{
					planeta = 1
					}
				}
			}

		if global.turno = 1
			{
			o_planeta_2.item_lluvia = false	
			if !instance_exists(o_m1_meteor)	
				{	
				with (instance_create_depth(x,y,-50,o_meteor_shower))
					{
					planeta = 2
					}
				}
			}
		}

	// el item es seleccionado y se cambia el sprite
	seleccionado = true
		if global.turno == 0 
			{
			image_index = 2
			}
		if global.turno == 1 
			{
			image_index = 3
			}
	}