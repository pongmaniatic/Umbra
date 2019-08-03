


/// @description Paso a la siguiente mira

space_check = keyboard_check_pressed(vk_space);

if (must_rotate) and (!space_check)
{
	image_angle += rot_speed;
};

else if (!spawned_yellow) and (space_check)
{
	mira_dos = instance_create_depth(x, y,  150, o_mira_dos_g);
	spawned_yellow = true;
	must_rotate = false;
	with (mira_dos)
	{
		image_angle = other.image_angle;
	};
};

