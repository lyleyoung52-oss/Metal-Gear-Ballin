///@desc define player movement when moving freely

function scr_playerNormal(){
	var move_sideways = key_right - key_left;
	var move_horizontal = key_down - key_up;

	hsp = move_sideways * walksp;
	vsp = move_horizontal * walksp;
	
	
	// Check if the target object exists
	if (place_meeting(x+hsp,y,oWall))
	{
			while(!place_meeting(x+sign(hsp), y, oWall))
			{
				x = x + sign(hsp);
			
			}
			hsp = 0;
	}

	if (place_meeting(x,y+vsp,oWall))
	{
			while(!place_meeting(x+sign(vsp), y, oWall))
			{
				y = y + sign(vsp);
			}
			vsp = 0;
			
	}

	//restrict player to screen
	if x + hsp < 0 or x + hsp > room_width{
		hsp = 0;
		}

	if y + vsp < 0 or y + vsp > room_height{
		vsp = 0
		}

	x = x + hsp;
	y = y + vsp;
}