//Health/Death
if place_meeting(x,y,objarrow)
{
	hp-=1	
}
if hp<=50
{
	phase = 2	
}
else if hp > 50
{
	phase = 1	
}
if hp <= 0
{
	instance_destroy()
}
//Find Attack
if attackphase = 1
{
	attack = irandom(4)
	show_debug_message(attack)
	attackphase = 2
}
if phase = 1 and attackphase = 2
{
	switch (attack) {
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
		case 0:
		case 4:
			instance_create_layer(x,y+32,layer,objshockwaveleft)
			instance_create_layer(x,y+32,layer,objshockwaveright)
			alarm[0] = 1
			break;
	}
}	
if phase = 2 and attackphase = 2
{
	switch(attack)
	{
		case 1:
		case 2:
		case 3:
			//Dashing
			if (dashing = false)
			{
				if (x > objplayer.x)
				{
					hspeed = -10
					dashing = true
					alarm[0] = 100
				}
				else if (x <= objplayer.x)
				{
					hspeed = 10
					dashing = true
					alarm[0] = 100
				}
			}
			break;
		case 0:
		case 4:
			instance_create_layer(x,y+32,layer,objshockwaveleft)
			instance_create_layer(x,y+32,layer,objshockwaveright)
			alarm[0] = 1
			break;
	}
}
//Wait for Next Attack
if attackphase = 3 and phase3 = false
{
	alarm[1] = 10
	phase3 = true
}
//Swing Sword
if distance_to_object(objplayer) <= 100
{
	swinging = true
}
else swinging = false
if swingcool >= 10 and swinging
{
	swingcool = 0
	if swingdirection = "Right"
	{
		swingdirection = "Left"
		if phase = 1 or phase = 2
		{
			instance_create_layer(x+50,y,layer,objswordright)	
		}
	}
	else if swingdirection = "Left"
	{
		swingdirection = "Right"
		instance_create_layer(x-50,y,layer,objswordleft)
	}
}
//Increase SwingCool
swingcool++
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