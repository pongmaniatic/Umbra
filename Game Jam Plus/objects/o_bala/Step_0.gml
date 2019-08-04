
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
	instance_destroy(other)
	audio_play_sound(Colision,1,false)
	if global.turno = 0
		{
		global.turno = 1
		o_asteroide_1.activar = true
		if instance_exists(o_nave_tienda)
			{
			o_nave_tienda.Etapa += 1
			}
		}
	else
		{
		global.turno = 0
		o_asteroide_1.activar = true
		if instance_exists(o_nave_tienda)
			{
			o_nave_tienda.Etapa += 1
			}
		}
	instance_destroy(self)
	}