

if alarm_get(0) < 0
	{
	other.hp -= 2
	audio_play_sound(Colision,1,false)
	instance_destroy(self)
	};