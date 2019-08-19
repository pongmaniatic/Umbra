//cerrar juego
if keyboard_check(vk_escape)
	{
	game_end();
	}

if keyboard_check(ord("R"))
	{
	room_restart()
	}

if activar_recibir_item = true
	{
	activar_recibir_item = false
	item_recibido_numero = round(random_range(0,3))
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

if modo_tutorial = true
	{
	modo_turno_1 = false
	modo_pasar_turno = false
	modo_turno_2 = false
	modo_win = false
	instance_create_depth(x,y,-60,o_tutorial)
	}
	
if modo_turno_1 = true
	{
	modo_tutorial = false
	modo_pasar_turno = false
	modo_turno_2 = false
	modo_win = false
	}
	
if modo_pasar_turno = true
	{
	modo_tutorial = false
	modo_turno_1 = false
	modo_turno_2 = false
	modo_win = false
	}
	
if modo_turno_2 = true
	{
	modo_tutorial = false
	modo_turno_1 = false
	modo_pasar_turno = false
	modo_win = false
	}
	
if modo_win = true
	{
	modo_tutorial = false
	modo_turno_1 = false
	modo_pasar_turno = false
	modo_turno_2 = false
	}
	
	
	




