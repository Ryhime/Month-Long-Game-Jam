if place_meeting(x,y,objarmorboss) or place_meeting(x,y,objbasicenemy)
{
	alarm[0] = 1	
}
//Destroy From Walls
if place_meeting(x,y,objsolid)
{
	instance_destroy()	
}