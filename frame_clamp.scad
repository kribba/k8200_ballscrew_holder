use <frame_profile.scad>;

frame_clamp(1,5,10);

module frame_clamp(dx=1,dy=1,z=5) {

    difference() {
        translate([-8,-14.05-dy,0]) cube([22.05+dx, 28.1+2*dy, z]);
        translate([0,0,-1]) frame_profile(z+2);
        translate([0,0,z/2]) rotate([90,0,0]) cylinder(r=5.5/2,h=28.1+2*dy+2,center=true,$fn=100);
    }

}