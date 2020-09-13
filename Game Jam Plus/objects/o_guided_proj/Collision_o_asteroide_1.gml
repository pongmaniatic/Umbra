
	normal = collision_normal(x,y,other,16,1);
	var diff = direction - (normal + 180);
	direction = normal - diff;
	bounce++

// Activación prematura de alarm[2] si choca mientras guía
	if (etapa_dos_guiada)
	{
		event_perform(ev_alarm, 2); // Ejecuta el cód. de alarm[2] de inmediato
		alarm_set(2, -1); // Apaga la alarma
	};