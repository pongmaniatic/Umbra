/// @description Paso a la siguiente mira
if trabajo_terminado = false
	{
	space_check = keyboard_check_pressed(vk_space);

	if (must_rotate) and (!space_check)
	{
		image_angle += rot_speed;
		if (abs(init_image_angle-image_angle) >= abs(arc/2 - o_mira_dos_g.arc/2))
		{
			rot_speed = -rot_speed;

		};
	};

	else if (space_check)
	{
		must_rotate = false;
		trabajo_terminado = true
		alarm_set(0,60)
		bala = instance_create_depth(x,y,110,o_bala);
		with (bala)
		{
			direction = other.image_angle;
		};
	};
	}
if trabajo_terminado = true
	{
	tiempo = alarm_get(0)
	if tiempo < 0
		{
		instance_destroy(self)
		instance_destroy(o_mira_dos_g)
		instance_destroy(o_mira_uno_g)
		}
	}