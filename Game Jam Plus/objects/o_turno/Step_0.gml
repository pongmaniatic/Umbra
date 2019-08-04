if (global.turno == 0) && (keyboard_check_pressed(ord("L"))){ //poner una luna ojoi, luna selecionada
	instance_create_layer(x,y,layer_get_id("paredes"),o_luna)
}
if (global.turno == 1) && (keyboard_check_pressed(ord("L"))){ //poner una luna ojoi, luna selecionada
	instance_create_layer(x,y,layer_get_id("paredes"),o_luna)
}

if !instance_exists(o_nave_tienda) and !instance_exists(o_bala)
	{
	instance_create_depth(x+64,y+64,-50,o_nave_tienda)
	}