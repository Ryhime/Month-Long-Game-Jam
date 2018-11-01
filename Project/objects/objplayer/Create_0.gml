//sprtie ds map
animation[0] = ds_map_create();
scr_animationC(sprplayer, sprplayer, sprplayer);
//animation states
state = "Idle";
stateJ = "NotJumping";
//movement variables
//horizontal speed
hsp = 0;
//vertical speed
vsp = 0;
//gravity
grv = 1;
//speed
spd = 5;
//jump height
jumpH = 20;
//ShootCool
shootcool = 5