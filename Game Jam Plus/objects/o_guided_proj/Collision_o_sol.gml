


effect_create_above(ef_smokeup,x,y,1,c_white)
if alarm_get(0) < 0
	{
	audio_play_sound(Colision,1,false)
	instance_destroy(self)
	};

