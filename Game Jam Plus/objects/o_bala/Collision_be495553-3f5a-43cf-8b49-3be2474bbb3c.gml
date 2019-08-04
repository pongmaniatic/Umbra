if global.turno = 0
	{
	global.items_player_1 += 1
	o_permanente.activar_recibir_item = true
	}

if global.turno = 1
	{
	global.items_player_2 += 1
	o_permanente.activar_recibir_item = true
	}

instance_destroy(other)
audio_play_sound(Robo,1,false)
