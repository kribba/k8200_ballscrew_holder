frame_profile(h = 5);

module frame_profile(h)
{
	$fn = 100;

	// p = profile
	p_width = 27.5 + 0.2;
	p_corner_r = 5.7;
	p_first_step_width = 16.3 - 0.2;
	p_first_step_height = 1.15;
	p_second_step_width = 12.35 - 0.2;
	p_second_step_height = 1.2;
	p_third_step_width = 5.05 - 0.2;
	p_third_step_height = 1.5; // 6.15;

	difference()
	{
		hull()
		{
			translate([(p_width / 2) - p_corner_r + 0.2, (p_width / 2) - p_corner_r + 0.2, 0])
				cylinder(r = p_corner_r, h = h);
	
			translate([(p_width / 2) - p_corner_r + 0.2, -((p_width / 2) - p_corner_r + 0.2), 0])
				cylinder(r = p_corner_r, h = h);
	
			translate([-((p_width / 2) - p_corner_r + 0.2), (p_width / 2) - p_corner_r + 0.2, 0])
				cylinder(r = p_corner_r, h = h);
	
			translate(-[(p_width / 2) - p_corner_r + 0.2, (p_width / 2) - p_corner_r + 0.2, 0])
				cylinder(r = p_corner_r, h = h);
		}

		for( i = [0 : 1 : 3] )
		{
			rotate(i * 90, v = [0, 0, 1])
				translate([(p_width / 2) - p_first_step_height, -(p_first_step_width / 2), -1])
					cube([p_first_step_width, p_first_step_width, (h + 2)]);

			rotate(i * 90, v = [0, 0, 1])
				translate([(p_width / 2) - p_second_step_height - p_first_step_height, -(p_second_step_width / 2), -1])
					cube([p_second_step_width, p_second_step_width, (h + 2)]);

			rotate(i * 90, v = [0, 0, 1])
				translate([(p_width / 2) - p_third_step_height - p_second_step_height - p_first_step_height, -(p_third_step_width / 2), -1])
					cube([p_third_step_width, p_third_step_width, (h + 2)]);
		}
	}
}