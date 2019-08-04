/// @description Paso a la siguiente mira
if trabajo_terminado = false
	{
	click_check = mouse_check_button_pressed(mb_left);

	if (must_rotate) and (!click_check)
	{
		image_angle += rot_speed;
		if (abs(init_image_angle-image_angle) >= abs(arc/2 - o_mira_dos_g.arc/2))
		{
			rot_speed = -rot_speed;

		};
	};

	else if (click_check)
	{
		must_rotate = false;
		trabajo_terminado = true
		alarm_set(0,60)
		bala = instance_create_depth(x,y,110,o_bala);
		with (bala)
		{
			direction = other.image_angle;
		};
		if place_meeting(x,y,o_planeta_1)
			{
			o_planeta_1.saltito_al_disparar = true
			}
		if place_meeting(x,y,o_planeta_2)
			{
			o_planeta_2.saltito_al_disparar = true
			}		
	};
	}
if trabajo_terminado
	{
	o_planeta_1.tapped = -1;
	o_planeta_2.tapped = -1;
	tiempo = alarm_get(0)
	if tiempo < 0
		{
		instance_destroy(self)
		instance_destroy(o_mira_dos_g)
		instance_destroy(o_mira_uno_g)
		}
	}