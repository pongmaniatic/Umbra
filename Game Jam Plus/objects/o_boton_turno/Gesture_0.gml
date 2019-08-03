

if global.turno = 0
	{
	global.turno = 1
	if instance_exists(o_nave_tienda)
		{
		o_nave_tienda.Etapa += 1
		}
	}
else
	{
	global.turno = 0
	}