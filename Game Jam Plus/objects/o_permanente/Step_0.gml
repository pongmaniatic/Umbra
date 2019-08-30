
//cerrar juego
if keyboard_check(vk_escape)
	{
	game_end();
	}


//cuando se reinicia mientras los planetas rotan, se crea un bug donde los planetas rotan por siempre
//quitar capacidad de reiniciar al terminar el juego :v
if keyboard_check(ord("R"))
	{
	global.item_seleccionado = false
	room_restart()
	}

if activar_recibir_item = true
	{
	activar_recibir_item = false
	randomize()
	item_recibido_numero = round(random_range(0,3))
	if global.turno = 0
		{
		if item_recibido_numero = 0
			{
			if o_planeta_1.item_gancho = false
				{
				o_planeta_1.item_gancho = true
				}
			else
				{
				item_recibido_numero = round(random_range(1,2))
				}
			}
	
		if item_recibido_numero = 1
			{
			if o_planeta_1.item_iman = false
				{
				o_planeta_1.item_iman = true
				}
			else
				{
				item_recibido_numero = round(random_range(2,2))
				}
			}
		if item_recibido_numero = 2
			{
			if o_planeta_1.item_lluvia = false
				{
				o_planeta_1.item_lluvia = true
				}
			else
				{
				item_recibido_numero = 3
				}
			}
		if item_recibido_numero = 3
			{
			if o_planeta_1.item_iman = false
				{
				o_planeta_1.item_iman = true
				}
			}			

		}
	if global.turno = 1
		{
		if item_recibido_numero = 0
			{
			if o_planeta_2.item_gancho = false
				{
				o_planeta_2.item_gancho = true
				}
			else
				{
				item_recibido_numero = round(random_range(1,2))
				}
			}
		if item_recibido_numero = 1
			{
			if o_planeta_2.item_iman = false
				{
				o_planeta_2.item_iman = true
				}
			else
				{
				item_recibido_numero = round(random_range(2,2))
				}
			}
		if item_recibido_numero = 2
			{
			if o_planeta_2.item_lluvia = false
				{
				o_planeta_2.item_lluvia = true
				}
			else
				{
				item_recibido_numero = 3
				}
			}
		if item_recibido_numero = 3
			{
			if o_planeta_2.item_iman = false
				{
				o_planeta_2.item_iman = true
				}
			}	
		}
	}


if modo_turno_1 = true
	{
	modo_tutorial = false
	modo_pasar_turno = false
	modo_pasar_turno_2 = false
	modo_turno_2 = false
	modo_win = false
	}
	
if modo_pasar_turno = true
	{		
	modo_tutorial = false
	modo_turno_1 = false
	modo_turno_2 = false
	modo_pasar_turno_2 = false
	modo_win = false
	if turno_pasar_timer = false
		{
		turno_pasar_timer = true
		alarm_set(0,60)
		}
	if turno_pasar_timer = true
		{
		if alarm_get(0) < 0
			{
			turno_pasar_timer = false
			modo_pasar_turno_2 = true
			}
		}
	}
	
if modo_pasar_turno_2 = true
	{
	modo_tutorial = false
	modo_pasar_turno = false
	modo_turno_1 = false
	modo_turno_2 = false
	modo_win = false		
	if global.turno = 0
		{
		global.turno = 1	
		modo_turno_2 = true
		}
	else
		{
		global.turno = 0
		modo_turno_1 = true
		}
	lluvia_de_meteoro_condicion_1 = false
	lluvia_de_meteoro_condicion_2 = false	
	global.item_seleccionado = false
	
	
	o_black_hole_i_g.activar = true
	o_black_hole_f_g.activar = true
	}
	
if modo_turno_2 = true
	{
	modo_tutorial = false
	modo_turno_1 = false
	modo_pasar_turno = false
	modo_pasar_turno_2 = false
	modo_win = false
	}
	
if modo_win = true
	{
	global.item_seleccionado = false		
	modo_tutorial = false
	modo_turno_1 = false
	modo_pasar_turno = false
	modo_pasar_turno_2 = false
	modo_turno_2 = false
	}
	
	
	



if instance_exists(o_projectile) and lluvia_de_meteoro_condicion_1 = false
	{
	lluvia_de_meteoro_condicion_1 = true
	}

if lluvia_de_meteoro_condicion_1 = true and lluvia_de_meteoro_condicion_2 = false
	{
	lluvia_de_meteoro_condicion_2 = true
	}

if lluvia_de_meteoro_condicion_2 = true
	{
	if !instance_exists(o_projectile)
		{
		modo_pasar_turno = true
		modo_tutorial = false
		modo_turno_1 = false
		modo_turno_2 = false
		modo_pasar_turno_2 = false
		modo_win = false
		lluvia_de_meteoro_condicion_1 = false
		lluvia_de_meteoro_condicion_2 = false
		}
	}


