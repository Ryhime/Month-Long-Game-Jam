if attackphase = 1
{
	attack = irandom(7)
	attackphase = 2
}
if attackphase = 2
{
	switch(attack)
	{
		case 0:
		case 1:
		case 2:
		case 3:
			instance_create_layer(x,y,layer,objenarrowbasic)
			alarm[1] = 50
			attackphase = noone
			break
		case 4:
		case 5:
			instance_create_layer(x,y,layer,objenarrowex)
			alarm[1] = 50
			attackphase = noone
			break
		case 6:
		case 7:
			instance_create_layer(x,y,layer,objarrowrain)
			alarm[1] = 50
			attackphase = noone
				
	}
}
if attackphase = 3
{
	//Move the Enemy
	if objplayer.x > x and place_free(x-100,y)
	{
		hspeed = -5	
		attackphase = noone
		alarm[0] = 20
	}
	else if objplayer.x < x and place_free(x+100,y)
	{
		hspeed = 5
		attackphase = noone
		alarm[0] = 20
	}
	else
	{
		//Move Towards Player
		if objplayer.x < x
		{
			hspeed = -5
			attackphase = noone
			alarm[0] = 20
		}
		else
		{
			hspeed = 5
			attackphase = noone
			alarm[0] = 20
		}
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