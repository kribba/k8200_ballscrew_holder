use <frame_clamp.scad>;

top_holder();

module top_holder() {

    difference() {
        frame_clamp(0.5, (59.6-28.1)/2, 20);
        translate([0,(39+7)/2,7]) rotate([0,90,0]) cylinder(r=5.5/2,h=71,$fn=100,center=true);
        translate([0,-(39+7)/2,7]) rotate([0,90,0]) cylinder(r=5.5/2,h=71,$fn=100,center=true);
    }
    
}