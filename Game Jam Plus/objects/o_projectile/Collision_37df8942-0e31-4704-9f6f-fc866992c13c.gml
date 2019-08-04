if global.turno = 0
	{
	o_permanente.activar_recibir_item = true
	}

if global.turno = 1
	{
	o_permanente.activar_recibir_item = true
	};
instance_destroy(other);
audio_play_sound(Robo,1,false);
