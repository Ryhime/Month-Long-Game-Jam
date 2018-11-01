if (mouse_check_button_pressed(mb_left) and shootcool>=5) 
{
	instance_create_layer(x,y,layer,objarrow)
	shootcool = 0
}
shootcool++
