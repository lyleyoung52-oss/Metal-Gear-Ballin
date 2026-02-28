draw_self()

// Check distance to player
if (instance_exists(oPlayer) and oPlayer.sprite_index != sCoverCrate)
{
    var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
    
    if (dist < 200)
    {
        // Draw big exclamation mark floating above the enemy's head
        var exclaim_x = x + 4;
        var exclaim_y = y - 10;   // 16–40 pixels above head usually looks good
        
        draw_set_font(fMenu);      // ← use a bigger font if you have one
        draw_set_color(c_yellow);                 // or c_red, c_white...
        draw_set_halign(fa_center);
        
        draw_text(exclaim_x, exclaim_y, "!");
        
        // Optional: make it pop more
        // draw_text_transformed(exclaim_x, exclaim_y, "!", 1.6, 1.6, 0);
    }
}

// Reset draw settings so other objects aren't affected
draw_set_halign(fa_left);
draw_set_color(c_white);

 // 16–40 pixels above head usually looks good
        
draw_set_font(fMenu);      // ← use a bigger font if you have one
draw_set_color(c_black);                 // or c_red, c_white...
draw_set_halign(fa_center);
        
draw_text(healthbar_x - 60, healthbar_y, "Boss:");


if flash > 0
{
	flash = flash - 1;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}

draw_healthbar(healthbar_x, healthbar_y, healthbar_x + 600, healthbar_y - 10, 20 * (hp/hp_max), c_black, c_red, c_green, 0, true, false); 