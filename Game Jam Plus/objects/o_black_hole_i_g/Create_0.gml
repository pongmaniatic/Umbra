
activar = true

// init vars
possible_collision = true;
object_going_out = false;

//create reciever with collision check
randomize();

// The playing screen is 24 screen width, 17 wide.
// We take one of each so the black hole doesn't appear inside a wall.
// That is, 23 and 16 respectively.
while (possible_collision)
{
	rand_x = room_width - 64 * irandom_range(1,23);
	rand_y = room_height - 64 * irandom_range(1,16);	
	if place_empty(rand_x, rand_y)
	{
		// The holes become partners
		partner = instance_create_layer(rand_x, rand_y, "objetos",
		o_black_hole_f_g);
		with (partner) partner = other;
		possible_collision = false;
	};
};
