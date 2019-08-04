

if alarm_get(0) < 0
	{
	other.hp -= 5
	audio_play_sound(Colision,1,false)

	

	if global.turno = 0
		{
		global.turno = 1
		o_asteroide_1.activar = true
		if instance_exists(o_nave_tienda)
			{
			o_nave_tienda.Etapa += 1
			}
		}
	else
		{
		global.turno = 0
		o_asteroide_1.activar = true
		if instance_exists(o_nave_tienda)
			{
			o_nave_tienda.Etapa += 1
			}
		}
	instance_destroy(self)
	}