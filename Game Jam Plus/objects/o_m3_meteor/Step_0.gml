if (!trabajo_terminado)
{
	click_check = mouse_check_button_pressed(mb_left);

	if (must_rotate) and (!click_check)
	{
		image_angle += rot_speed;
		if (abs(init_image_angle-image_angle) >= abs(arc/2 - o_m2_meteor.arc/2))
		{
			rot_speed = -rot_speed;

		};
	};

	else if (click_check) 
	{
		must_rotate = false;
		trabajo_terminado = true;
		alarm_set(0, 1*room_speed); // Se prepara alarma para destruir miras en 1 seg.
		
		misiles = 4;
		while (misiles != 0)
		{
			misiles -= 1;
			projectile = instance_create_depth(x,y,110,o_projectile);
			with (projectile)
			{	
				direction = other.image_angle + irandom_range(-5,5);
			};
		};
	};
};