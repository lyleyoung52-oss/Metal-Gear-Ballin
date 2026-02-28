if (mode != TRANS_MODE.OFF)
{
	draw_set_colour(c_black);
	draw_rectangle(0,0,w,percent*half_h,false);
	draw_rectangle(0,h,w,h-(percent*half_h),false);
}

