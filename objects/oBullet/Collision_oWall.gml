
//inflict damage on crate
with (other)
{
	wall_hp = wall_hp - 0.2;
	if image_index != 1 and wall_hp <= 1{
		image_index = 1;
	}
}