


/// @description Paso a la siguiente mira

click_check = mouse_check_button_pressed(mb_left);

if (must_rotate) and (!click_check)
{
	image_angle += rot_speed;
};

else if (!spawned_yellow) and (click_check)
{
	mira_dos = instance_create_depth(x, y,  150, o_mira_dos_g);
	spawned_yellow = true;
	must_rotate = false;
	with (mira_dos)
	{
		image_angle = other.image_angle;
	};
};

