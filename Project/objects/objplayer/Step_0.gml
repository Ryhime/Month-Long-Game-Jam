//Find if on Ground
if place_meeting(x,y+1,objsolid)
{
	grounded = true	
}
else grounded = false
var hsp = 0
if keyboard_check(ord("A"))
{
	hsp = -5	
}
else if keyboard_check(ord("D"))
{
	hsp = 5
}
if keyboard_check(vk_space) and grounded
{
	jumping = true
}
if jumping
{
	jumpcool++
	vspeed = -15
}
if jumpcool >= 7
{
	jumping = false
	jumpcool = 0
}
hspeed = hsp
//Collision with Enemy
if place_meeting(x,y,objbasicenemy) or place_meeting(x,y,objarmorboss)
{
	room_restart()	
}
//Shooting
shootcool++
if shootcool >= 6 and mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x,y,layer,objarrow)
	shootcool = 0
}
//Gravity
if grounded
{
	gravity = 0	
}
else gravity = 1
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