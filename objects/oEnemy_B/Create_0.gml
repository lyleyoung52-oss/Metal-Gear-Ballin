walksp = 1;
vsp = sign(walksp);
hp = 4;
flash = 0;
done = 0; 
hsp = 0;
firingdelay = 0;
previous_distance = 0;
distance_to_player = distance_to_object(oPlayer);

last_x = x;
last_y = y;

dx = x - last_x;
dy = y - last_y;

move_dir = 1;
move_spd = 2;

shoot = function(dc){
			firingdelay = 3;
			with (instance_create_layer(x, y,"Bullets",oBullet))
			{
				speed = 25; 
				direction =  dc + random_range(-30, 30);
				image_angle = direction;
			}
			move_dir = 1;
}