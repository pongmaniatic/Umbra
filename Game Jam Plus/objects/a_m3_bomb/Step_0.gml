

if (!trabajo_terminado)
{
	click_check = mouse_check_button_pressed(mb_left);

	if (must_rotate) and (!click_check)
	{
		image_angle += rot_speed;
		if (abs(init_image_angle-image_angle) >= abs(arc/2 - o_m2_bomb.arc/2))
		{
			rot_speed = -rot_speed;

		};
	};

	else if (click_check) 
	{
		must_rotate = false;
		trabajo_terminado = true;
		alarm_set(0, 1*room_speed); // Se prepara alarma para destruir miras en 1 seg.
		
		guided_projectile = instance_create_depth(x, y, depth, o_guided_proj);
		with (guided_projectile)
		{
			direction = other.image_angle;
			image_angle = direction;
		};
	};
};
