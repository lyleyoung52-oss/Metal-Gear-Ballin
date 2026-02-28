//Trigger death animation
if hp < 0
{
	instance_create_layer(x, y, layer, Death_Animation);
	instance_destroy();	
}
