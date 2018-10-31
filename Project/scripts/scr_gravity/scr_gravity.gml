///@arg obj_wall
vsp += grv;
if(place_meeting(x, y + vsp, argument0))
{
	while(!place_meeting(x, y + sign(vsp), argument0))
	{
	y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;