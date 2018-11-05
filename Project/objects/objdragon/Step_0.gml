move_towards_point(objplayer.x,objplayer.y,5)
//Health
if (place_meeting(x,y,objarrow)) hp--
if (hp <= 0) instance_destroy()