
click_check = mouse_check_button_pressed(mb_left);

if mouse_check_button_released(mb_left)
{
	released_from_shower = true;
};

if (must_rotate) and (!click_check)
{
	image_angle += rot_speed;
};

else if (!spawned_yellow) and (click_check) and (released_from_shower)
{
	mira_dos = instance_create_depth(x, y,  110, o_m2_bomb);
	spawned_yellow = true;
	must_rotate = false;
	with (mira_dos)
	{
		image_angle = other.image_angle;
	};
};