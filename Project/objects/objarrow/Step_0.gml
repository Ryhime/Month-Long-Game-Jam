if place_meeting(x,y,objarmorboss) or place_meeting(x,y,objbasicenemy) or place_meeting(x,y,objminiarcher)
{
	alarm[0] = 1	
}
if place_meeting(x,y,objskelton) or place_meeting(x,y,objminiskeltonleft) or place_meeting(x,y,objminiskeltonright)
{
	alarm[0] = 1	
}
if place_meeting(x,y,objdragon) or place_meeting(x,y,objwizard)
{
	alarm[0] = 1	
}
//Destroy From Walls
if place_meeting(x,y,objsolid)
{
	instance_destroy()	
}