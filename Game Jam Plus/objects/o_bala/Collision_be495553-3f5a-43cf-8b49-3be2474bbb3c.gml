//esto causa que el planeta correcto reciba un item
if global.turno = 0
	{
	o_permanente.activar_recibir_item = true
	}

if global.turno = 1
	{
	o_permanente.activar_recibir_item = true
	}

//destruye la nave y da un sonido
instance_destroy(other)
audio_play_sound(Robo,1,false)
