/// @description teleport + bounce+1

if (!object_going_out)
{
	other.x = partner.x;
	other.y = partner.y;
	other.bounce += 1;
	
	// vars del partner
	partner.object_going_out = true;
};