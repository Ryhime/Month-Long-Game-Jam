//Health
if (place_meeting(x,y,objarrow)) hp--
if (hp<=0) instance_destroy()
//Pick Attack
if phase = 1
{
	phase = 2
	attack = irandom(7)
}
//Carry Out Attack
if phase = 2
{
	switch(attack)
	{
		case 0:
		case 1:
			instance_create_layer(x,y,layer,objdragon)
			alarm[0] = 100
			phase = noone
			break
		case 2:
		case 3:
		case 4:
			instance_create_layer(x,y,layer,objfireball)
			alarm[0] = 100
			phase = noone
			break
		case 5:
		case 6:
		case 7:
			instance_create_layer(x,y,layer,objlightningball)
			alarm[0] = 100
			phase = noone
			break
	}
}
//Moving
//Pick Random Movement
if !movedistance
{
	movedistance = irandom(50)
	if (movedistance = 0) movedistance = 1
	movedirection = irandom(1)
	if (movedirection) hspeed = 5
	else if (!movedirection) hspeed = -5
}
movedistance--
//Reset if Against Wall
if (place_meeting(x+1,y,objsolid) or place_meeting(x-1,y,objsolid)) movedistance = 0


//Collision
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