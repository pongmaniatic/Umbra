click_check = mouse_check_button_pressed(mb_left);

if (must_rotate) and (!click_check)
{
	image_angle += rot_speed;
	if (abs(init_image_angle-image_angle) >= abs(arc/2 - o_m1_meteor.arc/2))
	{
		rot_speed = -rot_speed;
	};
};

else if (!spawned_red) and (click_check)
{
	mira_tres = instance_create_depth(x, y, 109, o_m3_meteor);
	spawned_red = true;
	must_rotate = false;
	with (mira_tres)
	{
		image_angle = other.image_angle;
	};
};