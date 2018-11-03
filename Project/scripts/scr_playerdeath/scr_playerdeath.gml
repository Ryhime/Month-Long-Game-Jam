if place_meeting(x,y,objswordright) or place_meeting(x,y,objarmorboss) or place_meeting(x,y,objshockwaveleft) or place_meeting(x,y,objshockwaveright)
{
	//Lose Health
	room_restart()
}
if place_meeting(x,y,objswordleft) or place_meeting(x,y,objenarrowbasic) or place_meeting(x,y,objarrowrain) or place_meeting(x,y,objarrowraindown) or place_meeting(x,y,objenarrowex)
{
	room_restart()	
}
if place_meeting(x,y,objex)
{
	room_restart()
}