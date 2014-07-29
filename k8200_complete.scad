use <k8200_frame.scad>;
use <z-screw.scad>;
use <z_plate.scad>;
use <elevator_holder.scad>;

k8200_frame();
//25.31 screw flush plate
//24.87 screw flush frame
translate([-25.31,0,20]) screw_with_mounts(170);

translate([-5.3+3,0,203.5]) z_plate();

translate([-25.31,0,246.7]) elevator_holder();