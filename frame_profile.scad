frame_profile(h=100);

module frame_profile(h=1) {

    p1 = [10.5/2, 10.5/2];      //[5.25, 5.25]
    p2 = p1 + [5, 0];           //[10.25, 5.25]
    p3 = p2 + [0, 5 -1 -1.75];  //[10.25, 7.5]
    p4 = p3 + [1, 0];           //[11.25, 7.5]
    p5 = p4 + [0, 2];           //[11.25, 9.5]
    p6 = p5 + [1, 0];           //[12.25, 9.5]
    p7 = p6 + [1, 0];           //[13.25, 9.5]
    p8 = p7 + [0, -1];          //[13.25, 8.5]
    p9 = p8 + [-1, 0];          //[12.25, 8.5]
    p10 = p9 + [0,-2];          //[12.25, 6.5]
    p11 = p10 + [-1, 0];        //[11.25, 6.5]
    p12 = p11 + [0, -4];        //[11.25, 2.5]
    p13 = p12 + [-1.5, 0];      //[9.75, 2.5]
    p14 = p13 + [0, 1.75];      //[9.75, 4.25]
    p15 = p14 + [-6, 0];        //[3.75, 4.25]
    p16 = p15 + [0,1];          //[3.75, 5.25]

    linear_extrude(height=h) {
        union() {

            difference() {
                square( 10.5, center=true );
                circle( r=5/2, $fn=100 );
                rotate([0,0,45])
                    square( [2,8], center=true );
                rotate([0,0,-45])
                    square( [2,8], center=true );
            }

            polygon(points=[p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16], paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]]);
            rotate([180,0,0])
                polygon(points=[p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16], paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]]);


            rotate([0,0,90]) {
                polygon(points=[p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16], paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]]);
                rotate([180,0,0])
                    polygon(points=[p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16], paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]]);
            }



            rotate([0,0,180]) {
                polygon(points=[p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16], paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]]);
                rotate([180,0,0])
                    polygon(points=[p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16], paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]]);
            }

            rotate([0,0,270]) {
                polygon(points=[p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16], paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]]);
                rotate([180,0,0])
                    polygon(points=[p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16], paths=[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]]);
            }

            translate([9.5,9.5])
                difference() {
                    circle(r=3.75,$fn=100);
                    circle(r=2.75,$fn=100);
                    translate([-10,-5])
                        square(10);
                    translate([0,-10])
                        square(10);
                }

            rotate([0,0,90])
                translate([9.5,9.5])
                    difference() {
                        circle(r=3.75,$fn=100);
                        circle(r=2.75,$fn=100);
                        translate([-10,-5])
                            square(10);
                        translate([0,-10])
                            square(10);
                    }

            rotate([0,0,180])
                translate([9.5,9.5])
                    difference() {
                        circle(r=3.75,$fn=100);
                        circle(r=2.75,$fn=100);
                        translate([-10,-5])
                            square(10);
                        translate([0,-10])
                            square(10);
                    }

            rotate([0,0,270])
                translate([9.5,9.5])
                    difference() {
                        circle(r=3.75,$fn=100);
                        circle(r=2.75,$fn=100);
                        translate([-10,-5])
                            square(10);
                        translate([0,-10])
                            square(10);
                    }
        }
    }
}