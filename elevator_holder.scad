elevator_holder();

/*
color("blue",0.3)
    translate([0,0,22.5])
        screw_elevator(0);
*/
module elevator_holder() {


    difference() {
        union() {
            cylinder(r=48.1/2,h=17.5+5,$fn=100);
            translate([0,-48.1/2,0]) cube([20,48.1,17.5+5]);
        }

        translate([0,0,-1])
            cylinder(r=8.5,h=46,$fn=100);

        translate([0,-8.5,-1]) {
            cube([40,2*8.5,40]);
        }

        

        translate([0,0,14]) {
            for (ys=[-1,1]) {
                translate([0,ys*(32.7/2+5.5/2),-1])
                    cylinder(r=5.5/2,h=50,$fn=100);
            }

            for (ys=[-1,1]) {
                for (xs=[-1,1]) {
                    translate([xs*(21.2/2+5.5/2),ys*(21.2/2+5.5/2),-1])
                    cylinder(r=5.5/2,h=50,$fn=100);
                }
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


        translate([0,0,4.5+3]) {

            translate([0,-(32.7/2+5.5/2),3+1]) {
                rotate([0,0,360/12])
                    cylinder(r=8/sqrt(3),h=6,$fn=6);
                translate([-4,-10,0])
                    cube([8,12,6]);
            }

            translate([-(21.2/2+5.5/2),-(32.7/2+5.5/2)+5.75,3+1]) {
                rotate([0,0,360/12])
                    cylinder(r=8/sqrt(3),h=6,$fn=6);
                translate([-4,-10,0])
                    cube([8,12,6]);
            }

            translate([(21.2/2+5.5/2),-(32.7/2+5.5/2)+5.75,3+1]) {
                rotate([0,0,360/12])
                    cylinder(r=8/sqrt(3),h=6,$fn=6);
                translate([-4,-18,0])
                    cube([8,20,6]);
            }

            //-----------------------

            translate([0,(32.7/2+5.5/2),3+1]) {
                rotate([0,0,360/12])
                    cylinder(r=8/sqrt(3),h=6,$fn=6);
                translate([-4,0,0])
                    cube([8,10,6]);
            }

            translate([-(21.2/2+5.5/2),(32.7/2+5.5/2)-5.75,3+1]) {
                rotate([0,0,360/12])
                    cylinder(r=8/sqrt(3),h=6,$fn=6);
                translate([-4,0,0])
                    cube([8,10,6]);
            }

            translate([(21.2/2+5.5/2),(32.7/2+5.5/2)-5.75,3+1]) {
                rotate([0,0,360/12])
                    cylinder(r=8/sqrt(3),h=6,$fn=6);
                translate([-4,0,0])
                    cube([8,25,6]);
        }

        //-----------------------



        }
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