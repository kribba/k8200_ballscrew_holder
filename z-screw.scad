use <k8200_nema_motor.scad>;

screw_with_mounts(200);

module spring_drive_converter() {

    difference() {
        cylinder(r=25/2,h=30,$fn=100);
        translate([0,0,30-21]) {
            cylinder(r=10/2,h=30,$fn=100);
        }
        translate([0,0,-1]) {
            cylinder(r=6.3/2,h=11,$fn=100);
        }
    }
}

module screw_with_mounts(elevator_height=100) {

    translate([0,0,47.3+(25-22.3)+22.3/2]) {
        translate([0,0,18]) {
            top_screw_holder();

            screw();

            screw_elevator(elevator_height);

            bottom_screw_holder();
        }

        spring_drive_converter();
    }

    k8200_nema_motor();
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

module bottom_screw_holder() {

    translate([13+23.5/2,-60/2,28])
        rotate([0,0,90])
            difference() {
                union() {
                    cube([60,32.8,24.8]);

                    translate([12.5,7,-6.2])
                        cube([35.3,35.8,31]);

                }

                translate([4.4+5.4/2,4.4+5.4/2,-1])
                    cylinder(r=5.4/2,h=30,$fn=100);

                translate([4.4+5.4/2,23+5.4/2,-1])
                    cylinder(r=5.4/2,h=30,$fn=100);

                translate([50.4+5.4/2,4.4+5.4/2,-1])
                    cylinder(r=5.4/2,h=30,$fn=100);

                translate([50.4+5.4/2,23+5.4/2,-1])
                    cylinder(r=5.4/2,h=30,$fn=100);

                translate([3.5+3.4,-1,2.7+3.4])
                    rotate([-90,0,0])
                        cylinder(r=3.4,h=40,$fn=100);

                translate([3.5+3.4,-1,15.5+3.4])
                    rotate([-90,0,0])
                        cylinder(r=3.4,h=40,$fn=100);

                translate([49.7+3.4,-1,2.7+3.4])
                    rotate([-90,0,0])
                        cylinder(r=3.4,h=40,$fn=100);

                translate([49.7+3.4,-1,15.5+3.4])
                    rotate([-90,0,0])
                        cylinder(r=3.4,h=40,$fn=100);

                translate([60/2,13+23.5/2,-7])
                    cylinder(r=23.5/2,h=35,$fn=100);
            }

    
}

module screw() {
    union() {
        cylinder(r=5,h=400,$fn=100);
        translate([0,0,19])
            cylinder(r=8,h=400-19*2,$fn=100);
    }
}

module top_screw_holder() {

    scr=5.2/2;
    lcr=25.7/2;
    
    translate([12+lcr,-(16.7+lcr),383]) {
        rotate([0,0,90]) {
            difference() {

                linear_extrude(height=19.8) {

                    difference() {

                        union() {

                            square([59.6,32.7]);

                            translate([12.8,0])
                                square([34.7,43]);

                        }



                        translate([4.4+scr, 3.7+scr])
                            circle(r=scr,$fn=100);

                        translate([3.3+scr, 23.4+scr])
                            circle(r=scr,$fn=100);

                        translate([59.6-(4.4+scr), 3.7+scr])
                            circle(r=scr,$fn=100);

                        translate([59.6-(3.3+scr), 23.4+scr])
                            circle(r=scr,$fn=100);

                        translate([16.7+lcr,12+lcr])
                            circle(r=lcr,$fn=100);


                    }
                }

                translate([3.4+3.3,34,6.6+3.3])
                    rotate([90,0,0])
                        cylinder(h=35,r=3.3,$fn=100);

                translate([59.6-(3.4+3.3),34,6.6+3.3])
                    rotate([90,0,0])
                        cylinder(h=35,r=3.3,$fn=100);

            }
        }
    }
}