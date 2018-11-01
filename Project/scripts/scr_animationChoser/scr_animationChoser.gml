if(!place_meeting(x,y+1,objsolid))
{
	stateJ = "Jumping";
}
else
{
	stateJ = "NotJumping";
}
if(hsp != 0)
{
	state = "Walking";
}
else
{
	state = "Idle";
}