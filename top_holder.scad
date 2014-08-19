use <frame_clamp.scad>;

top_holder();

module top_holder() {
    translate([0,0,23]) {
        rotate([0,180,0]) {
            difference() {
                union() {
                    difference() {
                        frame_clamp(0.5, (59.6+6-28.1)/2, 30);
                        translate([0,(39+7)/2,7]) rotate([0,90,0]) cylinder(r=5.5/2,h=71,$fn=100,center=true);
                        translate([0,-(39+7)/2,7]) rotate([0,90,0]) cylinder(r=5.5/2,h=71,$fn=100,center=true);

                        // nut holders, for M5 nuts
                        translate([-9,(39+7)/2,7]) rotate([30,0,0]) rotate([0,90,0]) cylinder(r=9.6/2,h=11,$fn=6);
                        translate([-9,-(39+7)/2,7]) rotate([30,0,0]) rotate([0,90,0]) cylinder(r=9.6/2,h=11,$fn=6);
                    }

                    translate([14, -((59.6 + 6)/2), 17]) cube([10, 59.6 + 6, 13]);
                }

                translate([0, 0, 73]) cube(100, center = true);
            }
        }
    }
}