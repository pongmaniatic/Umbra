global.item_seleccionado = false
audio_stop_all()
audio_play_sound(Tema_3a_final,1,false)
if !audio_is_playing(Tema_3a_final)
	{
	audio_play_sound(Tema_3b_final,1,true)
	}