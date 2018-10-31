switch(state)
{
	case "Idle":
	#region Idle
		switch(stateJ)
		{
			case "Jumping":
			#region jumping
			sprite_index = ds_map_find_value(animation[0], stateJ);
			image_index = 0
			#endregion
			break;
			case "NotJumping":
			#region not jumping
			sprite_index = ds_map_find_value(animation[0], state);
			image_index = 1;
			#endregion
			break;
		}
	#endregion
	break;
	case "Walking":
	#region walking
		switch(stateJ)
		{
			case "Jumping":
			#region jumping
			sprite_index = ds_map_find_value(animation[0], stateJ)
			image_index = 0;
			#endregion
			break;
			case "NotJumping":
			#region not jumping
			sprite_index = ds_map_find_value(animation[0], state)
			image_index = 2
			#endregion
			break;
		}
	#endregion
	break;
}