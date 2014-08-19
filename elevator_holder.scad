elevator_holder();

module elevator_holder() {

    r_main_screw_hole = 9.5;
    r_z_fastener_hole = 5.5/2;
    r_nut = 9.5/2;

    difference() {
        //Main structure
        union() {
            cylinder(r=48.1/2,h=17.5+5,$fn=100);
            translate([0,-48.1/2,0]) cube([20,48.1,17.5+5]);
        }

        //Main hole for ball screw
        translate([0,0,-1])
            cylinder(r=r_main_screw_hole,h=46,$fn=100);

        //Make the ball screw hole extend to the end of the main structure
        //Makes the thing mountable...
        translate([0,-r_main_screw_hole,-1]) {
            cube([40,2*r_main_screw_hole,40]);
        }

        for (phi=[-45,-90,-135,45,90,135]) {
            translate([(32.5+5.5)/2*cos(phi),(32.5+5.5)/2*sin(phi),12]) {
                    cylinder(r=r_z_fastener_hole,h=20,$fn=100);
                    translate([0,0,0])                 rotate([0,0,30])    cylinder(r=9.5/2,h=6,$fn=6);
                    translate([0,10*phi/abs(phi),3])   rotate([0,0,0])     cube([8,20,6],center=true);
            }

        }

        translate([0,0+29/2,5.5/2+3]) rotate([0,90,0]) cylinder(r=5.5/2,h=50,center=true,$fn=100);
        translate([0,0-29/2,5.5/2+3]) rotate([0,90,0]) cylinder(r=5.5/2,h=50,center=true,$fn=100);

        translate([-12,0+29/2,5.5/2+3]) rotate([0,90,0]) cylinder(r=10/2,h=20,center=true,$fn=100);
        translate([-12,0-29/2,5.5/2+3]) rotate([0,90,0]) cylinder(r=10/2,h=20,center=true,$fn=100);

        

        translate([20,-49/2,-1])
            cube([49,49,49]);

        translate([-20-49,-49/2,-1])
            cube(49);




        //-----------------------



    }
}

module screw_elevator(elevator_height=100) {
    translate([0,0,elevator_height]) {
        difference() {
            union() {
                difference() {
                    cylinder(r=48.1/2,h=10.3,$fn=100);

                    translate([20,-49/2,-1])
                        cube([49,49,49]);

                    translate([-20-49,-49/2,-1])
                        cube(49);
                }
                cylinder(r=28/2,h=44.1,$fn=100);

            }

            translate([0,0,-1])
                cylinder(r=22/2,h=46,$fn=100);

                for (ys=[-1,1]) {
                    translate([0,ys*(32.7/2+5.5/2),-1])
                        cylinder(r=5.5/2,h=12,$fn=100);
                }

                for (ys=[-1,1]) {
                    for (xs=[-1,1]) {
                        translate([xs*(21.2/2+5.5/2),ys*(21.2/2+5.5/2),-1])
                        cylinder(r=5.5/2,h=12,$fn=100);
                    }
                }

            }
        }
    }