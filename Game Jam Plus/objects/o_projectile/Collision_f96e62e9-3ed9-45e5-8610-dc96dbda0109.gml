

if alarm_get(0) < 0
	{
	other.hp -= 5
	audio_play_sound(Colision,1,false)
	instance_destroy(self)
	};