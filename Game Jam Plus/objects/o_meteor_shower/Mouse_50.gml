/// @description if clicked

if planeta = 1
	{
		// spawnear 4 cohetes (parte ciclo hasta o_m3_meteor)
	if (!activated)
	{
		instance_create_depth(o_planeta_1.x, o_planeta_1.y, 111, o_m1_meteor)
		activated = true;
		instance_destroy();
	};
	}
if planeta = 2
	{
		// spawnear 4 cohetes (parte ciclo hasta o_m3_meteor)
	if (!activated)
	{
		instance_create_depth(o_planeta_2.x, o_planeta_2.y, 111, o_m1_meteor)
		activated = true;
		instance_destroy();
	};
	}

