shoot = function(dc){
			firingdelay = 3;
			with (instance_create_layer(x + 10 , y + 30,"Bullets",oBullet))
			{
				speed = 25; 
				direction =  dc + random_range(-35, 35);
				image_angle = direction;
				audio_play_sound(machine_gun, 2, false);
			}
			move_dir = 1;
}

sense = function(){
	var exclaim_x = x;
	var exclaim_y = y - sprite_height - 16;   // 16–40 pixels above head usually looks good
        
	draw_set_font(fMenu);      // ← use a bigger font if you have one
	draw_set_color(c_yellow);                 // or c_red, c_white...
	draw_set_halign(fa_center);
        
	draw_text(exclaim_x, exclaim_y, "!");	
}