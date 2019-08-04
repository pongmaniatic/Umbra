

if turno_actual != global.turno
	{
	 o_planeta_1.numero_de_items_actual = 0
	 o_planeta_2.numero_de_items_actual = 0
	instance_destroy(self)
	}



if creado_por = 0 and primera_vez = true
	{
	primera_vez = false	
	o_planeta_1.numero_de_items_actual += 1

	if o_planeta_1.numero_de_items_actual = 1 
		{
		x = 270
		y = 464
		}
	
	if o_planeta_1.numero_de_items_actual = 2 
		{
		x = 96+16
		y = 464+164
		}
	
	if o_planeta_1.numero_de_items_actual = 3 
		{
		x = 270
		y = 464+164
		}
	
	if o_planeta_1.numero_de_items_actual = 4 
		{
		x = 96+16
		y = 464+192+140
		}
	}
if creado_por = 1 and primera_vez = true
	{
	primera_vez = false	
	o_planeta_2.numero_de_items_actual += 1

	if o_planeta_2.numero_de_items_actual = 1 
		{
		x = 270
		y = 464
		}
	
	if o_planeta_2.numero_de_items_actual = 2 
		{
		x = 96+16
		y = 464+164
		}
	
	if o_planeta_2.numero_de_items_actual = 3 
		{
		x = 270
		y = 464+164
		}
	
	if o_planeta_2.numero_de_items_actual = 4 
		{
		x = 96+16
		y = 464+192+140
		}
	}

