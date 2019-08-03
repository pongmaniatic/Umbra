


if global.turno = 0
	{
	/// @description Disparo

	// (TESTING) Destruye instancias de mira anteriores
	instance_destroy(o_mira_uno_g);
	instance_destroy(o_mira_dos_g);
	instance_destroy(o_mira_tres_g);

	// Mira, entrega de velocidad (opcional y cambiable)
	mira_uno = instance_create_depth(x, y, 180, o_mira_uno_g);
	rot_speed = mira_uno.rot_speed; // Modificar para entregar otra velocidad inicial
	with (mira_uno)
	{
		rot_speed = other.rot_speed;
	};
	}

