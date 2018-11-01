//Find Attack
if attackphase = 1
{
	attack = 1
	attackphase = 2
}
if phase = 1 and attackphase = 2
{
	switch (attack) {
		case 0:
		case 1:
		case 2:
		case 3:
			//Dashing
			if (dashing = false)
			{
				if (x > objplayer.x)
				{
					hspeed = -5
					dashing = true
					alarm[0] = 100
				}
				else if (x <= objplayer.x)
				{
					hspeed = 5
					dashing = true
					alarm[0] = 100
				}
			}
			break;
		case 4:
			//Shockwave(Less Common)
			break;
	}
}	
if phase = 2 and attackphase = 2
{
	switch(attack)
	{
		case 0:
		case 1:
		case 2:
		case 3:
			//Dash Attack(More Common)
			break;
		case 4:
			//Jump Attack(Less Common)
			break;
	}
}
//Wait for Next Attack
if attackphase = 3 and phase3 = false
{
	alarm[1] = 10
	phase3 = true
	show_debug_message("h")
}
//Collision
if hspeed != 0
if !place_free(x + hspeed, y)
{
 if hspeed > 0 move_contact_solid(0,hspeed)
 if hspeed < 0 move_contact_solid(180,-hspeed)
 hspeed = 0
}

///////
if vspeed != 0
if !place_free(x + hspeed, y + vspeed)
{
 if vspeed > 0 move_contact_solid(270,vspeed)
 if vspeed < 0 move_contact_solid(90,-vspeed)
 vspeed = 0
}