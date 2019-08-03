if alarm_get(0) < 0
	{
	other.hp -=5
	instance_destroy(self)
	audio_play_sound(Colision,1,false)
	}