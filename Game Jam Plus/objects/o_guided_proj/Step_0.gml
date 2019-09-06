// Ajuste del sprite
image_angle = direction;

// Efecto de brillo
if (alarm_get(0) == -1)
	{
		effect_create_below(ef_spark,x,y,0.5,c_red)
		effect_create_below(ef_spark,x,y,0.5,c_red)
	};

// Vuelo

// Bordes laterales
if place_meeting(x,y,o_borde_lateral)
{
	hspeed = -hspeed
	bounce += 1
	
	// Activación prematura de alarm[2] si choca mientras guía
	if (etapa_dos_guiada)
	{
		event_perform(ev_alarm, 2); // Ejecuta el cód. de alarm[2] de inmediato
		alarm_set(2, -1); // Apaga la alarma
	};
};
	
// Border verticales
if place_meeting(x,y,o_borde_superior)
{
	vspeed = -vspeed
	bounce += 1
	
	// Activación prematura de alarm[2] si choca mientras guía
	if (etapa_dos_guiada)
	{
		event_perform(ev_alarm, 2); // Ejecuta el cód. de alarm[2] de inmediato
		alarm_set(2, -1); // Apaga la alarma
	};
};

// Conteo de rebotes y auto-destrucción
if bounce > max_bounce
{
	audio_play_sound(Colision,1,false);
	instance_destroy(self);
};

// Etapa Guiada
if (etapa_dos_guiada)
{
	// Vars. iniciales del step
	
	// Posicion enemiga (oponente del turno en cuestión, obviamente)
	if (global.turno == 0)
	{
		var enem_x = o_planeta_2.x;
		var enem_y = o_planeta_2.y;
	};
	else if (global.turno == 1)
	{
		var enem_x = o_planeta_1.x;
		var enem_y = o_planeta_1.y;
	};
	
	// Ángulo a sumar al misil para apuntar a planeta enemigo, dividido
	// en steps de duración restantes de alarma[2]
	var ang_enem = point_direction(x, y, enem_x, enem_y);
	
	
	var ang_var_step = (ang_enem - direction) / alarm_get(2);
	
	direction += ang_var_step; // *Recordar, image_angle se ajusta al principio
};
