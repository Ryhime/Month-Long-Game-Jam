///@arg obj_wall
var move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
hsp = move * spd;
if(place_meeting(x + hsp, y, argument0))
{
	while(!place_meeting(x + sign(hsp), y, argument0))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;