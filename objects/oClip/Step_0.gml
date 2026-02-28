//make clip graphic shake when gun is fired
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - (1/shake_length)*(shake_magnitude));