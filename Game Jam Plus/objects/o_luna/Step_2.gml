if (!placed) && (global.turno == 0)
	{
	global.turno = 1
	o_asteroide_1.activar = true
	if (instance_exists(o_planeta_1)){o_planeta_1.activar = 1};
	if (instance_exists(o_planeta_2)){o_planeta_2.activar = 1};
	if instance_exists(o_nave_tienda)
		{
		o_nave_tienda.Etapa += 1
		}
	angle = point_direction(o_planeta_1.x,o_planeta_1.y,mouse_x,mouse_y);
	if (place_meeting(o_planeta_1.x + lengthdir_x(radio,angle),o_planeta_1.y + lengthdir_y(radio,angle),o_luna))
	{
		angle = anglep;
	}

	x = o_planeta_1.x + lengthdir_x(radio,angle);
	y = o_planeta_1.y + lengthdir_y(radio,angle);
	if (mouse_check_button_pressed(mb_left)){placed = true}

	anglep = angle;
	}

else if (!placed) && (global.turno == 1)
{
	global.turno = 0
		o_asteroide_1.activar = true
		if (instance_exists(o_planeta_1)){o_planeta_1.activar = 1};
		if (instance_exists(o_planeta_2)){o_planeta_2.activar = 1};
		if instance_exists(o_nave_tienda)
			{
			o_nave_tienda.Etapa += 1
			}
angle = point_direction(o_planeta_2.x,o_planeta_2.y,mouse_x,mouse_y);
if (place_meeting(o_planeta_2.x + lengthdir_x(radio,angle),o_planeta_2.y + lengthdir_y(radio,angle),o_luna))
{
	angle = anglep;
}

x = o_planeta_2.x + lengthdir_x(radio,angle);
y = o_planeta_2.y + lengthdir_y(radio,angle);
if (mouse_check_button_pressed(mb_left)){placed = true}

anglep = angle;
}
