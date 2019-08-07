
//cerrar juego
if keyboard_check(vk_escape)
	{
	game_end();
	}
//cerrar nivel
if keyboard_check(ord("R"))
	{
	room_restart()
	}

//Esto se activa cuando se recibe un item 
if activar_recibir_item = true
	{
	//esto causa que la activacion de obtener item solo cause 1 item por activacion
	activar_recibir_item = false
	
	//esto randomiza cual item se encontrara
	item_recibido_numero = round(random_range(0,3))
	
	//si es el planeta 1 entonces activa uno de estos items
	if global.turno = 0
		{
		if item_recibido_numero = 0
			{
			o_planeta_1.item_gancho = false
			}
		if item_recibido_numero = 1
			{
			o_planeta_1.item_bomba = false
			}
		if item_recibido_numero = 2
			{
			o_planeta_1.item_lluvia = false
			}
		if item_recibido_numero = 3
			{
			o_planeta_1.item_iman = false
			}
		}
		
	//si es el planeta 2 entonces activa uno de estos items
	if global.turno = 1
		{
		if item_recibido_numero = 0
			{
			o_planeta_2.item_gancho = false
			}
		if item_recibido_numero = 1
			{
			o_planeta_2.item_bomba = false
			}
		if item_recibido_numero = 2
			{
			o_planeta_2.item_lluvia = false
			}
		if item_recibido_numero = 3
			{
			o_planeta_2.item_iman = false
			}
		}
	}

if !instance_exists(o_planeta_1) or !instance_exists(o_planeta_2)
	{
	Estado_win = true
	}

if Estado_win = true
	{
	room_goto(0)
	}


