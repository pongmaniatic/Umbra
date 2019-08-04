
image_angle = direction;
if alarm_get(0) < 0
	{
		effect_create_below(ef_spark,x,y,0.5,c_red)
		effect_create_below(ef_spark,x,y,0.5,c_red)
	}

if place_meeting(x,y,o_borde_lateral)
	{
	hspeed = -hspeed
	bounce += 1
	}

if place_meeting(x,y,o_borde_superior)
	{
	vspeed = -vspeed
	bounce += 1
	}
if bounce > max_bounce
	{
	audio_play_sound(Colision,1,false)
	instance_destroy(self)
	};