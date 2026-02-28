//Trigger death animation
if hp < 0
{
	instance_create_layer(x, y, layer, oDeadEnemy);
	instance_destroy();	
}

if distance_to_player < 150
{
	var exclaim_x = x;
    var exclaim_y = y - sprite_height - 16;   // 16–40 pixels above head usually looks good
        
    draw_set_font(fMenu);      // ← use a bigger font if you have one
    draw_set_color(c_yellow);                 // or c_red, c_white...
    draw_set_halign(fa_center);
        
    draw_text(exclaim_x, exclaim_y, "!");
	
}