//hace que la bala apunte donde se mueve
image_angle = direction;

//esto comienza a crear un efecto despues de un par de segundos cierto tiempo
if alarm_get(0) < 0
	{
	effect_create_below(ef_spark,x,y,0.8,c_red)
	}


//esto causa que rebote
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
	}