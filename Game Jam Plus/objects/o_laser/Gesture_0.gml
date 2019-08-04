


if global.turno == 1  && !instance_exists(o_bala) && !instance_exists(o_mira_uno_g)
	{
	audio_play_sound(Boton_4,1,false)	
	/// @description Disparo

	// (TESTING) Destruye instancias de mira anteriores
	instance_destroy(o_mira_uno_g);
	instance_destroy(o_mira_dos_g);
	instance_destroy(o_mira_tres_g);
	
	// Mira, entrega de velocidad (opcional y cambiable)
	mira_uno = instance_create_depth(o_planeta_2.x, o_planeta_2.y, 180, o_mira_uno_g);
	rot_speed = mira_uno.rot_speed; // Modificar para entregar otra velocidad inicial
	with (mira_uno)
	{
		rot_speed = other.rot_speed;
	};

	}
if global.turno == 0  && !instance_exists(o_bala) && !instance_exists(o_mira_uno_g)
	{
	audio_play_sound(Boton_4,1,false)	
	/// @description Disparo

	// (TESTING) Destruye instancias de mira anteriores
	instance_destroy(o_mira_uno_g);
	instance_destroy(o_mira_dos_g);
	instance_destroy(o_mira_tres_g);
	
	// Mira, entrega de velocidad (opcional y cambiable)
	mira_uno = instance_create_depth(o_planeta_1.x, o_planeta_1.y, 180, o_mira_uno_g);
	rot_speed = mira_uno.rot_speed; // Modificar para entregar otra velocidad inicial
	with (mira_uno)
	{
		rot_speed = other.rot_speed;
	};

	}