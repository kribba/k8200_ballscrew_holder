z_plate();

module z_plate() {
    translate([-3,-108/2,0]) {
        difference() {
            cube([3,108,98]);
            translate([0,108/2+29/2,98/2]) rotate([0,90,0]) cylinder(r=5/2,h=10,center=true,$fn=100);
            translate([0,108/2-29/2,98/2]) rotate([0,90,0]) cylinder(r=5/2,h=10,center=true,$fn=100);
            
        }
    }
}