k8200_nema_motor();

module k8200_nema_motor() {

    translate([-42/2,-42/2,0]) {
        difference() {
            union() {
                cube([42,42,47.3]);
                translate([42/2,42/2,47]) {
                    cylinder(r=5/2,h=22.3+0.3,$fn=100);
                    cylinder(r=22/2,h=25-22.3+0.3,$fn=100);
                }
            }

            translate([0,0,0]) rotate([0,0,45]) cube([3,3,100],center=true);
            translate([42,0,0]) rotate([0,0,45]) cube([3,3,100],center=true);
            translate([42,42,0]) rotate([0,0,45]) cube([3,3,100],center=true);
            translate([0,42,0]) rotate([0,0,45]) cube([3,3,100],center=true);

            translate([4.1+3/4,4.1+3/4,47.3-12]) cylinder(r=3/2,h=13,$fn=100);
            translate([42-(4.1+3/4),4.1+3/4,47.3-12]) cylinder(r=3/2,h=13,$fn=100);
            translate([42-(4.1+3/4),42-(4.1+3/4),47.3-12]) cylinder(r=3/2,h=13,$fn=100);
            translate([(4.1+3/4),42-(4.1+3/4),47.3-12]) cylinder(r=3/2,h=13,$fn=100);
        }
    }


}