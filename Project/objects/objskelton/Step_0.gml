//Health
if (place_meeting(x,y,objarrow)) hp--
show_debug_message(hp)
if (hp<=0) instance_destroy()
if phase = 1
{
	attack = irandom(7)
	phase = 2
}
if phase = 2
{
	if !spawning and !shield
	{
			switch(attack)
		{
			case 0:
			case 1:
			case 2:
				//Spawn Shield
				shield = true
				alarm[0] = 51
				break
			case 3:
			case 4:
			case 5:
			case 6: 
			case 7:
				spawning = true
				alarm[0] = 51
				//Spawn Skeltons
				break
		}	
	}
	//Carry Out Actions
	//Shield
	if shield = true
	{
		sprite_index = sprskeletonshield
		if (hp < 20) hp+= .08
	}
	if spawning = true
	{
		if spawncool >= 25
		{
			instance_create_layer(x,y+24,layer,objminiskeltonright)
			instance_create_layer(x,y+24,layer,objminiskeltonleft)
			spawncool = 0
		}
		spawncool++
	}
}
//Phase 3 And Move
if phase = 3
{
	//Decide Move Towards or Away From Player
	if (hp > 10) //Move Towards 
	{
		if (x > objplayer.x) hspeed = -5
		else hspeed = 5
		alarm[1] = 10
		phase = noone
	}
	else if (hp < 10)//Move Away
	{
		if (x > objplayer.x) hspeed = 5
		else hspeed = -5	
		alarm[1] = 10
		phase = noone
	}
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