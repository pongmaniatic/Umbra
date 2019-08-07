

if quiting = false
	{
	alarm_set(0,120)
	quiting = true
	}

if quiting = true
	{
	if alarm_get(0) < 0
		{
		game_end()
		}
	}


