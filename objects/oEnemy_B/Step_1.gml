//Trigger death animation
if hp < 0
{
	instance_create_layer(x, y, layer, oDeadEnemy_1);
	instance_destroy();	
}
