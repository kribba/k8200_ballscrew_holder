use <frame_profile.scad>;

k8200_frame();


module k8200_frame() {
    translate([0,-416/2-13.25,62]) {
        //base_west
        translate([13.25,0,0]) {
            rotate([-90,0,0]) {
                frame_profile(440.4);
            }
        }

        //base_east
        translate([416+13.25*3,0,0]) {
            rotate([-90,0,0]) {
                frame_profile(440.4);
            }
        }

        //base_south
        translate([13.25*2,13.25,0]) {
            rotate([-90,0,-90]) {
                frame_profile(416);
            }
        }

        //base_north
        translate([13.25*2,440.4-13.25,0]) {
            rotate([-90,0,-90]) {
                frame_profile(416);
            }
        }

        //pillar_west
        translate([13.25,440.4/2,13.25]) {
            rotate([0,0,0]) {
                frame_profile(500);
            }
        }

    }

    
}

