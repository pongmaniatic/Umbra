/// @description Paso a la siguiente mira

space_check = keyboard_check_pressed(vk_space);

if (must_rotate) and (!space_check)
{
	image_angle += rot_speed;
	if (abs(init_image_angle-image_angle) >= abs(arc/2 - o_mira_uno_g.arc/2))
	{
		rot_speed = -rot_speed;
	};
};

else if (!spawned_red) and (space_check)
{
	mira_tres = instance_create_depth(x, y, 130,
	o_mira_tres_g);
	spawned_red = true;
	must_rotate = false;
	with (mira_tres)
	{
		image_angle = other.image_angle;
	};
};