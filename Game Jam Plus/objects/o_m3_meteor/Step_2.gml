if (!instance_exists(o_projectile))
{
	if global.turno = 0
		{
		global.turno = 1
		o_asteroide_1.activar = true
		if (instance_exists(o_planeta_1)){o_planeta_1.activar = 1};
		if (instance_exists(o_planeta_2)){o_planeta_2.activar = 1};
		if instance_exists(o_nave_tienda)
			{
			o_nave_tienda.Etapa += 1
			}
		};
	else
		{
		global.turno = 0
		o_asteroide_1.activar = true
		if (instance_exists(o_planeta_1)){o_planeta_1.activar = 1};
		if (instance_exists(o_planeta_2)){o_planeta_2.activar = 1};
		if instance_exists(o_nave_tienda){o_nave_tienda.Etapa += 1};
		};
	instance_destroy();
};